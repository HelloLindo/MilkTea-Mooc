package net.wuyuling.milkteamooc.controller;


import net.wuyuling.milkteamooc.model.entity.Video;
import net.wuyuling.milkteamooc.model.entity.VideoBanner;
import net.wuyuling.milkteamooc.service.VideoService;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Controller of video service
 */

@RestController
@RequestMapping("/api/v1/pub/video")
public class VideoController {

    @Autowired
    private VideoService videoService;

    /**
     * @api {get} /api/v1/pub/video/list List all the Videos
     * @apiName videoList
     * @apiGroup Video
     * @apiParam null null
     * @apiSuccessExample {json} Success-Response:
     * {
     * "code": 0,
     * "data": [
     * {
     * "id": 30,
     * "title": "title",
     * "summary": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/jvm_detail.jpeg",
     * "coverImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/jvm.jpeg",
     * "price": 3980,
     * "createTime": "2019-06-24 14:14:00",
     * "point": 9.1,
     * "chapterList": null
     * },
     * {
     * "id": 31,
     * "title": "title",
     * "summary": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/shiro_detail.jpeg",
     * "coverImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/2019_backend/shiro.jpeg",
     * "price": 2980,
     * "createTime": "2019-06-24 14:14:00",
     * "point": 8.9,
     * "chapterList": null
     * }
     * ],
     * "msg": null
     * }
     */
    @GetMapping("list")
    public JsonData list() {
        List<Video> list = videoService.listVideo();

//        // Serialize the Object
//        ObjectMapper objectMapper = new ObjectMapper();
//        String jsonStr = objectMapper.writeValueAsString(list);
//        System.out.println(jsonStr);
//
//        // Deserialize the String
//        List jsonObjectList = objectMapper.readValue(jsonStr, List.class);
//        System.out.println(jsonObjectList);

        return JsonData.buildSuccess(list);
    }

    /**
     * Used for saving the Chapters of a video (Unused)
     *
     * @param video Video Info and the Chapter Info
     * @return the input video object
     * @example To test this interface, send JSON below on postman
     * "{"id":1,"title":"Micro service SpringCLoud","summary":null,"price":0,"coverImg":null,"createTime":null,"chapterList":[{"id":1,"videoId":1,"title":"Chapter 1: AAAAA"},{"id":2,"videoId":2,"title":"Chapter 2: BBBBB"}]}"
     */
    @PostMapping("save_video_chapter")
    public JsonData saveVideoChapter(@RequestBody Video video) {
        // Save the Chapter
        //System.out.println(video.toString());

        return JsonData.buildSuccess(video);
    }

    /**
     * @api {get} api/v1/pub/video/list_banner List the Carousel List
     * @apiName indexBanner
     * @apiGroup Video
     * @apiParam null null
     * @apiSuccessExample {json} Success-Response:
     * {
     * "code": 0,
     * "data": [
     * {
     * "id": 1,
     * "url": "https://m.xdclass.net/#/coursedetail?video_id=49",
     * "img": "https://file.xdclass.net/video/2020/%E9%9D%A2%E8%AF%95%E4%B8%93%E9%A2%98/%E9%9D%A2%E8%AF%95%E4%B8%93%E9%A2%98%E7%AC%AC%E4%B8%80%E5%AD%A3banner.png",
     * "createTime": null,
     * "weight": 1
     * },
     * {
     * "id": 2,
     * "url": "https://m.xdclass.net/#/member",
     * "img": "https://file.xdclass.net/video/%E5%AE%98%E7%BD%91%E8%BD%AE%E6%92%AD%E5%9B%BE/%E8%BD%AE%E6%92%AD%E5%9B%BE-VIP.png",
     * "createTime": null,
     * "weight": 2
     * }
     * ],
     * "msg": null
     * }
     */
    @GetMapping("list_banner")
    public JsonData indexBanner() {

        List<VideoBanner> bannerList = videoService.listBanner();

        return JsonData.buildSuccess(bannerList);

    }

    /**
     * @api {get} api/v1/pub/video/find_detail_by_id?video_id=id Query video details, including chapter and episode info
     * @apiName findDetailById
     * @apiGroup Video
     * @apiParam {Number} videoId The specified Video ID (required, send as a parameter).
     * @apiSuccessExample {json} Success-Response:
     * {
     * "code": 0,
     * "data": {
     * "id": 44,
     * "title": "title",
     * "summary": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/jdk8/jdk8_detail.png",
     * "coverImg": "https://xd-video-pc-img.oss-cn-beijing.aliyuncs.com/xdclass_pro/video/jdk8/jdk8.png",
     * "price": 3980,
     * "createTime": "2019-10-10 14:14:00",
     * "point": 9.3,
     * "chapterList": [
     * {
     * "id": 510,
     * "videoId": null,
     * "title": "chapterTitle",
     * "ordered": 1,
     * "createTime": null,
     * "episodeList": [
     * {
     * "id": 12101,
     * "title": "chapterTitle",
     * "num": 1,
     * "ordered": 1,
     * "playUrl": "xdclass.net/aaa.mp4",
     * "chapterId": null,
     * "free": 0,
     * "videoId": null,
     * "createTime": null
     * },
     * {
     * "id": 12102,
     * "title": "chapterTitle",
     * "num": 2,
     * "ordered": 2,
     * "playUrl": "xdclass.net/aaa.mp4",
     * "chapterId": null,
     * "free": 0,
     * "videoId": null,
     * "createTime": null
     * }
     * ]
     * }
     * ]
     * },
     * "msg": null
     * }
     */
    @GetMapping("find_detail_by_id")
    public JsonData findDetailById(@RequestParam(value = "video_id") int videoId) {

        Video video = videoService.findDetailById(videoId);

        return JsonData.buildSuccess(video);

    }
}
