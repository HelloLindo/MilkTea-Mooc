package net.wuyuling.milkteamooc.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Seldom Use
 */
@WebListener
public class CustomSessionListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        // Do Something when a session creates
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        // Do Something when a session destroys
    }
}
