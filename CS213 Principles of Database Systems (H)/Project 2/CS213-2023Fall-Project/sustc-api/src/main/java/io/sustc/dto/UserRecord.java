package io.sustc.dto;

import java.io.Serializable;

import lombok.Data;

/**
 * The user record used for data import
 * @implNote You may implement your own {@link java.lang.Object#toString()} since the default one in {@link lombok.Data} prints all array values.
 */
@Data
public class UserRecord implements Serializable {

    /**
     * The user's unique ID
     */
    private long mid;

    /**
     * The user's name
     */
    private String name;

    /**
     * The user's sex
     */
    private String sex;

    /**
     * The user's birthday, can be empty
     */
    private String birthday;

    /**
     * The user's level
     */
    private short level;

    /**
     * The user's current number of coins
     */
    private int coin;

    /**
     * The user's personal sign, can be null or empty
     */
    private String sign;

    /**
     * The user's identity
     */
    private Identity identity;

    /**
     * The user's password
     */
    private String password;

    /**
     * The user's unique qq, may be null or empty (not unique when null or empty)
     */
    private String qq;

    /**
     * The user's unique wechat, may be null or empty (not unique when null or empty)
     */
    private String wechat;

    /**
     * The users' {@code mid}s who are followed by this user
     */
    private long[] following;

    public enum Identity {
        USER,
        SUPERUSER,
    }

    public static String convertSex2Char(String sex){
        if(sex == "男" || sex == "男性" || sex == "♂"){
            return "M";
        }else if(sex == "女" || sex == "女性" || sex == "♀"){
            return "F";
        }else{
            return "U";
        }
    }

    public static String convertIdentity2Char(Identity identity){
        if(identity == Identity.USER){
            return "U";
        }else{
            return "S";
        }
    }
}
