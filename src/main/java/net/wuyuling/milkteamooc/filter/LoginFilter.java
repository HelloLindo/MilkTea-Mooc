package net.wuyuling.milkteamooc.filter;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * Use Interceptor to Replace
 */
//@WebFilter(urlPatterns = "/api/v1/pri/*", filterName = "loginFilter")
public class LoginFilter implements Filter {

    private static final ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) {
//        System.out.println("Doing LoginFilter");
//
//        HttpServletRequest req = (HttpServletRequest) servletRequest;
//
//        HttpServletResponse resp = (HttpServletResponse) servletResponse;
//
//
//        String token = req.getHeader("token");
//        if (StringUtils.isEmpty(token)) {
//            token = req.getParameter("token");
//        }
//
//        if (!StringUtils.isEmpty(token)) {
//
//            // Validate the Token
//            User user = UserServiceImpl.sessionMap.get(token);
//            if (user != null) {
//                filterChain.doFilter(servletRequest, servletResponse);
//            } else {
//
//                JsonData jsonData = JsonData.buildError(-2, "Login Failed, Illegal Token");
//                String jsonStr = objectMapper.writeValueAsString(jsonData);
//                renderJson(resp, jsonStr);
//
//            }
//
//        } else {
//
//            JsonData jsonData = JsonData.buildError(-3, "Login Failed, Empty Token");
//            String jsonStr = objectMapper.writeValueAsString(jsonData);
//            renderJson(resp, jsonStr);
//        }
    }


    private void renderJson(HttpServletResponse response, String json) {

        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        try (PrintWriter writer = response.getWriter()) {
            writer.print(json);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void init(FilterConfig filterConfig) {
//        System.out.println("Init LoginFilter");
    }

    @Override
    public void destroy() {
//        System.out.println("Destory LoginFilter");
    }
}
