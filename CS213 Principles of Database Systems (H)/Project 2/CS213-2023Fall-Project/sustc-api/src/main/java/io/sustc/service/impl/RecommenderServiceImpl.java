package io.sustc.service.impl;

import io.sustc.dto.AuthInfo;
import io.sustc.service.RecommenderService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@Service
@Slf4j
public class RecommenderServiceImpl implements RecommenderService {

    @Autowired
    private DataSource dataSource;

    @Override
    public List<String> recommendNextVideo(String bv) {
        if(bv == null || bv.isEmpty()){
            // log.warn("RecommenderServiceImpl::recommendNextVideo: bv is null or empty");
            return null;
        }

        String recommendNextVideo = """
            SELECT recommendNextVideo(?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement recommendNextVideoStmt = conn.prepareStatement(recommendNextVideo)){
            recommendNextVideoStmt.setString(1, bv);
            try(ResultSet recommendNextVideoRs = recommendNextVideoStmt.executeQuery()){
                if(recommendNextVideoRs.next()){
                    Array result = recommendNextVideoRs.getArray(1);
                    if(result == null){
                        return null;
                    }else{
                        return List.of((String[]) result.getArray());
                    }
                }else{
                    // log.error("RecommenderServiceImpl::recommendNextVideo: recommendNextVideoRs is empty");
                    return null;
                }
            }
        } catch (SQLException e) {
            // log.error("RecommenderServiceImpl::recommendNextVideo: SQL error {}", e.getMessage());
            return null;
        }
    }

    @Override
    public List<String> generalRecommendations(int pageSize, int pageNum) {
        if(pageSize <= 0){
            // log.warn("RecommenderServiceImpl::generalRecommendations: pageSize {} <= 0", pageSize);
            return null;
        }

        if(pageNum <= 0){
            // log.warn("RecommenderServiceImpl::generalRecommendations: pageNum {} <= 0", pageNum);
            return null;
        }

        String getRecommendations = """
                SELECT generalRecommendations(?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement getRecommendationsStmt = conn.prepareStatement(getRecommendations)){
            getRecommendationsStmt.setInt(1, pageSize);
            getRecommendationsStmt.setInt(2, pageNum);
            try(ResultSet getRecommendationsRs = getRecommendationsStmt.executeQuery()){
                if(getRecommendationsRs.next()){
                    Array result = getRecommendationsRs.getArray(1);
                    if(result == null){
                        return null;
                    }else{
                        return List.of((String[]) result.getArray());
                    }
                }else{
                    // log.error("RecommenderServiceImpl::generalRecommendations: getRecommendationsRs is empty");
                    return null;
                }
            }
        } catch (SQLException e) {
            // log.error("RecommenderServiceImpl::generalRecommendations: SQL error {}", e.getMessage());
            return null;
        }
    }

    @Override
    public List<String> recommendVideosForUser(AuthInfo auth, int pageSize, int pageNum) {
        if(auth == null){
            // log.warn("RecommenderServiceImpl::recommendVideosForUser: auth is null");
            return null;
        }

        if(pageSize <= 0){
            // log.warn("RecommenderServiceImpl::recommendVideosForUser: pageSize {} <= 0", pageSize);
            return null;
        }

        if(pageNum <= 0){
            // log.warn("RecommenderServiceImpl::recommendVideosForUser: pageNum {} <= 0", pageNum);
            return null;
        }

        String recommendVideosForUser = """
            SELECT recommendVideosForUser(?, ?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement recommendVideosForUserStmt = conn.prepareStatement(recommendVideosForUser)){
            recommendVideosForUserStmt.setLong(1, auth.getMid());
            recommendVideosForUserStmt.setString(2, auth.getPassword());
            recommendVideosForUserStmt.setString(3, auth.getQq());
            recommendVideosForUserStmt.setString(4, auth.getWechat());
            recommendVideosForUserStmt.setInt(5, pageSize);
            recommendVideosForUserStmt.setInt(6, pageNum);
            try(ResultSet recommendVideosForUserRs = recommendVideosForUserStmt.executeQuery()){
                if(recommendVideosForUserRs.next()){
                    Array result = recommendVideosForUserRs.getArray(1);
                    if(result == null){
                        return null;
                    }else{
                        return List.of((String[]) result.getArray());
                    }
                }else{
                    // log.error("RecommenderServiceImpl::recommendVideosForUser: recommendVideosForUserRs is empty");
                    return null;
                }
            }
        } catch (SQLException e) {
            // log.error("RecommenderServiceImpl::recommendVideosForUser: SQL error {}", e.getMessage());
            return null;
        }
    }

    @Override
    public List<Long> recommendFriends(AuthInfo auth, int pageSize, int pageNum) {
        if(auth == null){
            // log.warn("RecommenderServiceImpl::recommendFriends: auth is null");
            return null;
        }

        if(pageSize <= 0){
            // log.warn("RecommenderServiceImpl::recommendFriends: pageSize {} <= 0", pageSize);
            return null;
        }

        if(pageNum <= 0){
            // log.warn("RecommenderServiceImpl::recommendFriends: pageNum {} <= 0", pageNum);
            return null;
        }

        String getRecommendation = """
            select recommendfriends(?, ?, ?, ?, ?, ?)
        """;

        try(Connection conn = dataSource.getConnection();
            PreparedStatement getRecommendationStmt = conn.prepareStatement(getRecommendation)){
            getRecommendationStmt.setLong(1, auth.getMid());
            getRecommendationStmt.setString(2, auth.getPassword());
            getRecommendationStmt.setString(3, auth.getQq());
            getRecommendationStmt.setString(4, auth.getWechat());
            getRecommendationStmt.setInt(5, pageSize);
            getRecommendationStmt.setInt(6, pageNum);
            try(ResultSet getRecommendationRs = getRecommendationStmt.executeQuery()) {
                if (getRecommendationRs.next()) {
                    Array result = getRecommendationRs.getArray(1);
                    if (result == null) {
                        return null;
                    } else {
                        return List.of((Long[]) result.getArray());
                    }
                } else {
                    // log.error("RecommenderServiceImpl::recommendFriends: getRecommendationRs is empty");
                    return null;
                }
            }
        } catch (SQLException e) {
            // log.error("RecommenderServiceImpl::recommendFriends: SQL error {}", e.getMessage());
            return null;
        }
    }
}
