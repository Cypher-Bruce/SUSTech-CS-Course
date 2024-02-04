package io.sustc.service;

import java.util.List;

import io.sustc.dto.AuthInfo;

public interface RecommenderService {

    /**
     * Recommends a list of top 5 similar videos for a video.
     * The similarity is defined as the number of users (in the database) who have watched both videos.
     *
     * @param bv the current video
     * @return a list of video {@code bv}s
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>cannot find a video corresponding to the {@code bv}</li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    List<String> recommendNextVideo(String bv);

    /**
     * Recommends videos for anonymous users, based on the popularity.
     * Evaluate the video's popularity from the following aspects:
     * <ol>
     *   <li>"like": the rate of watched users who also liked this video</li>
     *   <li>"coin": the rate of watched users who also donated coin to this video</li>
     *   <li>"fav": the rate of watched users who also collected this video</li>
     *   <li>"danmu": the average number of danmus sent by one watched user</li>
     *   <li>"finish": the average video watched percentage of one watched user</li>
     * </ol>
     * The recommendation score can be calculated as:
     * <pre>
     *   score = like + coin + fav + danmu + finish
     * </pre>
     *
     * @param pageSize the page size, if there are less than {@code pageSize} videos, return all of them
     * @param pageNum  the page number, starts from 1
     * @return a list of video {@code bv}s, sorted by the recommendation score
     * @implNote 
     * Though users can like/coin/favorite a video without watching it, the rates of these values should be clamped to 1.
     * If no one has watched this video, all the five scores shall be 0.
     * If the requested page is empty, return an empty list.
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code pageSize} and/or {@code pageNum} is invalid (any of them <= 0)</li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    List<String> generalRecommendations(int pageSize, int pageNum);

    /**
     * Recommends videos for a user, restricted on their interests.
     * The user's interests are defined as the videos that the user's friend(s) have watched,
     * filter out the videos that the user has already watched.
     * Friend(s) of current user is/are the one(s) who is/are both the current user' follower and followee at the same time.
     * Sort the videos by:
     * <ol>
     *   <li>The number of friends who have watched the video</li>
     *   <li>The video owner's level</li>
     *   <li>The video's public time (newer videos are preferred)</li>
     * </ol>
     *
     * @param auth     the current user's authentication information to be recommended
     * @param pageSize the page size, if there are less than {@code pageSize} videos, return all of them
     * @param pageNum  the page number, starts from 1
     * @return a list of video {@code bv}s
     * @implNote
     * If the current user's interest is empty, return {@link io.sustc.service.RecommenderService#generalRecommendations(int, int)}.
     * If the requested page is empty, return an empty list
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>{@code pageSize} and/or {@code pageNum} is invalid (any of them <= 0)</li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    List<String> recommendVideosForUser(AuthInfo auth, int pageSize, int pageNum);

    /**
     * Recommends friends for a user, based on their common followings.
     * Find all users that are not currently followed by the user, and have at least one common following with the user.
     * Sort the users by the number of common followings in descending order.
     * If two users have the same number of common followings,
     * sort them by their {@code level} in descending order, then by their {@code mid} in ascending order.
     *
     * @param auth     the current user's authentication information to be recommended
     * @param pageSize the page size, if there are less than {@code pageSize} users, return all of them
     * @param pageNum  the page number, starts from 1
     * @return a list of {@code mid}s of the recommended users
     * @implNote If the requested page is empty, return an empty list
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>{@code pageSize} and/or {@code pageNum} is invalid (any of them <= 0)</li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    List<Long> recommendFriends(AuthInfo auth, int pageSize, int pageNum);
}
