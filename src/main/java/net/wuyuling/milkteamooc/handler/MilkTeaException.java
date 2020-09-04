package net.wuyuling.milkteamooc.handler;

/**
 * MilkTea Mooc
 * Custom Exception Class
 */
public class MilkTeaException extends RuntimeException {

    private Integer code;

    private String msg;

    public MilkTeaException(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}