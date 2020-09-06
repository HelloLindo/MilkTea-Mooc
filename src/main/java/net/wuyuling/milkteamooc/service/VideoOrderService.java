package net.wuyuling.milkteamooc.service;

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
}
