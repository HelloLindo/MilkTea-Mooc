package net.wuyuling.milkteamooc.service.impl;

import net.wuyuling.milkteamooc.config.CacheKeyManager;
import net.wuyuling.milkteamooc.handler.CustomExtHandler;
import net.wuyuling.milkteamooc.mapper.VideoMapper;
import net.wuyuling.milkteamooc.model.entity.Video;
import net.wuyuling.milkteamooc.model.entity.VideoBanner;
import net.wuyuling.milkteamooc.service.VideoService;
import net.wuyuling.milkteamooc.utils.BaseCache;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideoServiceImpl implements VideoService {
    private final static Logger logger = LoggerFactory.getLogger(CustomExtHandler.class);

    @Autowired
    private VideoMapper videoMapper;

    @Autowired
    private BaseCache baseCache;

    @SuppressWarnings("unchecked")
    @Override
    public List<VideoBanner> listBanner() {
        // Disable Guava Cache Module (ONLY FOR LOAD TEST MOCK)
        // return videoMapper.listVideoBanner();

        try {
            // JDK 1.8 Lambda Syntax
            // Object cacheObj = baseCache.getTenMinuteCache().get(CacheKeyManager.INDEX_CAROUSEL_KEY, () -> {
            //     return videoMapper.listVideoBanner();
            // });
            // JDK 14 Lambda Syntax
            Object cacheObj = baseCache.getTenMinuteCache().get(CacheKeyManager.INDEX_CAROUSEL_KEY, () -> videoMapper.listVideoBanner());

            if (cacheObj instanceof List) {
                return (List<VideoBanner>) cacheObj;
            }

        } catch (Exception e) {
            logger.error("[CACHE ERROR] Getting or setting cache error", e);
        }
        return null;

    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Video> listVideo() {
        try {
            Object cacheObj = baseCache.getTenMinuteCache().get(CacheKeyManager.INDEX_VIDEO_LIST, () -> videoMapper.listVideo());
            if (cacheObj instanceof List) {
                return (List<Video>) cacheObj;
            }
        } catch (Exception e) {
            logger.error("[CACHE ERROR] Getting or setting cache error", e);
        }

        // May return some backup static data for users
        return null;
    }

    @Override
    public Video findDetailById(int videoId) {
        // Build a specific Video Key
        String videoCacheKey = String.format(CacheKeyManager.VIDEO_DETAIL, videoId);

        try {
            Object cacheObject = baseCache.getOneHourCache().get(videoCacheKey, () -> videoMapper.findDetailById(videoId));
            if (cacheObject instanceof Video) {
                return (Video) cacheObject;
            }
        } catch (Exception e) {
            logger.error("[CACHE ERROR] Getting or setting cache error", e);
        }

        return null;
    }
}
