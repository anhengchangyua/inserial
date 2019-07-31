package com.zhy.cloud.exception;

import com.zhy.cloud.model.ErrorMessage;
import lombok.Getter;
import lombok.Setter;

public class NullOrEmptyException extends Exception {
    @Getter
    @Setter
    protected String message;

    public NullOrEmptyException() {
        setMessage("参数不能为空或者null!");
    }

    public NullOrEmptyException(String message) {
        this.message = message;
    }
}
