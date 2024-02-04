package io.sustc.command;

import io.sustc.dto.AuthInfo;
import io.sustc.dto.PostVideoReq;
import io.sustc.service.VideoService;
import lombok.val;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.shell.standard.ShellComponent;
import org.springframework.shell.standard.ShellMethod;
import org.springframework.shell.standard.ShellOption;

import java.sql.Timestamp;
import java.util.List;
import java.util.Set;

@ShellComponent
@ConditionalOnBean(VideoService.class)
public class VideoCommand {

    @Autowired
    private VideoService videoService;

    @ShellMethod(key = "video post")
    public String postVideo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String title,
            @ShellOption(defaultValue = ShellOption.NULL) String description,
            Long duration,
            Timestamp publicTime
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();
        val req = PostVideoReq.builder()
                .title(title)
                .description(description)
                .duration(duration)
                .publicTime(publicTime)
                .build();

        return videoService.postVideo(auth, req);
    }

    @ShellMethod(key = "video delete")
    public boolean deleteVideo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String bv
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        return videoService.deleteVideo(auth, bv);
    }

    @ShellMethod(key = "video update")
    public boolean updateVideoInfo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String bv,
            String title,
            @ShellOption(defaultValue = ShellOption.NULL) String description,
            Long duration,
            Timestamp publicTime
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();
        val req = PostVideoReq.builder()
                .title(title)
                .description(description)
                .duration(duration)
                .publicTime(publicTime)
                .build();

        return videoService.updateVideoInfo(auth, bv, req);
    }

    @ShellMethod(key = "video search")
    public List<String> searchVideo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String keywords,
            @ShellOption(defaultValue = "1") Integer pageSize,
            @ShellOption(defaultValue = "10") Integer pageNum
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        return videoService.searchVideo(auth, keywords, pageSize, pageNum);
    }

    @ShellMethod(key = "video viewrate")
    public double getAverageViewRate(String bv) {
        return videoService.getAverageViewRate(bv);
    }

    @ShellMethod(key = "video hotspot")
    public Set<Integer> getHotspot(String bv) {
        return videoService.getHotspot(bv);
    }

    @ShellMethod(key = "video review")
    public boolean reviewVideo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String bv
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        return videoService.reviewVideo(auth, bv);
    }

    @ShellMethod(key = "video coin")
    public boolean coinVideo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String bv
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        return videoService.coinVideo(auth, bv);
    }

    @ShellMethod(key = "video like")
    public boolean likeVideo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String bv
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        return videoService.likeVideo(auth, bv);
    }

    @ShellMethod(key = "video collect")
    public boolean collectVideo(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            String bv
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        return videoService.collectVideo(auth, bv);
    }
}
