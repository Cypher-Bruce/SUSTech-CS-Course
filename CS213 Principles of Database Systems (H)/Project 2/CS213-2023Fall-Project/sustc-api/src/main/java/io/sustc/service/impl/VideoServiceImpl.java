package io.sustc.service.impl;

import io.sustc.dto.AuthInfo;
import io.sustc.dto.PostVideoReq;
import io.sustc.service.VideoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.sql.DataSource;
import java.sql.*;
import java.time.LocalDateTime;
import java.util.*;

@Service
@Slf4j
public class VideoServiceImpl implements VideoService {
    @Autowired
    private DataSource dataSource;


    @Override
    public String postVideo(AuthInfo auth, PostVideoReq req) {
        if (auth == null) {
            // log.warn("VideoServiceImpl::postVideo: auth is null");
            return null;
        }

        if(req == null){
            // log.warn("VideoServiceImpl::postVideo: req is null");
            return null;
        }

        if(req.getTitle() == null || req.getTitle().isEmpty()){
            // log.warn("VideoServiceImpl::postVideo: title is null or empty");
            return null;
        }

        if(req.getDuration() < 10){
            // log.warn("VideoServiceImpl::postVideo: duration is less than 10");
            return null;
        }

        if(req.getPublicTime() == null || req.getPublicTime().before(Timestamp.valueOf(LocalDateTime.now()))){
            // log.warn("VideoServiceImpl::postVideo: publicTime is null or before now");
            return null;
        }

        String postVideo = """
                SELECT postvideo(?, ?, ?, ?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement postVideoStmt = conn.prepareStatement(postVideo)
        ){
            postVideoStmt.setLong(1, auth.getMid());
            postVideoStmt.setString(2, auth.getPassword());
            postVideoStmt.setString(3, auth.getQq());
            postVideoStmt.setString(4, auth.getWechat());
            postVideoStmt.setString(5, req.getTitle());
            postVideoStmt.setFloat(6, req.getDuration());
            postVideoStmt.setString(7, req.getDescription());
            postVideoStmt.setTimestamp(8, req.getPublicTime());
            try(ResultSet postVideoRs = postVideoStmt.executeQuery()){
                if(postVideoRs.next()){
                    return postVideoRs.getString(1);
                }else{
                    // log.warn("VideoServiceImpl::postVideo: postVideoRs is empty");
                    return null;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::postVideo: SQL error {}", e.getMessage());
            return null;
        }
    }

    @Override
    public boolean deleteVideo(AuthInfo auth, String bv) {
        if(auth == null){
            // log.warn("VideoServiceImpl::deleteVideo: auth is null");
            return false;
        }

        if(bv == null || bv.isEmpty()){
            // log.warn("VideoServiceImpl::deleteVideo: bv is null or empty");
            return false;
        }

        String deleteVideo = """
                SELECT deletevideo(?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement deleteVideoStmt = conn.prepareStatement(deleteVideo)
        ){
            deleteVideoStmt.setLong(1, auth.getMid());
            deleteVideoStmt.setString(2, auth.getPassword());
            deleteVideoStmt.setString(3, auth.getQq());
            deleteVideoStmt.setString(4, auth.getWechat());
            deleteVideoStmt.setString(5, bv);
            try(ResultSet deleteVideoRs = deleteVideoStmt.executeQuery()){
                if(deleteVideoRs.next()){
                    return deleteVideoRs.getBoolean(1);
                }else{
                    // log.warn("VideoServiceImpl::deleteVideo: deleteVideoRs is empty");
                    return false;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::deleteVideo: SQL error {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean updateVideoInfo(AuthInfo auth, String bv, PostVideoReq req) {

        if(auth == null){
            // log.warn("VideoServiceImpl::updateVideoInfo: auth is null");
            return false;
        }

        if(bv == null || bv.isEmpty()){
            // log.warn("VideoServiceImpl::updateVideoInfo: bv is null or empty");
            return false;
        }

        if(req == null){
            // log.warn("VideoServiceImpl::updateVideoInfo: req is null");
            return false;
        }

        if(req.getTitle() == null || req.getTitle().isEmpty()){
            // log.warn("VideoServiceImpl::updateVideoInfo: title is null or empty");
            return false;
        }

        if(req.getPublicTime() == null || req.getPublicTime().before(Timestamp.valueOf(LocalDateTime.now()))){
            // log.warn("VideoServiceImpl::updateVideoInfo: publicTime is null or before now");
            return false;
        }

        String updateVideoInfo = """
                SELECT updatevideoinfo(?, ?, ?, ?, ?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement updateVideoInfoStmt = conn.prepareStatement(updateVideoInfo)
        ){
            updateVideoInfoStmt.setLong(1, auth.getMid());
            updateVideoInfoStmt.setString(2, auth.getPassword());
            updateVideoInfoStmt.setString(3, auth.getQq());
            updateVideoInfoStmt.setString(4, auth.getWechat());
            updateVideoInfoStmt.setString(5, bv);
            updateVideoInfoStmt.setString(6, req.getTitle());
            updateVideoInfoStmt.setFloat(7, req.getDuration());
            updateVideoInfoStmt.setString(8, req.getDescription());
            updateVideoInfoStmt.setTimestamp(9, req.getPublicTime());
            try(ResultSet updateVideoInfoRs = updateVideoInfoStmt.executeQuery()){
                if(updateVideoInfoRs.next()){
                    return updateVideoInfoRs.getBoolean(1);
                }else{
                    // log.warn("VideoServiceImpl::updateVideoInfo: updateVideoInfoRs is empty");
                    return false;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::updateVideoInfo: SQL error {}", e.getMessage());
            return false;
        }
    }

    @Override
    public List<String> searchVideo(AuthInfo auth, String keywords, int pageSize, int pageNum) {
        if(auth == null){
            // log.warn("VideoServiceImpl::searchVideo: auth is null");
            return null;
        }

        if(keywords == null || keywords.isEmpty()){
            // log.warn("VideoServiceImpl::searchVideo: keywords is null or empty");
            return null;
        }

        if(pageSize <= 0){
            // log.warn("VideoServiceImpl::searchVideo: pageSize is less than 0");
            return null;
        }

        if(pageNum <= 0){
            // log.warn("VideoServiceImpl::searchVideo: pageNum is less than 0");
            return null;
        }
        
        keywords = keywords
                .replace("\\", "\\\\")
                .replace(".", "\\.")
                .replace("?", "\\?")
                .replace("*", "\\*")
                .replace("+", "\\+")
                .replace("[", "\\[")
                .replace("]", "\\]")
                .replace("{", "\\{")
                .replace("}", "\\}")
                .replace("(", "\\(")
                .replace(")", "\\)")
                .replace("|", "\\|")
                .replace("^", "\\^")
                .replace("$", "\\$");
        String[] keywordList = keywords.split("\\s+");
        if(keywordList.length == 0){
            // log.warn("VideoServiceImpl::searchVideo: keywords is empty");
            return null;
        }

        String searchVideo = """
                SELECT searchvideo(?, ?, ?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement searchVideoStmt = conn.prepareStatement(searchVideo)
        ){
            searchVideoStmt.setLong(1, auth.getMid());
            searchVideoStmt.setString(2, auth.getPassword());
            searchVideoStmt.setString(3, auth.getQq());
            searchVideoStmt.setString(4, auth.getWechat());
            searchVideoStmt.setArray(5, conn.createArrayOf("text", keywordList));
            searchVideoStmt.setInt(6, pageSize);
            searchVideoStmt.setInt(7, pageNum);
            try(ResultSet searchVideoRs = searchVideoStmt.executeQuery()){
                if(searchVideoRs.next()){
                    if(searchVideoRs.getArray(1) == null){
                        // log.warn("VideoServiceImpl::searchVideo: searchVideoRs is empty");
                        return null;
                    }else{
                        return Arrays.asList((String[]) searchVideoRs.getArray(1).getArray());
                    }
                }else{
                    // log.warn("VideoServiceImpl::searchVideo: searchVideoRs is empty");
                    return null;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::searchVideo: SQL error {}", e.getMessage());
            return null;
        }
    }

    @Override
    public double getAverageViewRate(String bv) {
        if (bv == null || bv.isEmpty()) {
            // log.warn("VideoServiceImpl::getAverageViewRate: bv is null or empty");
            return -1;
        }

        String getAverageViewRate = """
               SELECT getaverageviewrate(?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement getAverageViewRateStmt = conn.prepareStatement(getAverageViewRate)
        ){
            getAverageViewRateStmt.setString(1, bv);
            try(ResultSet getAverageViewRateRs = getAverageViewRateStmt.executeQuery()){
                if(getAverageViewRateRs.next()){
                    return getAverageViewRateRs.getDouble(1);
                }else{
                    // log.warn("VideoServiceImpl::getAverageViewRate: getAverageViewRateRs is empty");
                    return -1;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::getAverageViewRate: SQL error {}", e.getMessage());
            return -1;
        }
    }

    @Override
    public Set<Integer> getHotspot(String bv) {
        if(bv == null || bv.isEmpty()){
            // log.warn("VideoServiceImpl::getHotspot: bv is null or empty");
            return Collections.emptySet();
        }

        String findHotSpot = """
                SELECT gethotspot(?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement findHotSpotStmt = conn.prepareStatement(findHotSpot)
        ){
            findHotSpotStmt.setString(1, bv);
            try(ResultSet findHotSpotRs = findHotSpotStmt.executeQuery()){
                if(findHotSpotRs.next()){
                    if(findHotSpotRs.getArray(1) == null){
                        // log.warn("VideoServiceImpl::getHotspot: no video or no danmu");
                        return Collections.emptySet();
                    }else{
                        return new HashSet<>(Arrays.asList((Integer[]) findHotSpotRs.getArray(1).getArray()));
                    }
                }else{
                    // log.warn("VideoServiceImpl::getHotspot: findHotSpotRs is empty");
                    return Collections.emptySet();
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::getHotspot: SQL error {}", e.getMessage());
            return Collections.emptySet();
        }
    }

    @Override
    public boolean reviewVideo(AuthInfo auth, String bv) {
        if(auth == null){
            // log.warn("VideoServiceImpl::reviewVideo: auth is null");
            return false;
        }

        if(bv == null || bv.isEmpty()){
            // log.warn("VideoServiceImpl::reviewVideo: bv is null or empty");
            return false;
        }

        String reviewVideo = """
                SELECT reviewvideo(?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement reviewVideoStmt = conn.prepareStatement(reviewVideo)
        ){
            reviewVideoStmt.setLong(1, auth.getMid());
            reviewVideoStmt.setString(2, auth.getPassword());
            reviewVideoStmt.setString(3, auth.getQq());
            reviewVideoStmt.setString(4, auth.getWechat());
            reviewVideoStmt.setString(5, bv);
            try(ResultSet reviewVideoRs = reviewVideoStmt.executeQuery()){
                if(reviewVideoRs.next()){
                    return reviewVideoRs.getBoolean(1);
                }else{
                    // log.warn("VideoServiceImpl::reviewVideo: reviewVideoRs is empty");
                    return false;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::reviewVideo: SQL error {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean coinVideo(AuthInfo auth, String bv) {
        if(auth == null){
            // log.warn("VideoServiceImpl::coinVideo: auth is null");
            return false;
        }

        if(bv == null || bv.isEmpty()){
            // log.warn("VideoServiceImpl::coinVideo: bv is null or empty");
            return false;
        }

        String coinVideo = """
            select coinvideo(?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement coinVideoStmt = conn.prepareStatement(coinVideo)
        ){
            coinVideoStmt.setLong(1, auth.getMid());
            coinVideoStmt.setString(2, auth.getPassword());
            coinVideoStmt.setString(3, auth.getQq());
            coinVideoStmt.setString(4, auth.getWechat());
            coinVideoStmt.setString(5, bv);
            try(ResultSet coinVideoRs = coinVideoStmt.executeQuery()){
                if(coinVideoRs.next()){
                    return coinVideoRs.getBoolean(1);
                }else{
                    // log.warn("VideoServiceImpl::coinVideo: coinVideoRs is empty");
                    return false;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::coinVideo: SQL error {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean likeVideo(AuthInfo auth, String bv) {
        if(auth == null){
            // log.warn("VideoServiceImpl::likeVideo: auth is null");
            return false;
        }

        if(bv == null || bv.isEmpty()){
            // log.warn("VideoServiceImpl::likeVideo: bv is null or empty");
            return false;
        }

        String likeVideo = """
            select likevideo(?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement likeVideoStmt = conn.prepareStatement(likeVideo)
        ){
            likeVideoStmt.setLong(1, auth.getMid());
            likeVideoStmt.setString(2, auth.getPassword());
            likeVideoStmt.setString(3, auth.getQq());
            likeVideoStmt.setString(4, auth.getWechat());
            likeVideoStmt.setString(5, bv);
            try(ResultSet likeVideoRs = likeVideoStmt.executeQuery()){
                if(likeVideoRs.next()){
                    return likeVideoRs.getBoolean(1);
                }else{
                    // log.warn("VideoServiceImpl::likeVideo: likeVideoRs is empty");
                    return false;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::likeVideo: SQL error {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean collectVideo(AuthInfo auth, String bv) {
        if(auth == null){
            // log.warn("VideoServiceImpl::collectVideo: auth is null");
            return false;
        }

        if(bv == null || bv.isEmpty()){
            // log.warn("VideoServiceImpl::collectVideo: bv is null or empty");
            return false;
        }

        String collectVideo = """
            select collectvideo(?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement collectVideoStmt = conn.prepareStatement(collectVideo)
        ){
            collectVideoStmt.setLong(1, auth.getMid());
            collectVideoStmt.setString(2, auth.getPassword());
            collectVideoStmt.setString(3, auth.getQq());
            collectVideoStmt.setString(4, auth.getWechat());
            collectVideoStmt.setString(5, bv);
            try(ResultSet collectVideoRs = collectVideoStmt.executeQuery()){
                if(collectVideoRs.next()){
                    return collectVideoRs.getBoolean(1);
                }else{
                    // log.warn("VideoServiceImpl::collectVideo: collectVideoRs is empty");
                    return false;
                }
            }
        } catch (SQLException e) {
            // log.error("VideoServiceImpl::collectVideo: SQL error {}", e.getMessage());
            return false;
        }
    }
}
