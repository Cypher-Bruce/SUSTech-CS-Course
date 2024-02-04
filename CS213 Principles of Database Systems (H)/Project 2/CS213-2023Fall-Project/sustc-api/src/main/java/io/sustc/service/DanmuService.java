package io.sustc.service;

import io.sustc.dto.AuthInfo;

import java.util.List;

public interface DanmuService {

    /**
     * Sends a danmu to a video.
     * It is mandatory that the user shall watch the video first before he/she can send danmu to it.
     *
     * @param auth    the current user's authentication information
     * @param bv      the video's bv
     * @param content the content of danmu
     * @param time    seconds since the video starts
     * @return the generated danmu id
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>{@code content} is invalid (null or empty)</li>
     *   <li>the video is not published or the user has not watched this video</li>
     * </ul>
     * If any of the corner case happened, {@code -1} shall be returned.
     */
    long sendDanmu(AuthInfo auth, String bv, String content, float time);

    /**
     * Display the danmus in a time range.
     * Similar to bilibili's mechanism, user can choose to only display part of the danmus to have a better watching
     * experience.
     *
     * @param bv        the video's bv
     * @param timeStart the start time of the range
     * @param timeEnd   the end time of the range
     * @param filter    whether to remove the duplicated content,
     *                  if {@code true}, only the earliest posted danmu with the same content shall be returned
     * @return a list of danmus id, sorted by {@code time}
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>
     *     {@code timeStart} and/or {@code timeEnd} is invalid ({@code timeStart} <= {@code timeEnd}
     *     or any of them < 0 or > video duration)
     *   </li>
     * <li>the video is not published</li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    List<Long> displayDanmu(String bv, float timeStart, float timeEnd, boolean filter);

    /**
     * Likes a danmu.
     * If the user already liked the danmu, this operation will cancel the like status.
     * It is mandatory that the user shall watch the video first before he/she can like a danmu of it.
     *
     * @param auth the current user's authentication information
     * @param id   the danmu's id
     * @return the like state of the user to this danmu after this operation
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a danmu corresponding to the {@code id}</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean likeDanmu(AuthInfo auth, long id);
}
