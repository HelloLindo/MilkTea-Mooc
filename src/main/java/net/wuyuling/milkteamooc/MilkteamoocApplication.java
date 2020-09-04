package net.wuyuling.milkteamooc;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@MapperScan("net.wuyuling.milkteamooc.mapper")
@ServletComponentScan
@EnableScheduling
@EnableAsync
public class MilkteamoocApplication {

    public static void main(String[] args) {
        SpringApplication.run(MilkteamoocApplication.class, args);
    }

}
