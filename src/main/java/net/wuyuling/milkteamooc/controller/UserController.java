package net.wuyuling.milkteamooc.controller;

import net.wuyuling.milkteamooc.model.entity.User;
import net.wuyuling.milkteamooc.model.request.LoginRequest;
import net.wuyuling.milkteamooc.service.UserService;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
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

    /**
     * Login Interface
     *
     * @param loginRequest Login Request Body
     * @return Login Status
     */
    @PostMapping("login")
    public JsonData login(@RequestBody LoginRequest loginRequest) {

        String token = userService.findByPhoneAndPwd(loginRequest.getPhone(), loginRequest.getPwd());

        return token == null ? JsonData.buildError("Login Failed, Wrong User Information") : JsonData.buildSuccess(token);

    }

    /**
     * Retrieve User Info by User ID
     *
     * @param request the passed Request in the Login Interceptor
     * @return Result of Retrieve
     */
    @GetMapping("find_by_token")
    public JsonData findUserInfoByToken(HttpServletRequest request) {

        Integer userId = (Integer) request.getAttribute("user_id");

        if (userId == null) {
            return JsonData.buildError("Retrieve User Failed");
        }

        User user = userService.findByUserId(userId);

        return JsonData.buildSuccess(user);

    }

}
