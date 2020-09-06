package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.model.entity.VideoOrder;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VideoOrderMapper {
    /**
     * Validate whether the User has bought this Video
     *
     * @param userId  User ID
     * @param videoId Video ID
     * @param state   Purchase State
     * @return Order Entity
     */
    VideoOrder findByUserIdAndVideoIdAndState(@Param("user_id") int userId, @Param("video_id") int videoId, @Param("state") int state);


    /**
     * Save the User's purchase record
     *
     * @param videoOrder Order Entity
     * @return Result of Saving
     */
    int saveOrder(VideoOrder videoOrder);

    /**
     * List All Order Records of a User
     *
     * @param userId the User ID
     * @return Video Order List
     */
    List<VideoOrder> listOrderByUserId(@Param("user_id") Integer userId);
}
