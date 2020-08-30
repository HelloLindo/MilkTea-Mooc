package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.domain.User;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class UserMapper {
    // Mock Database Data in memory
    private static Map<String, User> userMap = new HashMap<>();

    static {
        userMap.put("test", new User(1, "test", "123456"));
        userMap.put("lindo", new User(2, "lindo", "654321"));
        userMap.put("milktea", new User(3, "milktea", "helloworld"));
    }

    // Get and Validate User
    public User login(String username, String pwd) {

        User user = userMap.get(username);
        // Does NOT contain the username
        if (user == null) {
            return null;
        }
        // Validate Password
        if (user.getPwd().equals(pwd)) {
            return user;
        }

        return null;
    }
}
