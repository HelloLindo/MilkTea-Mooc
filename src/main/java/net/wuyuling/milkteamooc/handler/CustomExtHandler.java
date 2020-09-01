package net.wuyuling.milkteamooc.handler;

import net.wuyuling.milkteamooc.utils.JsonData;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;

/**
 * An Exception Handler
 */
@RestControllerAdvice
public class CustomExtHandler {
    // Handle all unwanted exceptions
    @ExceptionHandler(value = Exception.class)
    JsonData handlerException(Exception e, HttpServletRequest request) {
        return JsonData.buildError("Internal Server Corrupted", -2);
    }
}
