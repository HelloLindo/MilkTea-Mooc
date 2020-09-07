package net.wuyuling.milkteamooc.interceptor;

import org.springframework.http.HttpMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CorsInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // Accept Any Domain
        response.setHeader("Access-Control-Allow-Origin", request.getHeader("origin"));
        // Allow to take Cookie
        response.setHeader("Access-Control-Allow-Credentials", "true");
        // Allow Request Methods
        response.setHeader("Access-Control-Allow-Methods", "GET, HEAD, POST, PUT, PATCH, DELETE, OPTIONS");
        // Allow Headers
        response.setHeader("Access-Control-Allow-Headers", "*");

        // Allow OPTIONS Request Method
        if (HttpMethod.OPTIONS.toString().equals(request.getMethod())) {
            return true;
        }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        HandlerInterceptor.super.postHandle(request, response, handler, modelAndView);
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        HandlerInterceptor.super.afterCompletion(request, response, handler, ex);
    }
}
