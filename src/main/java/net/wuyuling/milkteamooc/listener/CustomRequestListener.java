package net.wuyuling.milkteamooc.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class CustomRequestListener implements ServletRequestListener {

    @Override
    public void requestInitialized(ServletRequestEvent sre) {
        // Do Something when a request comes
    }

    @Override
    public void requestDestroyed(ServletRequestEvent sre) {
        // Do Something when a request ends
    }
}
