package net.wuyuling.milkteamooc.interceptor;

import com.fasterxml.jackson.databind.ObjectMapper;
import net.wuyuling.milkteamooc.domain.User;
import net.wuyuling.milkteamooc.service.impl.UserServiceImpl;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

public class LoginIntercepter implements HandlerInterceptor {
    private static final ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String token = request.getHeader("token");
        if (StringUtils.isEmpty(token)) {
            token = request.getParameter("token");
        }

        if (!StringUtils.isEmpty(token)) {
            // Validate the Token
            User user = UserServiceImpl.sessionMap.get(token);

            if (user != null) {
                return true;
            } else {
                JsonData jsonData = JsonData.buildError("Login Failed, Illegal Token", -2);
                String jsonStr = objectMapper.writeValueAsString(jsonData);
                renderJson(response, jsonStr);
                return false;
            }

        } else {
            JsonData jsonData = JsonData.buildError("Login Failed, Empty Token", -3);
            String jsonStr = objectMapper.writeValueAsString(jsonData);
            renderJson(response, jsonStr);
            return false;
        }

    }


    private void renderJson(HttpServletResponse response, String json) {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");


        try (PrintWriter writer = response.getWriter()) {
            writer.print(json);
        } catch (Exception e) {
            e.printStackTrace();
        }

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
