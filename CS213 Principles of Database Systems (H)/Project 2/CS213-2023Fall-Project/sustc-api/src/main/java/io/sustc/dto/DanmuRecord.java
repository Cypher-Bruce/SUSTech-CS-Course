package io.sustc.dto;

import lombok.Data;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * The danmu record used for data import
 * @implNote You may implement your own {@link java.lang.Object#toString()} since the default one in {@link lombok.Data} prints all array values.
 */
@Data
public class DanmuRecord implements Serializable {

    /**
     * The danmu's video {@code bv}.
     */
    private String bv;

    /**
     * The danmu's sender {@code mid}.
     */
    private long mid;

    /**
     * The danmu's display time (in seconds) since the video starts.
     */
    private float time;

    /**
     * The danmu's content.
     */
    private String content;

    /**
     * The danmu's post time.
     */
    private Timestamp postTime;

    /**
     * The users' {@code mid} who liked this danmu.
     */
    private long[] likedBy;
}
