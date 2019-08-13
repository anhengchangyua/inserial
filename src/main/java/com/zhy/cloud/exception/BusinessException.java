package com.zhy.cloud.exception;


import com.zhy.cloud.utils.ResultStatus;

public class BusinessException extends RuntimeException {

    private Integer code;
    private String message;

    public BusinessException(ResultStatus errorCode) {
        super(errorCode.getMsg());
        this.code = errorCode.getCode();
        this.message=errorCode.getMsg();
    }

    public BusinessException(String msg) {
        super(msg);
        this.code = ResultStatus.getCode("FAIL");
        this.message=msg;
    }

    public BusinessException(ResultStatus errorCode, String msg) {
        super(msg);
        this.code = errorCode.getCode();
        this.message=msg;
    }


    public Integer getCode() {
        return code;
    }

    public String getMessage() {
        return message;
    }



    @Override
    public String toString() {
        return "{" +
                "\"code\":" + code +
                ", \"message\":\"" + message + "\"" +"}";
    }

}
