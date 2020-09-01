package net.wuyuling.milkteamooc.controller;

import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
@RequestMapping("/api/v1/pri/order")
public class VideoOrderController {

    @PostMapping("save")
    public JsonData saveOrder() {
        return JsonData.buildSuccess("Save Order Successfully");
    }
}
