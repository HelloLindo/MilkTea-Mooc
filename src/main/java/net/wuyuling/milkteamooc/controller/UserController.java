package net.wuyuling.milkteamooc.controller;

import net.wuyuling.milkteamooc.model.request.LoginRequest;
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
     * @api {post} api/v1/pri/user/register Sign up a new user by Unique Phone Number
     * @apiName register
     * @apiGroup User
     * @apiParam {json} userInfo the User's Information
     * @apiParamExample {json} Request Example:
     * {
     * "phone": "123456",
     * "name": "testMilkTea",
     * "pwd": "123456"
     * }
     * @apiSuccessExample {json} Success-Response:
     * {
     * "code": 0,
     * "data": null,
     * "msg": null
     * }
     * @apiErrorExample {json} Error-Response:
     * {
     * "code": -1,
     * "data": null,
     * "msg": "The phone has already registered"
     * }
     */
    @PostMapping("register")
    public JsonData register(@RequestBody Map<String, String> userInfo) {

        int rows = userService.save(userInfo);

        return rows == 1 ? JsonData.buildSuccess() : JsonData.buildError("Sign up failed, please retry");

    }

    /**
     * @api {post} api/v1/pri/user/login User Login Interface
     * @apiName login
     * @apiGroup User
     * @apiParam {json} userInfo Login Phone and Password.
     * @apiParamExample {json} Request Example:
     * {
     * "phone": "123456",
     * "pwd": "123456"
     * }
     * @apiSuccessExample {json} Success-Response:
     * {
     * "code": 0,
     * "data": "Token String",
     * "msg": null
     * }
     * @apiErrorExample {json} Error-Response:
     * {
     * "code": -1,
     * "data": null,
     * "msg": "Login Failed, Wrong User Information"
     * }
     */
    @PostMapping("login")
    public JsonData login(@RequestBody LoginRequest loginRequest) {

        String token = userService.findByPhoneAndPwd(loginRequest.getPhone(), loginRequest.getPwd());

        return token == null ? JsonData.buildError("Login Failed, Wrong User Information") : JsonData.buildSuccess(token);

    }

}
