package net.wuyuling.milkteamooc.service;

import net.wuyuling.milkteamooc.domain.User;

import java.util.List;

public interface UserService {
    String login(String username, String pwd);

    List<User> listUser();
}
