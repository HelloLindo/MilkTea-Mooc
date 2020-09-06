package net.wuyuling.milkteamooc.service;

import net.wuyuling.milkteamooc.model.entity.VideoOrder;

import java.util.List;

public interface VideoOrderService {
    /**
     * Save the Order Record
     * Future Version：Coupon Deduction, Risk User Check, More Order Info Generation, Payment Info Generation
     *
     * @param userId  User ID
     * @param videoId Video ID
     * @return Result of saving
     */
    int save(int userId, int videoId);

    /**
     * List All Order Records of a User
     *
     * @param userId the User ID
     * @return the Order List
     */
    List<VideoOrder> listOrderByUserId(Integer userId);
}
