package net.wuyuling.milkteamooc.schedule;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * Schedule Task Example
 */
@Component
public class VideoOrderTask {
    // Every 2 seconds
    // @Scheduled(fixedRate = 2000)
    @Scheduled(cron = "0 0 */12 * * *")
    public void showSum() {
        // Show the Sum of the Orders
    }
}
