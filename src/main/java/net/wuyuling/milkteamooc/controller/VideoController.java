package net.wuyuling.milkteamooc.controller;


import net.wuyuling.milkteamooc.service.VideoService;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controller of video service
 */

@RestController
@RequestMapping("/api/v1/pub/video")
public class VideoController {

    @Autowired
    private VideoService videoService;

    @GetMapping("list")
    public Object getList() {
        return JsonData.buildSuccess(videoService.listVideo());
    }
}
