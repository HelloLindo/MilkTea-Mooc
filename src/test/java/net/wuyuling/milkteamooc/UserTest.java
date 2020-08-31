package net.wuyuling.milkteamooc;

import junit.framework.TestCase;
import net.wuyuling.milkteamooc.controller.UserController;
import net.wuyuling.milkteamooc.domain.User;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class) // Test with JUnit
@SpringBootTest(classes = {MilkteamoocApplication.class}) // Launch the springboot project
public class UserTest {

    @Autowired
    private UserController userController;

    @Test
    public void loginTest() {

        User user = new User();
        user.setUsername("test");
        user.setPwd("123456");

        JsonData jsonData = userController.login(user);

        System.out.println(jsonData.toString());

        TestCase.assertEquals(0, jsonData.getCode());

    }
}
