package net.wuyuling.milkteamooc.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class ApplicationListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        // Do Something when servlet starts
        // E.g. Load Application Properties
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        // Do Something when servlet exits
    }
}
