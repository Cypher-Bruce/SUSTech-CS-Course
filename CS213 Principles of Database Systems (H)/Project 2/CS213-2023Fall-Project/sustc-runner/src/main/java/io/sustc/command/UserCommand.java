package io.sustc.command;

import io.sustc.dto.AuthInfo;
import io.sustc.dto.RegisterUserReq;
import io.sustc.dto.UserInfoResp;
import io.sustc.service.UserService;
import lombok.val;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.shell.standard.ShellComponent;
import org.springframework.shell.standard.ShellMethod;
import org.springframework.shell.standard.ShellOption;

@ShellComponent
@ConditionalOnBean(UserService.class)
public class UserCommand {

    @Autowired
    private UserService userService;

    @ShellMethod(key = "user register")
    public long register(
            String password,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            @ShellOption(defaultValue = ShellOption.NULL) String name,
            @ShellOption(defaultValue = "UNKNOWN") RegisterUserReq.Gender sex,
            @ShellOption(defaultValue = ShellOption.NULL) String birthday,
            @ShellOption(defaultValue = ShellOption.NULL) String sign
    ) {
        val req = RegisterUserReq.builder()
                .password(password)
                .qq(qq)
                .wechat(wechat)
                .name(name)
                .sex(sex)
                .birthday(birthday)
                .sign(sign)
                .build();

        return userService.register(req);
    }

    @ShellMethod(key = "user delete")
    public void deleteAccount(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            @ShellOption(defaultValue = ShellOption.NULL) Long toDeleteMid
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        userService.deleteAccount(auth, toDeleteMid);
    }

    @ShellMethod(key = "user follow")
    public boolean follow(
            @ShellOption(defaultValue = ShellOption.NULL) Long mid,
            @ShellOption(defaultValue = ShellOption.NULL) String pwd,
            @ShellOption(defaultValue = ShellOption.NULL) String qq,
            @ShellOption(defaultValue = ShellOption.NULL) String wechat,
            Long followeeMid
    ) {
        val auth = AuthInfo.builder()
                .mid(mid)
                .password(pwd)
                .qq(qq)
                .wechat(wechat)
                .build();

        return userService.follow(auth, followeeMid);
    }

    @ShellMethod(key = "user info")
    public UserInfoResp getUserInfo(Long mid) {
        return userService.getUserInfo(mid);
    }
}
