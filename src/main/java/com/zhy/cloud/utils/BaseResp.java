package com.zhy.cloud.utils;


import com.zhy.cloud.model.Permission;

import java.util.Date;
import java.util.List;

/**
 * 基础返回model
 *
 * @param <T>
 */
public class BaseResp<T> {
    /**
     * 返回码
     */
    private int code;

    /**
     * 返回信息描述
     */
    private String message;
    private String total;
    private String pageNum;
    private String limit;
    /**
     * 返回数据
     */
    private T data;

    public BaseResp(int code, List<Permission> currentPermissionsList) {
    }


    public int getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getData() {
        return data;
    }

    public BaseResp<T> setData(T data) {
        this.data = data;
        return this;
    }

    public BaseResp<T> setCode(int code) {
        this.code = code;
        return this;
    }


    public BaseResp() {
    }

    /**
     * @param code    错误码
     * @param message 信息
     * @param data    数据
     */
    public BaseResp(int code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    /**
     * @param code    错误码
     * @param message 信息
     */
    public BaseResp(int code, String message) {
        this.code = code;
        this.message = message;
    }

    /**
     * 不带数据的返回结果
     *
     * @param resultStatus
     */
    public BaseResp(ResultStatus resultStatus) {
        this.code = resultStatus.getErrorCode();
        this.message = resultStatus.getErrorMsg();
        this.data = data;
    }

    /**
     * 带数据的返回结果
     *
     * @param resultStatus
     * @param data
     */
    public BaseResp(ResultStatus resultStatus, T data) {
        this.code = resultStatus.getErrorCode();
        this.message = resultStatus.getErrorMsg();
        this.data = data;
    }


    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getPageNum() {
        return pageNum;
    }

    public void setPageNum(String pageNum) {
        this.pageNum = pageNum;
    }

    public String getLimit() {
        return limit;
    }

    public void setLimit(String limit) {
        this.limit = limit;
    }
}
