package io.sustc.service.impl;

import io.sustc.dto.AuthInfo;
import io.sustc.dto.RegisterUserReq;
import io.sustc.dto.UserInfoResp;
import io.sustc.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

    @Autowired
    private DataSource dataSource;

    @Override
    public long register(RegisterUserReq req) {
        if(req == null){
            // log.warn("UserService::register: invalid register request: null");
            return -1;
        }

        // check password, name and sex
        if(req.getPassword() == null || req.getPassword().isEmpty() ||
                req.getName() == null || req.getName().isEmpty() ||
                req.getSex() == null){
            // log.warn("UserService::register: invalid register request {}", req);
            return -1;
        }

        // check birthday
        if(!(req.getBirthday() == null || req.getBirthday().isEmpty())){
            Pattern pattern = Pattern.compile("(^\\d{1,2})月(\\d{1,2})日$");
            Matcher matcher = pattern.matcher(req.getBirthday());
            if(matcher.find()){
                int month = Integer.parseInt(matcher.group(1));
                int day = Integer.parseInt(matcher.group(2));
                boolean valid;
                switch (month) {
                    case 1, 3, 5, 7, 8, 10, 12 -> valid = day >= 1 && day <= 31;
                    case 4, 6, 9, 11 -> valid = day >= 1 && day <= 30;
                    case 2 -> valid = day >= 1 && day <= 29;
                    default -> valid = false;
                }
                if(!valid){
                    // log.warn("UserService::register: invalid birthday {}", req.getBirthday());
                    return -1;
                }
            }else{
                // log.warn("UserService::register: invalid birthday {}", req.getBirthday());
                return -1;
            }
        }

        String registerUser = """
                select register(?, ?, ?, ?, ?, ?, ?)
        """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement registerUserStmt = conn.prepareStatement(registerUser)
        ){
            registerUserStmt.setString(1, req.getPassword());
            registerUserStmt.setString(2, req.getQq());
            registerUserStmt.setString(3, req.getWechat());
            registerUserStmt.setString(4, req.getName());
            registerUserStmt.setString(5, RegisterUserReq.convertGendertoString(req.getSex()));
            registerUserStmt.setString(6, req.getBirthday() == null || req.getBirthday().isEmpty() ? null : req.getBirthday());
            registerUserStmt.setString(7, req.getSign());
            try(ResultSet registerUserRs = registerUserStmt.executeQuery()){
                if(registerUserRs.next()){
                    return registerUserRs.getLong(1);
                }else{
                    // log.warn("UserService::register: invalid register request {}", req);
                    return -1;
                }
            }
        } catch (SQLException e){
            // log.warn("UserService::register: SQL error: {}", e.getMessage());
            return -1;
        }
    }

    @Override
    public boolean deleteAccount(AuthInfo auth, long midToDelete) {
        if(auth == null){
            // log.warn("UserService::deleteAccount: invalid delete request: null");
            return false;
        }
        if(midToDelete <= 0){
            // log.warn("UserService::deleteAccount: invalid midToDelete {}", midToDelete);
            return false;
        }

        String deleteUser = """
                select deleteAccount(?, ?, ?, ?, ?)
        """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement deleteUserStmt = conn.prepareStatement(deleteUser)
        ){
            deleteUserStmt.setLong(1, auth.getMid());
            deleteUserStmt.setString(2, auth.getPassword());
            deleteUserStmt.setString(3, auth.getQq());
            deleteUserStmt.setString(4, auth.getWechat());
            deleteUserStmt.setLong(5, midToDelete);
            try(ResultSet deleteUserRs = deleteUserStmt.executeQuery()){
                if(deleteUserRs.next()){
                    return deleteUserRs.getBoolean(1);
                }else{
                    // log.warn("UserService::deleteAccount: invalid delete request {}", auth);
                    return false;
                }
            }
        } catch (SQLException e){
            // log.warn("UserService::deleteAccount: SQL error: {}", e.getMessage());
            return false;
        }
    }

    @Override
    public boolean follow(AuthInfo auth, long followeeMid) {
        if(auth == null){
            // log.warn("UserService::follow: invalid follow request: null");
            return false;
        }

        if(followeeMid <= 0 || followeeMid == auth.getMid()){
            // log.warn("UserService::follow: invalid followee mid {}", followeeMid);
            return false;
        }

        String findFollow = """
                select follow(?, ?, ?, ?, ?)
        """;

        try (Connection conn = dataSource.getConnection();
             PreparedStatement followStmt = conn.prepareStatement(findFollow)
        ){
            followStmt.setLong(1, auth.getMid());
            followStmt.setString(2, auth.getPassword());
            followStmt.setString(3, auth.getQq());
            followStmt.setString(4, auth.getWechat());
            followStmt.setLong(5, followeeMid);
            try(ResultSet followRs = followStmt.executeQuery()){
                if(followRs.next()){
                    return followRs.getBoolean(1);
                }else{
                    // log.warn("UserService::follow: invalid follow request {}", auth);
                    return false;
                }
            }
        } catch (SQLException e){
            // log.warn("UserService::follow: SQL error: {}", e.getMessage());
            return false;
        }
    }

    @Override
    public UserInfoResp getUserInfo(long mid) {
        String getUserSql = """
                select coins, followings, followers, watchedvideos, likedvideos, collectedvideos, postedvideos from getuserinfo(?)
        """;
        try (Connection conn = dataSource.getConnection();
             PreparedStatement getUserStmt = conn.prepareStatement(getUserSql)
        ) {
            getUserStmt.setLong(1, mid);
            try (ResultSet getCoinsRs = getUserStmt.executeQuery()) {
                if (getCoinsRs.next()) {
                    return new UserInfoResp(
                            mid,
                            getCoinsRs.getInt(1),
                            Arrays.stream((Long[]) getCoinsRs.getArray(2).getArray()).mapToLong(Long::longValue).toArray(),
                            Arrays.stream((Long[]) getCoinsRs.getArray(3).getArray()).mapToLong(Long::longValue).toArray(),
                            (String[]) getCoinsRs.getArray(4).getArray(),
                            (String[]) getCoinsRs.getArray(5).getArray(),
                            (String[]) getCoinsRs.getArray(6).getArray(),
                            (String[]) getCoinsRs.getArray(7).getArray()
                    );
                } else {
                    // log.warn("UserService::getUserInfo: invalid mid {}", mid);
                    return null;
                }
            }
        } catch (SQLException e) {
            // log.warn("UserService::getUserInfo: SQL error: {}", e.getMessage());
            return null;
        }
    }
}
