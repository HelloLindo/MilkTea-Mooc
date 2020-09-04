package net.wuyuling.milkteamooc.utils;

public class JsonData {

    /**
     * Return Code: 0->Success, 1->Processing, -1->Failure
     */
    private Integer code;

    /**
     * Project Data
     */
    private Object data;

    /**
     * Return Message
     */
    private String msg;

    public JsonData() {
    }

    public JsonData(Integer code, Object data, String msg) {
        this.code = code;
        this.data = data;
        this.msg = msg;
    }


    /**
     * Success without data & message
     */
    public static JsonData buildSuccess() {
        return new JsonData(0, null, null);
    }

    /**
     * Success with data
     *
     * @param data Project Data
     * @return JSON Data
     */
    public static JsonData buildSuccess(Object data) {
        return new JsonData(0, data, null);
    }


    /**
     * Failure with Code -1
     *
     * @param msg Failure Message
     * @return JSON Data
     */
    public static JsonData buildError(String msg) {
        return new JsonData(-1, null, msg);
    }


    /**
     * Failure with Custom Code & Message
     *
     * @param code Failure Code
     * @param msg  Failure Message
     * @return JSON Data
     */
    public static JsonData buildError(Integer code, String msg) {
        return new JsonData(code, null, msg);
    }


    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
