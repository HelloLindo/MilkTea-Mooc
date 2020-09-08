package net.wuyuling.milkteamooc.controller;

import net.wuyuling.milkteamooc.model.entity.VideoOrder;
import net.wuyuling.milkteamooc.model.request.VideoOrderRequest;
import net.wuyuling.milkteamooc.service.VideoOrderService;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Controller of video order service
 */

@RestControllerAdvice
@RequestMapping("/api/v1/pri/order")
public class VideoOrderController {

    @Autowired
    private VideoOrderService videoOrderService;


    /**
     * @api {post} api/v1/pri/order/save Save the User's purchase record
     * @apiName saveOrder
     * @apiGroup VideoOrder
     * @apiParam {header} token The Login Token.
     * @apiParam {json} videoOrderRequest The Video Order Info.
     * @apiParamExample {json} Request Example:
     * {
     * "video_id" : 34
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
     * "msg": "Oops! Purchase Failed"
     * }
     */
    @PostMapping("save")
    public JsonData saveOrder(@RequestBody VideoOrderRequest videoOrderRequest, HttpServletRequest request) {

        Integer userId = (Integer) request.getAttribute("user_id");
        // Try to save the order record
        int rows = videoOrderService.save(userId, videoOrderRequest.getVideoId());

        return rows == 0 ? JsonData.buildError("Oops! Purchase Failed") : JsonData.buildSuccess();
    }

    /**
     * @api {get} api/v1/pri/order/list List All Order Records of a specific User
     * @apiName listOrder
     * @apiGroup VideoOrder
     * @apiParam {header} token The Login Token.
     * @apiSuccessExample {json} Success-Response:
     * {
     * "code": 0,
     * "data": [
     * {
     * "id": 14,
     * "outTradeNo": "1765cc94-caf6-4eb3-9127-26310c32ae35",
     * "state": 1,
     * "createTime": "2020-09-07 22:08:19",
     * "totalFee": 5980,
     * "videoId": 42,
     * "videoTitle": "videoTitle",
     * "videoImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_frontend/element/elementui.png",
     * "userId": 11
     * }
     * ],
     * "msg": null
     * }
     */
    @GetMapping("list")
    public JsonData listOrder(HttpServletRequest request) {
        Integer userId = (Integer) request.getAttribute("user_id");
        List<VideoOrder> videoOrderList = videoOrderService.listOrderByUserId(userId);
        return JsonData.buildSuccess(videoOrderList);
    }
}
