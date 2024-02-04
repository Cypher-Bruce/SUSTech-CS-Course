package io.sustc.service.impl;

import io.sustc.dto.DanmuRecord;
import io.sustc.dto.UserRecord;
import io.sustc.dto.VideoRecord;
import io.sustc.service.DatabaseService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.*;
import java.util.Arrays;
import java.util.List;

/**
 * It's important to mark your implementation class with {@link Service} annotation.
 * As long as the class is annotated and implements the corresponding interface, you can place it under any package.
 */
@Service
@Slf4j
public class DatabaseServiceImpl implements DatabaseService {

    /**
     * Getting a {@link DataSource} instance from the framework, whose connections are managed by HikariCP.
     * <p>
     * Marking a field with {@link Autowired} annotation enables our framework to automatically
     * provide you a well-configured instance of {@link DataSource}.
     * Learn more: <a href="https://www.baeldung.com/spring-dependency-injection">Dependency Injection</a>
     */
    @Autowired
    private DataSource dataSource;

    @Override
    public List<Integer> getGroupMembers() {
        //TODO: replace this with your own student IDs in your group
        return Arrays.asList(12212006);
    }

    @Override
    public void importData(
            List<DanmuRecord> danmuRecords,
            List<UserRecord> userRecords,
            List<VideoRecord> videoRecords
    ) {
        String dropIndexAndConstraint = """
                drop index if exists idx_user_mid;
                drop index if exists uk_user_qq;
                drop index if exists uk_user_wechat;
                drop index if exists idx_video_bv;
                drop index if exists uk_video_owner_title;
                drop index if exists idx_danmu_id;
                drop index if exists idx_danmu_bv_time;
                drop index if exists idx_danmu_mid;
                drop index if exists idx_user_like_danmu_mid_id;
                drop index if exists idx_user_like_danmu_id;
                drop index if exists idx_user_like_video_mid_bv;
                drop index if exists idx_user_like_video_bv;
                drop index if exists idx_user_collect_video_mid_bv;
                drop index if exists idx_user_collect_video_bv;
                drop index if exists idx_user_watch_video_mid_bv;
                drop index if exists idx_user_watch_video_bv;
                drop index if exists idx_user_coin_video_mid_bv;
                drop index if exists idx_user_coin_video_bv;
                drop index if exists idx_user_follow_follower_followed;
                drop index if exists idx_user_follow_followed;
                alter table "user" drop constraint if exists pk_user;
                alter table video drop constraint if exists pk_video;
                alter table danmu drop constraint if exists pk_danmu;
                alter table user_follow drop constraint if exists pk_user_follow;
                alter table user_like_video drop constraint if exists pk_user_like_video;
                alter table user_collect_video drop constraint if exists pk_user_collect_video;
                alter table user_watch_video drop constraint if exists pk_user_watch_video;
                alter table user_coin_video drop constraint if exists pk_user_coin_video;
                alter table user_like_danmu drop constraint if exists pk_user_like_danmu;
        """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(dropIndexAndConstraint)) {
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


       Thread thread1 = new Thread(() -> {
           // log.info("thread1 started");

           int BATCH_SIZE = 10000;
           int batchCount = 0;

           String insertUserWatchVideo = """
               INSERT INTO
                   user_watch_video(mid, bv, view_time)
               VALUES
                   (?, ?, ?)
           """;

           String insertUserFollowUser = """
               INSERT INTO
                   user_follow(follower, followed)
               VALUES
                   (?, ?)
           """;

           String insertUserCollectVideo = """
               INSERT INTO
                   user_collect_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserCoinVideo = """
               INSERT INTO
                   user_coin_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserLikeVideo = """
               INSERT INTO
                   user_like_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           try(
                   Connection conn1 = dataSource.getConnection();
                   PreparedStatement insertUserWatchVideoStmt = conn1.prepareStatement(insertUserWatchVideo);
                   PreparedStatement insertUserFollowUserStmt = conn1.prepareStatement(insertUserFollowUser);
                   PreparedStatement insertUserCollectVideoStmt = conn1.prepareStatement(insertUserCollectVideo);
                   PreparedStatement insertUserCoinVideoStmt = conn1.prepareStatement(insertUserCoinVideo);
                   PreparedStatement insertUserLikeVideoStmt = conn1.prepareStatement(insertUserLikeVideo)
           ) {
               // log.info("thread1 got connection");

               conn1.setAutoCommit(false);

               for (int i = 0; i < videoRecords.size() / 4; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (int j = 0; j < videoRecords.get(i).getViewerMids().length; j++) {
                       insertUserWatchVideoStmt.setLong(1, videoRecords.get(i).getViewerMids()[j]);
                       insertUserWatchVideoStmt.setString(2, videoBv);
                       insertUserWatchVideoStmt.setFloat(3, videoRecords.get(i).getViewTime()[j]);
                       insertUserWatchVideoStmt.addBatch();
                       batchCount++;

                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserWatchVideoStmt.executeBatch();
                           insertUserWatchVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserWatchVideoStmt.executeBatch();
               insertUserWatchVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = 0; i < userRecords.size() / 4; i++) {
                   long mid = userRecords.get(i).getMid();
                   for (long followingMid : userRecords.get(i).getFollowing()) {
                       insertUserFollowUserStmt.setLong(1, mid);
                       insertUserFollowUserStmt.setLong(2, followingMid);
                       insertUserFollowUserStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserFollowUserStmt.executeBatch();
                           insertUserFollowUserStmt.clearBatch();
                       }
                   }
               }
               insertUserFollowUserStmt.executeBatch();
               insertUserFollowUserStmt.clearBatch();

               batchCount = 0;

               for (int i = 0; i < videoRecords.size() / 4; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getFavorite()) {
                       insertUserCollectVideoStmt.setLong(1, mid);
                       insertUserCollectVideoStmt.setString(2, videoBv);
                       insertUserCollectVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCollectVideoStmt.executeBatch();
                           insertUserCollectVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCollectVideoStmt.executeBatch();
               insertUserCollectVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = 0; i < videoRecords.size() / 4; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getCoin()) {
                       insertUserCoinVideoStmt.setLong(1, mid);
                       insertUserCoinVideoStmt.setString(2, videoBv);
                       insertUserCoinVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCoinVideoStmt.executeBatch();
                           insertUserCoinVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCoinVideoStmt.executeBatch();
               insertUserCoinVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = 0; i < videoRecords.size() / 4; i++) {
                    String videoBv = videoRecords.get(i).getBv();
                    for (long mid : videoRecords.get(i).getLike()) {
                         insertUserLikeVideoStmt.setLong(1, mid);
                         insertUserLikeVideoStmt.setString(2, videoBv);
                         insertUserLikeVideoStmt.addBatch();
                         batchCount++;
                         if (batchCount % BATCH_SIZE == 0) {
                           insertUserLikeVideoStmt.executeBatch();
                           insertUserLikeVideoStmt.clearBatch();
                         }
                    }
               }
               insertUserLikeVideoStmt.executeBatch();
               insertUserLikeVideoStmt.clearBatch();


               conn1.commit();
               conn1.setAutoCommit(true);
           }catch (SQLException e){
               throw new RuntimeException(e);
           }
       });

       Thread thread2 = new Thread(() -> {
           // log.info("thread2 started");

           int BATCH_SIZE = 10000;
           int batchCount = 0;

           String insertUserWatchVideo = """
               INSERT INTO
                   user_watch_video(mid, bv, view_time)
               VALUES
                   (?, ?, ?)
           """;

           String insertUserFollowUser = """
               INSERT INTO
                   user_follow(follower, followed)
               VALUES
                   (?, ?)
           """;

           String insertUserCollectVideo = """
               INSERT INTO
                   user_collect_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserCoinVideo = """
               INSERT INTO
                   user_coin_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserLikeVideo = """
               INSERT INTO
                   user_like_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           try(
                   Connection conn2 = dataSource.getConnection();
                   PreparedStatement insertUserWatchVideoStmt = conn2.prepareStatement(insertUserWatchVideo);
                   PreparedStatement insertUserFollowUserStmt = conn2.prepareStatement(insertUserFollowUser);
                   PreparedStatement insertUserCollectVideoStmt = conn2.prepareStatement(insertUserCollectVideo);
                   PreparedStatement insertUserCoinVideoStmt = conn2.prepareStatement(insertUserCoinVideo);
                   PreparedStatement insertUserLikeVideoStmt = conn2.prepareStatement(insertUserLikeVideo)
           ) {
               // log.info("thread2 got connection");

               conn2.setAutoCommit(false);

               for (int i = videoRecords.size() / 4; i < videoRecords.size() / 2; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (int j = 0; j < videoRecords.get(i).getViewerMids().length; j++) {
                       insertUserWatchVideoStmt.setLong(1, videoRecords.get(i).getViewerMids()[j]);
                       insertUserWatchVideoStmt.setString(2, videoBv);
                       insertUserWatchVideoStmt.setFloat(3, videoRecords.get(i).getViewTime()[j]);
                       insertUserWatchVideoStmt.addBatch();
                       batchCount++;

                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserWatchVideoStmt.executeBatch();
                           insertUserWatchVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserWatchVideoStmt.executeBatch();
               insertUserWatchVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = userRecords.size() / 4; i < userRecords.size() / 2; i++) {
                   long mid = userRecords.get(i).getMid();
                   for (long followingMid : userRecords.get(i).getFollowing()) {
                       insertUserFollowUserStmt.setLong(1, mid);
                       insertUserFollowUserStmt.setLong(2, followingMid);
                       insertUserFollowUserStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserFollowUserStmt.executeBatch();
                           insertUserFollowUserStmt.clearBatch();
                       }
                   }
               }
               insertUserFollowUserStmt.executeBatch();
               insertUserFollowUserStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() / 4; i < videoRecords.size() / 2; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getFavorite()) {
                       insertUserCollectVideoStmt.setLong(1, mid);
                       insertUserCollectVideoStmt.setString(2, videoBv);
                       insertUserCollectVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCollectVideoStmt.executeBatch();
                           insertUserCollectVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCollectVideoStmt.executeBatch();
               insertUserCollectVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() / 4; i < videoRecords.size() / 2; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getCoin()) {
                       insertUserCoinVideoStmt.setLong(1, mid);
                       insertUserCoinVideoStmt.setString(2, videoBv);
                       insertUserCoinVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCoinVideoStmt.executeBatch();
                           insertUserCoinVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCoinVideoStmt.executeBatch();
               insertUserCoinVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() / 4; i < videoRecords.size() / 2; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getLike()) {
                       insertUserLikeVideoStmt.setLong(1, mid);
                       insertUserLikeVideoStmt.setString(2, videoBv);
                       insertUserLikeVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserLikeVideoStmt.executeBatch();
                           insertUserLikeVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserLikeVideoStmt.executeBatch();
               insertUserLikeVideoStmt.clearBatch();

               conn2.commit();
               conn2.setAutoCommit(true);
           }catch (SQLException e){
               throw new RuntimeException(e);
           }
       });

       Thread thread3 = new Thread(() -> {
           // log.info("thread3 started");

           int batchCount = 0;
           int BATCH_SIZE = 10000;

           String insertUserWatchVideo = """
               INSERT INTO
                   user_watch_video(mid, bv, view_time)
               VALUES
                   (?, ?, ?)
           """;

           String insertUserFollowUser = """
               INSERT INTO
                   user_follow(follower, followed)
               VALUES
                   (?, ?)
           """;

           String insertUserCollectVideo = """
               INSERT INTO
                   user_collect_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserCoinVideo = """
               INSERT INTO
                   user_coin_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserLikeVideo = """
               INSERT INTO
                   user_like_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           try(
                   Connection conn3 = dataSource.getConnection();
                   PreparedStatement insertUserCollectVideoStmt = conn3.prepareStatement(insertUserCollectVideo);
                   PreparedStatement insertUserCoinVideoStmt = conn3.prepareStatement(insertUserCoinVideo);
                   PreparedStatement insertUserFollowUserStmt = conn3.prepareStatement(insertUserFollowUser);
                   PreparedStatement insertUserWatchVideoStmt = conn3.prepareStatement(insertUserWatchVideo);
                   PreparedStatement insertUserLikeVideoStmt = conn3.prepareStatement(insertUserLikeVideo)
           ) {

               // log.info("thread3 got connection");

               conn3.setAutoCommit(false);

               for (int i = videoRecords.size() / 2; i < videoRecords.size() * 3 / 4; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (int j = 0; j < videoRecords.get(i).getViewerMids().length; j++) {
                       insertUserWatchVideoStmt.setLong(1, videoRecords.get(i).getViewerMids()[j]);
                       insertUserWatchVideoStmt.setString(2, videoBv);
                       insertUserWatchVideoStmt.setFloat(3, videoRecords.get(i).getViewTime()[j]);
                       insertUserWatchVideoStmt.addBatch();
                       batchCount++;

                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserWatchVideoStmt.executeBatch();
                           insertUserWatchVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserWatchVideoStmt.executeBatch();
               insertUserWatchVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = userRecords.size() / 2; i < userRecords.size() * 3 / 4; i++) {
                   long mid = userRecords.get(i).getMid();
                   for (long followingMid : userRecords.get(i).getFollowing()) {
                       insertUserFollowUserStmt.setLong(1, mid);
                       insertUserFollowUserStmt.setLong(2, followingMid);
                       insertUserFollowUserStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserFollowUserStmt.executeBatch();
                           insertUserFollowUserStmt.clearBatch();
                       }
                   }
               }
               insertUserFollowUserStmt.executeBatch();
               insertUserFollowUserStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() / 2; i < videoRecords.size() * 3 / 4; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getFavorite()) {
                       insertUserCollectVideoStmt.setLong(1, mid);
                       insertUserCollectVideoStmt.setString(2, videoBv);
                       insertUserCollectVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCollectVideoStmt.executeBatch();
                           insertUserCollectVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCollectVideoStmt.executeBatch();
               insertUserCollectVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() / 2; i < videoRecords.size() * 3 / 4; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getCoin()) {
                       insertUserCoinVideoStmt.setLong(1, mid);
                       insertUserCoinVideoStmt.setString(2, videoBv);
                       insertUserCoinVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCoinVideoStmt.executeBatch();
                           insertUserCoinVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCoinVideoStmt.executeBatch();
               insertUserCoinVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() / 2; i < videoRecords.size() * 3 / 4; i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getLike()) {
                       insertUserLikeVideoStmt.setLong(1, mid);
                       insertUserLikeVideoStmt.setString(2, videoBv);
                       insertUserLikeVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserLikeVideoStmt.executeBatch();
                           insertUserLikeVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserLikeVideoStmt.executeBatch();
               insertUserLikeVideoStmt.clearBatch();

               conn3.commit();
               conn3.setAutoCommit(true);
           }catch (SQLException e){
               throw new RuntimeException(e);
           }
       });

       Thread thread4 = new Thread(() -> {
           // log.info("thread4 started");

           int batchCount = 0;
           int BATCH_SIZE = 10000;
           int lastBatchCount = 0;
           int danmuBatchCount = 0;

           String insertUser = """
               INSERT INTO
                   "user"(mid, name, sex, birthday, level, coins, sign, identity, password, qq, wechat)
               VALUES
                   (?, ?, ?, to_date(?, 'MM月DD日'), ?, ?, ?, ?, ?, ?, ?)
           """;

           String insertVideo = """
               INSERT INTO
                   video(bv, title, owner, commit_time, public_time, duration, description, reviewer, review_time)
               VALUES
                   (?, ?, ?, ?, ?, ?, ?, ?, ?)
           """;

           String insertDanmu = """
               INSERT INTO
                   danmu(bv, mid, time, content, post_time)
               VALUES
                   (?, ?, ?, ?, ?)
           """;

           String insertUserLikeDanmu = """
               INSERT INTO
                   user_like_danmu(mid, id)
               VALUES
                   (?, ?)
           """;

           String insertUserWatchVideo = """
               INSERT INTO
                   user_watch_video(mid, bv, view_time)
               VALUES
                   (?, ?, ?)
           """;

           String insertUserFollowUser = """
               INSERT INTO
                   user_follow(follower, followed)
               VALUES
                   (?, ?)
           """;

           String insertUserCollectVideo = """
               INSERT INTO
                   user_collect_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserCoinVideo = """
               INSERT INTO
                   user_coin_video(mid, bv)
               VALUES
                   (?, ?)
           """;

           String insertUserLikeVideo = """
               INSERT INTO
                   user_like_video(mid, bv)
               VALUES
                   (?, ?)
           """;


           try(
                   Connection conn4 = dataSource.getConnection();
                   PreparedStatement insertUserStmt = conn4.prepareStatement(insertUser);
                   PreparedStatement insertVideoStmt = conn4.prepareStatement(insertVideo);
                   PreparedStatement insertDanmuStmt = conn4.prepareStatement(insertDanmu, Statement.RETURN_GENERATED_KEYS);
                   PreparedStatement insertUserLikeDanmuStmt = conn4.prepareStatement(insertUserLikeDanmu);
                   PreparedStatement insertUserLikeVideoStmt = conn4.prepareStatement(insertUserLikeVideo);
                   PreparedStatement insertUserFollowUserStmt = conn4.prepareStatement(insertUserFollowUser);
                   PreparedStatement insertUserWatchVideoStmt = conn4.prepareStatement(insertUserWatchVideo);
                   PreparedStatement insertUserCollectVideoStmt = conn4.prepareStatement(insertUserCollectVideo);
                   PreparedStatement insertUserCoinVideoStmt = conn4.prepareStatement(insertUserCoinVideo)
           ) {

               // log.info("thread4 got connection");

               conn4.setAutoCommit(false);

               for (UserRecord record : userRecords) {
                   insertUserStmt.setLong(1, record.getMid());
                   insertUserStmt.setString(2, record.getName());
                   insertUserStmt.setString(3, UserRecord.convertSex2Char(record.getSex()));
                   insertUserStmt.setString(4, (record.getBirthday() == null || record.getBirthday().isEmpty()) ? null : record.getBirthday());
                   insertUserStmt.setShort(5, record.getLevel());
                   insertUserStmt.setInt(6, record.getCoin());
                   insertUserStmt.setString(7, record.getSign());
                   insertUserStmt.setString(8, UserRecord.convertIdentity2Char(record.getIdentity()));
                   insertUserStmt.setString(9, record.getPassword());
                   insertUserStmt.setString(10, record.getQq() == null || record.getQq().isEmpty() ? null : record.getQq());
                   insertUserStmt.setString(11, record.getWechat() == null || record.getWechat().isEmpty() ? null : record.getWechat());

                   insertUserStmt.addBatch();
                   batchCount++;

                   if (batchCount % BATCH_SIZE == 0) {
                       insertUserStmt.executeBatch();
                       insertUserStmt.clearBatch();
                       batchCount = 0;
                   }
               }
               insertUserStmt.executeBatch();
               insertUserStmt.clearBatch();

               // log.info("User table inserted");

               batchCount = 0;

               for (VideoRecord record : videoRecords) {
                   insertVideoStmt.setString(1, record.getBv());
                   insertVideoStmt.setString(2, record.getTitle());
                   insertVideoStmt.setLong(3, record.getOwnerMid());
                   insertVideoStmt.setTimestamp(4, record.getCommitTime());
                   insertVideoStmt.setTimestamp(5, record.getPublicTime());
                   insertVideoStmt.setFloat(6, record.getDuration());
                   insertVideoStmt.setString(7, record.getDescription());
                   insertVideoStmt.setLong(8, record.getReviewer());
                   insertVideoStmt.setTimestamp(9, record.getReviewTime());
                   insertVideoStmt.addBatch();
                   batchCount++;

                   if (batchCount % BATCH_SIZE == 0) {
                       insertVideoStmt.executeBatch();
                       insertVideoStmt.clearBatch();
                       batchCount = 0;
                   }
               }
               insertVideoStmt.executeBatch();
               insertVideoStmt.clearBatch();

               // log.info("Video table inserted");

               batchCount = 0;

               for (DanmuRecord record : danmuRecords) {
                   insertDanmuStmt.setString(1, record.getBv());
                   insertDanmuStmt.setLong(2, record.getMid());
                   insertDanmuStmt.setFloat(3, record.getTime());
                   insertDanmuStmt.setString(4, record.getContent());
                   insertDanmuStmt.setTimestamp(5, record.getPostTime());
                   insertDanmuStmt.addBatch();
                   batchCount++;

                   if (batchCount % BATCH_SIZE == 0) {
                       insertDanmuStmt.executeBatch();
                       ResultSet generatedKeys = insertDanmuStmt.getGeneratedKeys();
                       for (int j = lastBatchCount; j < lastBatchCount + BATCH_SIZE; j++) {
                           generatedKeys.next();
                           long danmuId = generatedKeys.getLong("id");
                           DanmuRecord danmuRecord = danmuRecords.get(j);
                           for (long mid : danmuRecord.getLikedBy()) {
                               insertUserLikeDanmuStmt.setLong(1, mid);
                               insertUserLikeDanmuStmt.setLong(2, danmuId);
                               insertUserLikeDanmuStmt.addBatch();
                               danmuBatchCount++;
                               if (danmuBatchCount % BATCH_SIZE == 0) {
                                   insertUserLikeDanmuStmt.executeBatch();
                                   insertUserLikeDanmuStmt.clearBatch();
                                   danmuBatchCount = 0;
                               }
                           }
                       }
                       insertDanmuStmt.clearBatch();
                       lastBatchCount += BATCH_SIZE;
                       batchCount = 0;
                       generatedKeys.close();
                   }
               }
               insertDanmuStmt.executeBatch();
               ResultSet generatedKeys = insertDanmuStmt.getGeneratedKeys();
               for (int j = lastBatchCount; j < danmuRecords.size(); j++) {
                   generatedKeys.next();
                   long danmuId = generatedKeys.getLong("id");
                   DanmuRecord danmuRecord = danmuRecords.get(j);
                   for (long mid : danmuRecord.getLikedBy()) {
                       insertUserLikeDanmuStmt.setLong(1, mid);
                       insertUserLikeDanmuStmt.setLong(2, danmuId);
                       insertUserLikeDanmuStmt.addBatch();
                       danmuBatchCount++;
                       if (danmuBatchCount % BATCH_SIZE == 0) {
                           insertUserLikeDanmuStmt.executeBatch();
                           insertUserLikeDanmuStmt.clearBatch();
                           danmuBatchCount = 0;
                       }
                   }
               }
               insertUserLikeDanmuStmt.executeBatch();
               insertUserLikeDanmuStmt.clearBatch();
               insertDanmuStmt.clearBatch();
               generatedKeys.close();

               // log.info("Danmu table inserted");

               batchCount = 0;

               for (int i = videoRecords.size() * 3 / 4; i < videoRecords.size(); i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (int j = 0; j < videoRecords.get(i).getViewerMids().length; j++) {
                       insertUserWatchVideoStmt.setLong(1, videoRecords.get(i).getViewerMids()[j]);
                       insertUserWatchVideoStmt.setString(2, videoBv);
                       insertUserWatchVideoStmt.setFloat(3, videoRecords.get(i).getViewTime()[j]);
                       insertUserWatchVideoStmt.addBatch();
                       batchCount++;

                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserWatchVideoStmt.executeBatch();
                           insertUserWatchVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserWatchVideoStmt.executeBatch();
               insertUserWatchVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = userRecords.size() * 3 / 4; i < userRecords.size(); i++) {
                   long mid = userRecords.get(i).getMid();
                   for (long followingMid : userRecords.get(i).getFollowing()) {
                       insertUserFollowUserStmt.setLong(1, mid);
                       insertUserFollowUserStmt.setLong(2, followingMid);
                       insertUserFollowUserStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserFollowUserStmt.executeBatch();
                           insertUserFollowUserStmt.clearBatch();
                       }
                   }
               }
               insertUserFollowUserStmt.executeBatch();
               insertUserFollowUserStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() * 3 / 4; i < videoRecords.size(); i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getFavorite()) {
                       insertUserCollectVideoStmt.setLong(1, mid);
                       insertUserCollectVideoStmt.setString(2, videoBv);
                       insertUserCollectVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCollectVideoStmt.executeBatch();
                           insertUserCollectVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCollectVideoStmt.executeBatch();
               insertUserCollectVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() * 3 / 4; i < videoRecords.size(); i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getCoin()) {
                       insertUserCoinVideoStmt.setLong(1, mid);
                       insertUserCoinVideoStmt.setString(2, videoBv);
                       insertUserCoinVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserCoinVideoStmt.executeBatch();
                           insertUserCoinVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserCoinVideoStmt.executeBatch();
               insertUserCoinVideoStmt.clearBatch();

               batchCount = 0;

               for (int i = videoRecords.size() * 3 / 4; i < videoRecords.size(); i++) {
                   String videoBv = videoRecords.get(i).getBv();
                   for (long mid : videoRecords.get(i).getLike()) {
                       insertUserLikeVideoStmt.setLong(1, mid);
                       insertUserLikeVideoStmt.setString(2, videoBv);
                       insertUserLikeVideoStmt.addBatch();
                       batchCount++;
                       if (batchCount % BATCH_SIZE == 0) {
                           insertUserLikeVideoStmt.executeBatch();
                           insertUserLikeVideoStmt.clearBatch();
                       }
                   }
               }
               insertUserLikeVideoStmt.executeBatch();
               insertUserLikeVideoStmt.clearBatch();

               conn4.commit();
               conn4.setAutoCommit(true);
           }catch (SQLException e){
               throw new RuntimeException(e);
           }
       });

       thread1.start();
       thread2.start();
       thread3.start();
       thread4.start();
       try{
           thread1.join();
           thread2.join();
           thread3.join();
           thread4.join();
       }catch (InterruptedException e){
           throw new RuntimeException(e);
       }

       String addKeys = """
               alter table "user" add constraint pk_user primary key (mid);
               alter table video add constraint pk_video primary key (bv);
               alter table danmu add constraint pk_danmu primary key (id);
               alter table user_follow add constraint pk_user_follow primary key (follower, followed);
               alter table user_like_video add constraint pk_user_like_video primary key (mid, bv);
               alter table user_collect_video add constraint pk_user_collect_video primary key (mid, bv);
               alter table user_watch_video add constraint pk_user_watch_video primary key (mid, bv);
               alter table user_coin_video add constraint pk_user_coin_video primary key (mid, bv);
               alter table user_like_danmu add constraint pk_user_like_danmu primary key (mid, id);
               create index idx_user_watch_video_mid_bv on user_watch_video(mid, bv) where is_deleted = false;
               create index idx_user_watch_video_bv on user_watch_video(bv) where is_deleted = false;
               create index idx_user_follow_follower_followed on user_follow(follower, followed) where is_deleted = false;
               create index idx_user_follow_followed on user_follow(followed) where is_deleted = false;
               create index idx_user_collect_video_mid_bv on user_collect_video(mid, bv) where is_deleted = false;
               create index idx_user_collect_video_bv on user_collect_video(bv) where is_deleted = false;
               create index idx_user_coin_video_mid_bv on user_coin_video(mid, bv) where is_deleted = false;
               create index idx_user_coin_video_bv on user_coin_video(bv) where is_deleted = false;
               create index idx_user_mid on "user"(mid) where is_deleted = false;
               create unique index uk_user_qq on "user"(qq) where is_deleted = false;
               create unique index uk_user_wechat on "user"(wechat) where is_deleted = false;
               create index idx_video_bv on video(bv) where is_deleted = false;
               create unique index uk_video_owner_title on video(owner, title) where is_deleted = false;
               create index idx_danmu_id on danmu(id) where is_deleted = false;
               create index idx_danmu_bv_time on danmu(bv, time) where is_deleted = false;
               create index idx_danmu_mid on danmu(mid) where is_deleted = false;
               create index idx_user_like_danmu_mid_id on user_like_danmu(mid, id) where is_deleted = false;
               create index idx_user_like_danmu_id on user_like_danmu(id) where is_deleted = false;
               create index idx_user_like_video_mid_bv on user_like_video(mid, bv) where is_deleted = false;
               create index idx_user_like_video_bv on user_like_video(bv) where is_deleted = false;
       """;

         try (Connection conn = dataSource.getConnection();
              PreparedStatement stmt = conn.prepareStatement(addKeys))
         {
              stmt.executeUpdate();
         } catch (SQLException e) {
              throw new RuntimeException(e);
         }
    }

    /*
     * The following code is just a quick example of using jdbc datasource.
     * Practically, the code interacts with database is usually written in a DAO layer.
     *
     * Reference: [Data Access Object pattern](https://www.baeldung.com/java-dao-pattern)
     */

    @Override
    public void truncate() {
        // You can use the default truncate script provided by us in most cases,
        // but if it doesn't work properly, you may need to modify it.

        String sql = """
                DO $$
                DECLARE
                    tables CURSOR FOR
                        SELECT tablename
                        FROM pg_tables
                        WHERE schemaname = 'public';
                BEGIN
                    FOR t IN tables
                    LOOP
                        EXECUTE 'TRUNCATE TABLE ' || QUOTE_IDENT(t.tablename) || ' CASCADE;';
                    END LOOP;
                END $$;
                """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Integer sum(int a, int b) {
        String sql = "SELECT ?+?";

        try (Connection conn = dataSource.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, a);
            stmt.setInt(2, b);
            // log.info("SQL: {}", stmt);

            ResultSet rs = stmt.executeQuery();
            rs.next();
            return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
