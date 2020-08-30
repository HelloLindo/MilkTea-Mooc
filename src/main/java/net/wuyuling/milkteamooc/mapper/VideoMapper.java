package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.domain.Video;

import java.util.HashMap;
import java.util.Map;

public class VideoMapper {

    private static Map<Integer, Video> videoMap = new HashMap<>();

    static {

        videoMap.put(1,new Video(1,"Java基础课程，jdk8~13新特性"));
        videoMap.put(2,new Video(2,"SpringBoot2.X零基础到实战"));
        videoMap.put(3,new Video(3,"微服务SpringCLoud全家桶"));
        videoMap.put(4,new Video(4,"SpringBoot实战微信支付课程"));
        videoMap.put(5,new Video(5,"小滴课堂面试专题第一季，300道大厂连环问"));
    }
}
