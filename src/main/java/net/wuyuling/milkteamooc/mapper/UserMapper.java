package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.model.entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    int save(User user);

    /**
     * Find a user by phone number
     *
     * @param phone a specified phone number
     * @return the corresponding user or NULL
     * @remark Unused method
     */
    User findByPhone(@Param("phone") String phone);

    /**
     * Find the User by phone and password
     *
     * @param phone Phone Number
     * @param pwd   Password enter by a user
     * @return the User in database
     */
    User findByPhoneAndPwd(@Param("phone") String phone, @Param("pwd") String pwd);

    /**
     * Find User Info by User ID
     *
     * @param userId the User ID
     * @return User Info
     */
    User findByUserId(@Param("user_id") Integer userId);
}
