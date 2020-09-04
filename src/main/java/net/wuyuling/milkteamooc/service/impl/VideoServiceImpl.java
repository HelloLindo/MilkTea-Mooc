package net.wuyuling.milkteamooc.service.impl;

import net.wuyuling.milkteamooc.domain.Video;
import net.wuyuling.milkteamooc.domain.VideoBanner;
import net.wuyuling.milkteamooc.mapper.VideoMapper;
import net.wuyuling.milkteamooc.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    private VideoMapper videoMapper;

    @Override
    public List<Video> listVideo() {
        return videoMapper.listVideo();
    }

    @Override
    public List<VideoBanner> listBanner() {
        return videoMapper.listVideoBanner();
    }

    @Override
    public Video findDetailById(int videoId) {
        // Use mybatis to query data in database
        return videoMapper.findDetailById(videoId);
    }
}
