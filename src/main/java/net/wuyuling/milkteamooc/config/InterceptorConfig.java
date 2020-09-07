package net.wuyuling.milkteamooc.config;

import net.wuyuling.milkteamooc.interceptor.CorsInterceptor;
import net.wuyuling.milkteamooc.interceptor.LoginInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    @Bean
    LoginInterceptor loginInterceptor() {
        return new LoginInterceptor();
    }

    @Bean
    CorsInterceptor corsInterceptor() {
        return new CorsInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // Intercept all paths (Enable CORS)
        registry.addInterceptor(corsInterceptor()).addPathPatterns("/**");

        // Intercept the private path
        registry.addInterceptor(loginInterceptor()).addPathPatterns("/api/v1/pri/*/*/**")
                // Exclude the login and register modules
                .excludePathPatterns("/api/v1/pri/user/login", "/api/v1/pri/user/register");

        WebMvcConfigurer.super.addInterceptors(registry);
    }
}
