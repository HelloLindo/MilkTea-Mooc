package net.wuyuling.milkteamooc.handler;

import net.wuyuling.milkteamooc.utils.JsonData;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * An Exception Handler
 */
@RestControllerAdvice
public class CustomExtHandler {

    private final static Logger logger = LoggerFactory.getLogger(CustomExtHandler.class);

    // Handle all unwanted exceptions
    @ExceptionHandler(value = Exception.class)
    public JsonData handle(Exception e) {

        logger.error("[UNKNOWN ERROR] An exception occurs in system", e);

        if (e instanceof MilkTeaException) {

            MilkTeaException milkTeaException = (MilkTeaException) e;

            return JsonData.buildError(milkTeaException.getCode(), milkTeaException.getMsg());

        } else if (e instanceof HttpRequestMethodNotSupportedException) {
            return JsonData.buildError("Unsupported Request Method");
        } else {
            return JsonData.buildError(-2, "Internal Server Corrupted: Unknown Error");
        }


    }

}
