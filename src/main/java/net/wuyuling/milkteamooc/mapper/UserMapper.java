package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.domain.User;

import java.util.HashMap;
import java.util.Map;

public class UserMapper {

    private static Map<Integer, User> userMap = new HashMap<>();

    static {
        userMap.put(1,new User(1,"jack","123"));
        userMap.put(2,new User(2,"xdclass-lw","123456"));
        userMap.put(3,new User(3,"tom","123456789"));
    }
}
