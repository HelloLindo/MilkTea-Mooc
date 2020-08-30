package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.domain.Video;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class VideoMapper {

    // Mock Database Data in memory
    private static Map<Integer, Video> videoMap = new HashMap<>();

    static {
        videoMap.put(1, new Video(1, "Java foundation course, jdk8~13 new features"));
        videoMap.put(2, new Video(2, "SpringBoot2.X Zero to Industry"));
        videoMap.put(3, new Video(3, "Micro service SpringCLoud"));
        videoMap.put(4, new Video(4, "SpringBoot real WeChat pays Project"));
        videoMap.put(5, new Video(5, "Interview topic - 300 hottest question"));
    }

    public List<Video> listVideo() {

        return new ArrayList<>(videoMap.values());
    }

}
