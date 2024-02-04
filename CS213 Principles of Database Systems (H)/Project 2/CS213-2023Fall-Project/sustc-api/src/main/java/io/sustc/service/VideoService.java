package io.sustc.service;

import io.sustc.dto.AuthInfo;
import io.sustc.dto.PostVideoReq;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

public interface VideoService {

    /**
     * Posts a video. Its commit time shall be {@link LocalDateTime#now()}.
     *
     * @param auth the current user's authentication information
     * @param req  the video's information
     * @return the video's {@code bv}
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>{@code req} is invalid
     *     <ul>
     *       <li>{@code title} is null or empty</li>
     *       <li>there is another video with same {@code title} and same user</li>
     *       <li>{@code duration} is less than 10 (so that no chunk can be divided)</li>
     *       <li>{@code publicTime} is earlier than {@link LocalDateTime#now()}</li>
     *     </ul>
     *   </li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    String postVideo(AuthInfo auth, PostVideoReq req);

    /**
     * Deletes a video.
     * This operation can be performed by the video owner or a superuser.
     * The coins of this video will not be returned to their donators.
     * Likewise, the likes, favorites, etc. of this video will be removed as well.
     *
     * @param auth the current user's authentication information
     * @param bv   the video's {@code bv}
     * @return success or not
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>{@code auth} is not the owner of the video nor a superuser</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean deleteVideo(AuthInfo auth, String bv);

    /**
     * Updates the video's information.
     * Only the owner of the video can update the video's information.
     * If the video was reviewed before, a new review for the updated video is required.
     * The duration shall not be modified and therefore the likes, favorites and danmus are not required to update.
     *
     * @param auth the current user's authentication information
     * @param bv   the video's {@code bv}
     * @param req  the new video information
     * @return {@code true} if the video needs to be re-reviewed (was reviewed before), {@code false} otherwise
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>{@code auth} is not the owner of the video</li>
     *   <li>{@code req} is invalid, as stated in {@link io.sustc.service.VideoService#postVideo(AuthInfo, PostVideoReq)}</li>
     *   <li>{@code duration} in {@code req} is changed compared to current one</li>
     *   <li>{@code req} is not changed compared to current information</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean updateVideoInfo(AuthInfo auth, String bv, PostVideoReq req);

    /**
     * Search the videos by keywords (split by space).
     * You should try to match the keywords case-insensitively in the following fields:
     * <ol>
     *   <li>title</li>
     *   <li>description</li>
     *   <li>owner name</li>
     * </ol>
     * <p>
     * Sort the results by the relevance (sum up the number of keywords matched in the three fields).
     * <ul>
     *   <li>If a keyword occurs multiple times, it should be counted more than once.</li>
     *   <li>
     *     A character in these fields can only be counted once for each keyword
     *     but can be counted for different keywords.
     *   </li>
     *   <li>If two videos have the same relevance, sort them by the number of views.</li>
     * </u
     * <p>
     * Examples:
     * <ol>
     *   <li>
     *     If the title is "1122" and the keywords are "11 12",
     *     then the relevance in the title is 2 (one for "11" and one for "12").
     *   </li>
     *   <li>
     *     If the title is "111" and the keyword is "11",
     *     then the relevance in the title is 1 (one for the occurrence of "11").
     *   </li>
     *   <li>
     *     Consider a video with title "Java Tutorial", description "Basic to Advanced Java", owner name "John Doe".
     *     If the search keywords are "Java Advanced",
     *     then the relevance is 3 (one occurrence in the title and two in the description).
     *   </li>
     * </ol>
     * <p>
     * Unreviewed or unpublished videos are only visible to superusers or the video owner.
     *
     * @param auth     the current user's authentication information
     * @param keywords the keywords to search, e.g. "sustech database final review"
     * @param pageSize the page size, if there are less than {@code pageSize} videos, return all of them
     * @param pageNum  the page number, starts from 1
     * @return a list of video {@code bv}s
     * @implNote If the requested page is empty, return an empty list
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>{@code keywords} is null or empty</li>
     *   <li>{@code pageSize} and/or {@code pageNum} is invalid (any of them <= 0)</li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    List<String> searchVideo(AuthInfo auth, String keywords, int pageSize, int pageNum);

    /**
     * Calculates the average view rate of a video.
     * The view rate is defined as the user's view time divided by the video's duration.
     *
     * @param bv the video's {@code bv}
     * @return the average view rate
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>no one has watched this video</li>
     * </ul>
     * If any of the corner case happened, {@code -1} shall be returned.
     */
    double getAverageViewRate(String bv);

    /**
     * Gets the hotspot of a video.
     * With splitting the video into 10-second chunks, hotspots are defined as chunks with the most danmus.
     *
     * @param bv the video's {@code bv}
     * @return the index of hotspot chunks (start from 0)
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>no one has sent danmu on this video</li>
     * </ul>
     * If any of the corner case happened, an empty set shall be returned.
     */
    Set<Integer> getHotspot(String bv);

    /**
     * Reviews a video by a superuser.
     * If the video is already reviewed, do not modify the review info.
     *
     * @param auth the current user's authentication information
     * @param bv   the video's {@code bv}
     * @return {@code true} if the video is newly successfully reviewed, {@code false} otherwise
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>{@code auth} is not a superuser or he/she is the owner</li>
     *   <li>the video is already reviewed</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean reviewVideo(AuthInfo auth, String bv);

    /**
     * Donates one coin to the video. A user can at most donate one coin to a video.
     * The user can only coin a video if he/she can search it ({@link io.sustc.service.VideoService#searchVideo(AuthInfo, String, int, int)}).
     * It is not mandatory that the user shall watch the video first before he/she donates coin to it.
     * If the current user donated a coin to this video successfully, he/she's coin number shall be reduced by 1.
     * However, the coin number of the owner of the video shall NOT increase.
     *
     * @param auth the current user's authentication information
     * @param bv   the video's {@code bv}
     * @return whether a coin is successfully donated
     * @implNote There is not way to earn coins in this project for simplicity
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>the user cannot search this video or he/she is the owner</li>
     *   <li>the user has no coin or has donated a coin to this video (user cannot withdraw coin donation)</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean coinVideo(AuthInfo auth, String bv);

    /**
     * Likes a video.
     * The user can only like a video if he/she can search it ({@link io.sustc.service.VideoService#searchVideo(AuthInfo, String, int, int)}).
     * If the user already liked the video, the operation will cancel the like.
     * It is not mandatory that the user shall watch the video first before he/she likes to it.
     *
     * @param auth the current user's authentication information
     * @param bv   the video's {@code bv}
     * @return the like state of the user to this video after this operation
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>the user cannot search this video or the user is the video owner</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean likeVideo(AuthInfo auth, String bv);

    /**
     * Collects a video.
     * The user can only collect a video if he/she can search it.
     * If the user already collected the video, the operation will cancel the collection.
     * It is not mandatory that the user shall watch the video first before he/she collects coin to it.
     *
     * @param auth the current user's authentication information
     * @param bv   the video's {@code bv}
     * @return the collect state of the user to this video after this operation
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     *   <li>the user cannot search this video or the user is the video owner</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean collectVideo(AuthInfo auth, String bv);
}
