package net.wuyuling.milkteamooc.controller;

import net.wuyuling.milkteamooc.service.UserService;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * Controller of user service
 */

@RestController
@RequestMapping("/api/v1/pri/user")
public class UserController {

    @Autowired
    public UserService userService;

    /**
     * Sign up a new user by Unique Phone Number
     *
     * @param userInfo the User's Information
     * @return the result
     */
    @PostMapping("register")
    public JsonData register(@RequestBody Map<String, String> userInfo) {

        int rows = userService.save(userInfo);

        return rows == 1 ? JsonData.buildSuccess() : JsonData.buildError("Sign up failed, please retry");

    }
}
