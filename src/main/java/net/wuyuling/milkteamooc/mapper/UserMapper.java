package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.domain.User;
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
}
