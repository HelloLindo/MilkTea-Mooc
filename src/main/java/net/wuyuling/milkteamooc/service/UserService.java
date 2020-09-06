package net.wuyuling.milkteamooc.service;

import net.wuyuling.milkteamooc.model.entity.User;

import java.util.Map;

public interface UserService {
    /**
     * Save New User
     *
     * @param userInfo the map of user's information
     * @return Saving Result
     */
    int save(Map<String, String> userInfo);

    /**
     * Validate the User's login request
     *
     * @param phone the Phone Number
     * @param pwd   the Password enter by user
     * @return Token if there is a valid user in database, otherwise null
     */
    String findByPhoneAndPwd(String phone, String pwd);

    /**
     * Retrieve User Info by User ID
     *
     * @param userId the User ID
     * @return User Info
     */
    User findByUserId(Integer userId);
}
