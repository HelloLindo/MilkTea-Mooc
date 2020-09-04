package net.wuyuling.milkteamooc.service;

import java.util.Map;

public interface UserService {
    /**
     * Save New User
     *
     * @param userInfo the map of user's information
     * @return Saving Result
     */
    int save(Map<String, String> userInfo);
}
