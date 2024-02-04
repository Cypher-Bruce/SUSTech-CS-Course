package io.sustc.benchmark;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.METHOD})
public @interface BenchmarkStep {

    /**
     * Task ID.
     */
    int order();

    /**
     * Timeout in minutes.
     */
    int timeout() default 5;

    /**
     * Description of the task.
     */
    String description() default "";
}
