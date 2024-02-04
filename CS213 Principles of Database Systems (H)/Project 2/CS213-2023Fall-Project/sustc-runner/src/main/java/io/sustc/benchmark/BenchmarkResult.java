package io.sustc.benchmark;

import lombok.Data;

import java.util.concurrent.atomic.AtomicLong;

/**
 * Evaluation result of a benchmark task.
 * If any of the fields is null, it means the tasks won't be evaluated by this term.
 */
@Data
public class BenchmarkResult {

    private Integer id;

    private Long passCnt;

    private Long elapsedTime;

    public BenchmarkResult(Long elapsedTime) {
        this.elapsedTime = elapsedTime;
    }

    public BenchmarkResult(Long passCnt, Long elapsedTime) {
        this.passCnt = passCnt;
        this.elapsedTime = elapsedTime;
    }

    public BenchmarkResult(AtomicLong passCnt, Long elapsedTime) {
        this(passCnt.get(), elapsedTime);
    }
}
