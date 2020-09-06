package net.wuyuling.milkteamooc.utils;

import com.google.common.cache.Cache;
import com.google.common.cache.CacheBuilder;
import org.springframework.stereotype.Component;

import java.util.concurrent.TimeUnit;

@Component
public class BaseCache {

    private Cache<String, Object> tenMinuteCache = CacheBuilder.newBuilder()
            // Set the initial size
            .initialCapacity(10)
            // Set the MAX size
            .maximumSize(100)
            // Set the concurrent processes (operate the cache)
            .concurrencyLevel(5)
            // Expire Time
            .expireAfterWrite(15, TimeUnit.MINUTES)
            // statistic the cache data
            .recordStats()
            .build();


    private Cache<String, Object> oneHourCache = CacheBuilder.newBuilder()
            // Set the initial size
            .initialCapacity(30)
            // Set the MAX size
            .maximumSize(100)
            // Set the concurrent processes (operate the cache)
            .concurrencyLevel(5)
            // Expire Time
            .expireAfterWrite(1, TimeUnit.HOURS)
            // statistic the cache data
            .recordStats()
            .build();


    public Cache<String, Object> getOneHourCache() {
        return oneHourCache;
    }

    public void setOneHourCache(Cache<String, Object> oneHourCache) {
        this.oneHourCache = oneHourCache;
    }

    public Cache<String, Object> getTenMinuteCache() {
        return tenMinuteCache;
    }

    public void setTenMinuteCache(Cache<String, Object> tenMinuteCache) {
        this.tenMinuteCache = tenMinuteCache;
    }


}