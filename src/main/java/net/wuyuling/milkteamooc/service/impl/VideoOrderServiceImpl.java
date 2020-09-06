package net.wuyuling.milkteamooc.service.impl;

import net.wuyuling.milkteamooc.mapper.VideoMapper;
import net.wuyuling.milkteamooc.mapper.VideoOrderMapper;
import net.wuyuling.milkteamooc.model.entity.Video;
import net.wuyuling.milkteamooc.model.entity.VideoOrder;
import net.wuyuling.milkteamooc.service.VideoOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.UUID;

@Service
public class VideoOrderServiceImpl implements VideoOrderService {
    @Autowired
    private VideoOrderMapper videoOrderMapper;

    @Autowired
    private VideoMapper videoMapper;

    @Override
    public int save(int userId, int videoId) {

        // Validate whether the user has bought before
        VideoOrder videoOrder = videoOrderMapper.findByUserIdAndVideoIdAndState(userId, videoId, 1);

        if (videoOrder != null) {
            return 0;
        }

        Video video = videoMapper.findById(videoId);

        VideoOrder newVideoOrder = new VideoOrder();
        // Set Order Data
        newVideoOrder.setCreateTime(new Date());
        newVideoOrder.setOutTradeNo(UUID.randomUUID().toString());
        newVideoOrder.setState(1);
        newVideoOrder.setTotalFee(video.getPrice());
        newVideoOrder.setUserId(userId);
        newVideoOrder.setVideoId(videoId);
        newVideoOrder.setVideoImg(video.getCoverImg());
        newVideoOrder.setVideoTitle(video.getTitle());

        return videoOrderMapper.saveOrder(newVideoOrder);
    }
}
