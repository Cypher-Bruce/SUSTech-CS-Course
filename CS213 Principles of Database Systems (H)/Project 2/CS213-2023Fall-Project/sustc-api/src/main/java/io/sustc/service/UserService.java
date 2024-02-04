package io.sustc.service;

import io.sustc.dto.AuthInfo;
import io.sustc.dto.RegisterUserReq;
import io.sustc.dto.UserInfoResp;

public interface UserService {

    /**
     * Registers a new user.
     * {@code password} is a mandatory field, while {@code qq} and {@code wechat} are optional
     * <a href="https://openid.net/developers/how-connect-works/">OIDC</a> fields.
     *
     * @param req information of the new user
     * @return the new user's {@code mid}
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code password} or {@code name} or {@code sex} in {@code req} is null or empty</li>
     *   <li>{@code birthday} in {@code req} is valid (not null nor empty) while it's not a birthday (X月X日)</li>
     *   <li>there is another user with same {@code qq} or {@code wechat} in {@code req}</li>
     * </ul>
     * If any of the corner case happened, {@code -1} shall be returned.
     */
    long register(RegisterUserReq req);

    /**
     * Deletes a user.
     * The following relationships (this user following other users and other users following this user) shall be removed.
     * Likewise, this user's watch records, coin records, etc. shall be removed as well.
     *
     * @param auth indicates the current user
     * @param mid  the user to be deleted
     * @return operation success or not
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>cannot find a user corresponding to the {@code mid}</li>
     *   <li>the {@code auth} is invalid
     *     <ul>
     *       <li>both {@code qq} and {@code wechat} are non-empty while they do not correspond to same user</li>
     *       <li>{@code mid} is invalid while {@code qq} and {@code wechat} are both invalid (empty or not found)</li>
     *     </ul>
     *   </li>
     *   <li>the current user is a regular user while the {@code mid} is not his/hers</li>
     *   <li>the current user is a super user while the {@code mid} is neither a regular user's {@code mid} nor his/hers</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean deleteAccount(AuthInfo auth, long mid);

    /**
     * Follow the user with {@code mid}.
     * If that user has already been followed, unfollow the user.
     *
     * @param auth        the authentication information of the follower
     * @param followeeMid the user who will be followed
     * @return the follow state after this operation
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>{@code auth} is invalid, as stated in {@link io.sustc.service.UserService#deleteAccount(AuthInfo, long)}</li>
     *   <li>cannot find a user corresponding to the {@code followeeMid}</li>
     * </ul>
     * If any of the corner case happened, {@code false} shall be returned.
     */
    boolean follow(AuthInfo auth, long followeeMid);

    /**
     * Gets the required information (in DTO) of a user.
     *
     * @param mid the user to be queried
     * @return the personal information of given {@code mid}
     * @apiNote You may consider the following corner cases:
     * <ul>
     *   <li>cannot find a user corresponding to the {@code mid}</li>
     * </ul>
     * If any of the corner case happened, {@code null} shall be returned.
     */
    UserInfoResp getUserInfo(long mid);
}
