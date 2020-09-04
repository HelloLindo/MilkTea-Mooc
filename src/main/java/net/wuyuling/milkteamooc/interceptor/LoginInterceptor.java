package net.wuyuling.milkteamooc.interceptor;

import com.fasterxml.jackson.databind.ObjectMapper;
import io.jsonwebtoken.Claims;
import net.wuyuling.milkteamooc.utils.JWTUtils;
import net.wuyuling.milkteamooc.utils.JsonData;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

public class LoginInterceptor implements HandlerInterceptor {
    private static final ObjectMapper objectMapper = new ObjectMapper();

    /**
     * The method will run before the controller method
     *
     * @param request  HTTP Request
     * @param response HTTP Response
     * @param handler  Chosen Handler to execute, for type and/or instance evaluation
     * @return Pass: True, Failure: False
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        try {
            // Get token in header
            String accesToken = request.getHeader("token");
            if (accesToken == null) {
                // Get token in parameter
                accesToken = request.getParameter("token");
            }

            if (StringUtils.isNotBlank(accesToken)) {
                Claims claims = JWTUtils.checkJWT(accesToken);
                if (claims == null) {
                    sendJsonMessage(response, JsonData.buildError("Expired Token, please login again"));
                    return false;
                }

                Integer id = (Integer) claims.get("id");
                String name = (String) claims.get("name");
                // Set in request for the controller
                request.setAttribute("user_id", id);
                request.setAttribute("name", name);

                return true;

            }

        } catch (Exception ignored) {

        }

        sendJsonMessage(response, JsonData.buildError("Expired Token, please login again"));

        return false;

    }

    /**
     * Send JSON to front-end
     *
     * @param response HTTP Response
     * @param obj      JSON Object
     */
    private void sendJsonMessage(HttpServletResponse response, Object obj) {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        // JDK 8 Syntax, it will close the writer automatically
        try (PrintWriter writer = response.getWriter()) {
            writer.print(objectMapper.writeValueAsString(obj));
            response.flushBuffer();
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
