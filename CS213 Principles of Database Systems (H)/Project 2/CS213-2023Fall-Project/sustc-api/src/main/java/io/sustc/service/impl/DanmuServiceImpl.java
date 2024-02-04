package io.sustc.service.impl;

import io.sustc.dto.AuthInfo;
import io.sustc.service.DanmuService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

@Service
@Slf4j
public class DanmuServiceImpl implements DanmuService {

    @Autowired
    private DataSource dataSource;

    @Override
    public long sendDanmu(AuthInfo auth, String bv, String content, float time) {
        if(auth == null){
            // log.warn("DanmuServiceImpl::sendDanmu: invalid auth info: null");
            return -1;
        }

        if(content == null || content.isEmpty()){
            // log.warn("DanmuServiceImpl::sendDanmu: invalid content: null or empty");
            return -1;
        }

        if(bv == null || bv.isEmpty()){
            // log.warn("DanmuServiceImpl::sendDanmu: invalid bv: null or empty");
            return -1;
        }

        if(time < 0){
            // log.warn("DanmuServiceImpl::sendDanmu: invalid time: {}", time);
            return -1;
        }

        String sendDanmu = """
                SELECT senddanmu(?, ?, ?, ?, ?, ?, ?)
        """;

        try (Connection conn = dataSource.getConnection();
                PreparedStatement sendDanmuStmt = conn.prepareStatement(sendDanmu)
        ) {
            sendDanmuStmt.setLong(1, auth.getMid());
            sendDanmuStmt.setString(2, auth.getPassword());
            sendDanmuStmt.setString(3, auth.getQq());
            sendDanmuStmt.setString(4, auth.getWechat());
            sendDanmuStmt.setString(5, bv);
            sendDanmuStmt.setString(6, content);
            sendDanmuStmt.setFloat(7, time);
            try(ResultSet sendDanmuRs = sendDanmuStmt.executeQuery()){
                if(sendDanmuRs.next()){
                    return sendDanmuRs.getLong(1);
                }else{
                    // log.error("DanmuServiceImpl::sendDanmu: failed to get result");
                    return -1;
                }
            }
        } catch (SQLException e) {
            // log.error("DanmuServiceImpl::sendDanmu: SQL error {}", e.getMessage());
            return -1;
        }

    }

    @Override
    public List<Long> displayDanmu(String bv, float timeStart, float timeEnd, boolean filter) {

        if(bv == null || bv.isEmpty()){
            // log.warn("DanmuServiceImpl::displayDanmu: invalid bv: null or empty");
            return null;
        }

        if(timeStart >= timeEnd || timeStart < 0){
            // log.warn("DanmuServiceImpl::displayDanmu: invalid time range: {} - {}", timeStart, timeEnd);
            return null;
        }

        String displayDanmu = """
            SELECT displaydanmu(?, ?, ?, ?)
        """;

        try (Connection conn = dataSource.getConnection();
                PreparedStatement displayDanmuStmt = conn.prepareStatement(displayDanmu)
        ) {
                displayDanmuStmt.setString(1, bv);
                displayDanmuStmt.setFloat(2, timeStart);
                displayDanmuStmt.setFloat(3, timeEnd);
                displayDanmuStmt.setBoolean(4, filter);
                try(ResultSet displayDanmuRs = displayDanmuStmt.executeQuery()){
                    if(displayDanmuRs.next()){
                        Array danmuArray = displayDanmuRs.getArray(1);
                        if(danmuArray == null){
                            return null;
                        }else{
                            return List.of((Long[]) danmuArray.getArray());
                        }
                    }else{
                        // log.error("DanmuServiceImpl::displayDanmu: failed to get result");
                        return null;
                    }
                }
        } catch (SQLException e) {
            // log.error("DanmuServiceImpl::displayDanmu: SQL error {}", e.getMessage());
            return null;
        }
    }

    @Override
    public boolean likeDanmu(AuthInfo auth, long id) {
        if(auth == null){
            // log.warn("DanmuServiceImpl::likeDanmu: invalid auth info: null");
            return false;
        }

        if(id <= 0){
            // log.warn("DanmuServiceImpl::likeDanmu: invalid id: {}", id);
            return false;
        }

        String likeDanmu = """
                SELECT likedanmu(?, ?, ?, ?, ?)
        """;

        try (Connection conn = dataSource.getConnection();
                PreparedStatement likeDanmuStmt = conn.prepareStatement(likeDanmu)
        ) {
            likeDanmuStmt.setLong(1, auth.getMid());
            likeDanmuStmt.setString(2, auth.getPassword());
            likeDanmuStmt.setString(3, auth.getQq());
            likeDanmuStmt.setString(4, auth.getWechat());
            likeDanmuStmt.setLong(5, id);
            try(ResultSet likeDanmuRs = likeDanmuStmt.executeQuery()){
                if(likeDanmuRs.next()){
                    return likeDanmuRs.getBoolean(1);
                }else{
                    // log.error("DanmuServiceImpl::likeDanmu: failed to get result");
                    return false;
                }
            }
        } catch (SQLException e) {
            // log.error("DanmuServiceImpl::likeDanmu: SQL error {}", e.getMessage());
            return false;
        }

    }
}
