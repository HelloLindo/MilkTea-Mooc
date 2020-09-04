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
     * List the Video List
     *
     * @return Video List
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
     * Used for saving the Chapters of a video
     *
     * @param video Video Info and the Chapter Info
     * @return the input video object
     * @example To test this interface, send JSON below on postman
     * "{"id":1,"title":"Micro service SpringCLoud","summary":null,"price":0,"coverImg":null,"createTime":null,"chapterList":[{"id":1,"videoId":1,"title":"Chapter 1: AAAAA"},{"id":2,"videoId":2,"title":"Chapter 2: BBBBB"}]}"
     */
    @PostMapping("save_video_chapter")
    public JsonData saveVideoChapter(@RequestBody Video video) {
        // Save the Chapter
        System.out.println(video.toString());

        return JsonData.buildSuccess(video);
    }

    /**
     * List the Carousel List
     *
     * @return Carousel List
     */
    @GetMapping("list_banner")
    public JsonData indexBanner() {

        List<VideoBanner> bannerList = videoService.listBanner();

        return JsonData.buildSuccess(bannerList);

    }

    /**
     * Query video details, including chapter and episode info
     *
     * @param videoId The specified Video ID (required)
     * @return Video Details
     */
    @GetMapping("find_detail_by_id")
    public JsonData findDetailById(@RequestParam(value = "video_id") int videoId) {


        Video video = videoService.findDetailById(videoId);

        return JsonData.buildSuccess(video);

    }
}
