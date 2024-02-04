package io.sustc.benchmark;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.sustc.service.DatabaseService;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import lombok.val;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.context.annotation.Profile;
import org.springframework.shell.ShellApplicationRunner;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.stream.Collectors;

@Profile("benchmark")
@Component
@Slf4j
public class BenchmarkRunner implements ShellApplicationRunner {

    @Autowired
    private BenchmarkConfig benchmarkConfig;

    @Autowired
    private DatabaseService databaseService;

    @Autowired
    private BenchmarkService benchmarkService;

    @Autowired
    private ObjectMapper objectMapper;

    @Override
    @SneakyThrows
    public void run(ApplicationArguments args) {
        log.info("Starting benchmark for group {}", databaseService.getGroupMembers());
        log.info("{}", benchmarkConfig);

        @SuppressWarnings("AlibabaThreadPoolCreation")
        val executor = Executors.newCachedThreadPool();
        val results = new LinkedList<BenchmarkResult>();

        val sid = databaseService.getGroupMembers().stream().map(String::valueOf).collect(Collectors.joining("_"));
        val reportFile = Paths.get(ObjectUtils.defaultIfNull(benchmarkConfig.getReportPath(), ""))
                .resolve(String.format("benchmark-%s-%d.json", sid, System.currentTimeMillis()))
                .toAbsolutePath()
                .toFile();

        Arrays.stream(BenchmarkService.class.getMethods())
                .sequential()
                .filter(method -> method.isAnnotationPresent(BenchmarkStep.class))
                .sorted(Comparator.comparingInt(m -> m.getAnnotation(BenchmarkStep.class).order()))
                .peek(method -> log.info("Step {}: {}",
                        method.getAnnotation(BenchmarkStep.class).order(),
                        StringUtils.defaultIfEmpty(
                                method.getAnnotation(BenchmarkStep.class).description(),
                                method.getName()
                        )
                ))
                .map(method -> {
                    val future = executor.submit(() -> (BenchmarkResult) method.invoke(benchmarkService));
                    try {
                        val res = future.get(method.getAnnotation(BenchmarkStep.class).timeout(), TimeUnit.MINUTES);
                        if (Objects.nonNull(res)) {
                            res.setId(method.getAnnotation(BenchmarkStep.class).order());
                        }
                        return res;
                    } catch (TimeoutException e) {
                        log.warn("Task timeout, cancelling it", e);
                        future.cancel(true);
                        if (method.getReturnType().equals(Void.TYPE)) {
                            return null;
                        }
                        val res = new BenchmarkResult(-1L);
                        res.setId(method.getAnnotation(BenchmarkStep.class).order());
                        return res;
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                })
                .filter(Objects::nonNull)
                .peek(result -> log.info("{}", result))
                .forEach(res -> {
                    results.add(res);
                    try {
                        objectMapper.writeValue(reportFile, results);
                    } catch (IOException e) {
                        log.error("Failed to update benchmark result", e);
                    }
                });

        executor.shutdownNow();
        objectMapper.writeValue(reportFile, results);
    }
}
