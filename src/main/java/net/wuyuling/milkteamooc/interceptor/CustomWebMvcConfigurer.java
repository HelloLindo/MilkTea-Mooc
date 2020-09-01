package net.wuyuling.milkteamooc.interceptor;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CustomWebMvcConfigurer implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(getLoginInterceptor()).addPathPatterns("/api/v1/pri/**");

        // The second way to register a Interceptor
        // registry.addInterceptor(new LoginIntercepter()).addPathPatterns("/api/v1/pri/**");

        // Exclude Path
        // registry.addInterceptor(getLoginInterceptor()).addPathPatterns("/api/v1/pri/**")
        // .excludePathPatterns("/**/*.html","/**/*.js");

        WebMvcConfigurer.super.addInterceptors(registry);
    }

    @Bean
    public LoginIntercepter getLoginInterceptor() {
        return new LoginIntercepter();
    }

}
