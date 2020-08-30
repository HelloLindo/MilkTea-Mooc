package net.wuyuling.milkteamooc.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/video")
public class VideoController {
    @GetMapping("list")
    public Object getList(){
        Map<String, String> map = new HashMap<>();
        map.put("0", "Hello");
        map.put("1", "World");
        return map;
    }
}
