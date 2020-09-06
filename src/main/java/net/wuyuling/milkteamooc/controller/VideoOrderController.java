package net.wuyuling.milkteamooc.controller;

import net.wuyuling.milkteamooc.model.entity.VideoOrder;
import net.wuyuling.milkteamooc.model.request.VideoOrderRequest;
import net.wuyuling.milkteamooc.service.VideoOrderService;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestControllerAdvice
@RequestMapping("/api/v1/pri/order")
public class VideoOrderController {

    @Autowired
    private VideoOrderService videoOrderService;


    /**
     * Save the User's purchase record
     *
     * @param videoOrderRequest Format the Request like VideoOrder
     * @param request           the passed Request in the Login Interceptor
     * @return Result of saving
     */
    @PostMapping("save")
    public JsonData saveOrder(@RequestBody VideoOrderRequest videoOrderRequest, HttpServletRequest request) {

        Integer userId = (Integer) request.getAttribute("user_id");
        // Try to save the order record
        int rows = videoOrderService.save(userId, videoOrderRequest.getVideoId());

        return rows == 0 ? JsonData.buildError("Oops! Purchase Failed") : JsonData.buildSuccess();
    }

    /**
     * List All Order Records of a specific User
     *
     * @param request the passed Request in the Login Interceptor
     * @return the List of Order Records
     */
    @GetMapping("list")
    public JsonData listOrder(HttpServletRequest request) {
        Integer userId = (Integer) request.getAttribute("user_id");
        List<VideoOrder> videoOrderList = videoOrderService.listOrderByUserId(userId);
        return JsonData.buildSuccess(videoOrderList);
    }
}
