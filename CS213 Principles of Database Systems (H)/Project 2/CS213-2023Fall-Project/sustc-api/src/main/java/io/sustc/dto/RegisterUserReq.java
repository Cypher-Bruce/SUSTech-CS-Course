package io.sustc.dto;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * The user registration request information class
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RegisterUserReq implements Serializable {

    private String password;

    private String qq;

    private String wechat;

    private String name;

    private Gender sex;

    private String birthday;

    private String sign;

    public enum Gender {
        MALE,
        FEMALE,
        UNKNOWN,
    }

    public static String convertGendertoString(Gender sex){
        switch (sex){
            case MALE -> {
                return "M";
            }
            case FEMALE -> {
                return "F";
            }
            case UNKNOWN -> {
                return "U";
            }
        }
        return null;
    }
}
