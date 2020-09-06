package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.model.entity.Episode;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface EpisodeMapper {

    /**
     * Find the first episode info by given video ID
     *
     * @param videoId the Video ID
     * @return Episode Info
     */
    Episode findFirstEpisodeByVideoId(@Param("video_id") int videoId);

}
