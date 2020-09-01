package net.wuyuling.milkteamooc.service.impl;

import net.wuyuling.milkteamooc.domain.User;
import net.wuyuling.milkteamooc.mapper.UserMapper;
import net.wuyuling.milkteamooc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {
    public static Map<String, User> sessionMap = new HashMap<>();

    @Autowired
    private UserMapper userMapper;

    @Override
    public String login(String username, String pwd) {

        User user = userMapper.login(username, pwd);

        if (user == null) {
            return null;
        } else {
            // DEBUG: Only for offline test
            // Return random Session-like ID
            String token = UUID.randomUUID().toString();
            sessionMap.put(token, user);
            return token;
        }
    }

    @Override
    public List<User> listUser() {
        return userMapper.listUser();
    }
}
