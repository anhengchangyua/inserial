package com.zhy.cloud.controller;

import com.zhy.cloud.utils.BaseResp;
import com.zhy.cloud.utils.ResultStatus;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Description: 当用户输入不合法的url时，返回标准结果(json字符串，而不是页面)
 */

@RestController
public class AppErrorUrlController implements ErrorController {

    private static final String PATH = "/error";

    @RequestMapping(value = PATH)
    public BaseResp<?> error() {
        return new BaseResp<String>(ResultStatus.error_invalid_argument, ResultStatus.error_invalid_argument.name());
    }

    @Override
    public String getErrorPath() {
        return PATH;
    }
}