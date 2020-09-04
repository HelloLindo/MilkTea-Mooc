package net.wuyuling.milkteamooc.service;

import net.wuyuling.milkteamooc.domain.Video;
import net.wuyuling.milkteamooc.domain.VideoBanner;

import java.util.List;

public interface VideoService {

    List<Video> listVideo();

    List<VideoBanner> listBanner();

    Video findDetailById(int videoId);
}
