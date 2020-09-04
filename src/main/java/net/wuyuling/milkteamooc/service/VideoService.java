package net.wuyuling.milkteamooc.service;

import net.wuyuling.milkteamooc.model.entity.Video;
import net.wuyuling.milkteamooc.model.entity.VideoBanner;

import java.util.List;

public interface VideoService {

    List<Video> listVideo();

    List<VideoBanner> listBanner();

    Video findDetailById(int videoId);
}
