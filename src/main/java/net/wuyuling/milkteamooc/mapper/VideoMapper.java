package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.model.entity.Video;
import net.wuyuling.milkteamooc.model.entity.VideoBanner;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VideoMapper {

    /**
     * List the Video List
     *
     * @return Video List
     */
    List<Video> listVideo();

    /**
     * List the Carousel list
     *
     * @return Carousel List
     */
    List<VideoBanner> listVideoBanner();

    /**
     * Query video details, without chapter and episode info
     *
     * @param videoId The specified Video ID
     * @return Video Details without Chapter and Episode Info
     */
    Video findById(@Param("video_id") int videoId);

    /**
     * Query video details, including chapter and episode info
     *
     * @param videoId The specified Video ID
     * @return Video Details
     */
    Video findDetailById(@Param("video_id") int videoId);

}
