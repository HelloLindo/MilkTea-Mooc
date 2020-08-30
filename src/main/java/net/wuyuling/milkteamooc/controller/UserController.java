package net.wuyuling.milkteamooc.controller;

import net.wuyuling.milkteamooc.domain.User;
import net.wuyuling.milkteamooc.service.UserService;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controller of user service
 */

@RestController
@RequestMapping("/api/v1/pub/user")
public class UserController {

    @Autowired
    public UserService userService;

    @PostMapping("login")
    public JsonData login(@RequestBody User user) {
        // Validate User's account & password
        String token = userService.login(user.getUsername(), user.getPwd());
        
        return token != null ? JsonData.buildSuccess(token) : JsonData.buildError("Wrong Account or Password");
    }
}
