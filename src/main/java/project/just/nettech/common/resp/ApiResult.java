package project.just.nettech.common.resp;

import lombok.Data;

/**
 * @author Ethanp
 * @version V1.0
 * @Package com.pxc.learn.common.resp
 * @Description: TODO
 * @date 2018/4/4 18:27
 */


public class ApiResult<T> {
    private int code;
    private String msg;
    private T data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}

