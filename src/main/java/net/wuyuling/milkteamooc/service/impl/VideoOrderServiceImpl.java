package net.wuyuling.milkteamooc.service.impl;

import net.wuyuling.milkteamooc.handler.CustomExtHandler;
import net.wuyuling.milkteamooc.handler.MilkTeaException;
import net.wuyuling.milkteamooc.mapper.EpisodeMapper;
import net.wuyuling.milkteamooc.mapper.PlayRecordMapper;
import net.wuyuling.milkteamooc.mapper.VideoMapper;
import net.wuyuling.milkteamooc.mapper.VideoOrderMapper;
import net.wuyuling.milkteamooc.model.entity.Episode;
import net.wuyuling.milkteamooc.model.entity.PlayRecord;
import net.wuyuling.milkteamooc.model.entity.Video;
import net.wuyuling.milkteamooc.model.entity.VideoOrder;
import net.wuyuling.milkteamooc.service.VideoOrderService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class VideoOrderServiceImpl implements VideoOrderService {
    private final static Logger logger = LoggerFactory.getLogger(CustomExtHandler.class);

    @Autowired
    private VideoOrderMapper videoOrderMapper;

    @Autowired
    private VideoMapper videoMapper;

    @Autowired
    private EpisodeMapper episodeMapper;

    @Autowired
    private PlayRecordMapper playRecordMapper;

    @Override
    @Transactional
    public int save(int userId, int videoId) {

        // Validate whether the user has bought before
        VideoOrder videoOrder = videoOrderMapper.findByUserIdAndVideoIdAndState(userId, videoId, 1);

        if (videoOrder != null) {
            return 0;
        }
        // Find the corresponding Video Info
        Video video = videoMapper.findById(videoId);
        if (video == null) {
            // No this Video Record
            return -1;
        }

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

        int rows = videoOrderMapper.saveOrder(newVideoOrder);

        // Build a play record and save into database
        if (rows == 1) {
            Episode episode = episodeMapper.findFirstEpisodeByVideoId(videoId);
            if (episode == null) {
                throw new MilkTeaException(-1, "The Episode Info of this Video is Empty");
            }
            PlayRecord playRecord = new PlayRecord();
            playRecord.setCreateTime(new Date());
            playRecord.setEpisodeId(episode.getId());
            playRecord.setCurrentNum(episode.getNum());
            playRecord.setUserId(userId);
            playRecord.setVideoId(videoId);
            if (playRecordMapper.saveRecord(playRecord) != 1) {
                // If saveRecord() failed, the saveOrder() operation will be rollback
                // So record this issue in the log will be the best
                logger.error("[SAVE ERROR] Save Order Successfully but Save Playing Record Failed.");
            }
        }

        return rows;
    }

    @Override
    public List<VideoOrder> listOrderByUserId(Integer userId) {
        return videoOrderMapper.listOrderByUserId(userId);
    }
}
