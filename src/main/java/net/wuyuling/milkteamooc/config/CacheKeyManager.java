package net.wuyuling.milkteamooc.config;

import org.springframework.context.annotation.Configuration;

@Configuration
public class CacheKeyManager {

    /**
     * the Key of Carousel in Home page
     */
    public static final String INDEX_CAROUSEL_KEY = "index:banner:list";


    /**
     * the Key of Video List in Home page
     */
    public static final String INDEX_VIDEO_LIST = "index:video:list";


    /**
     * the Key of Video Details which “%s” is Video ID
     */
    public static final String VIDEO_DETAIL = "video:detail:%s";

}
