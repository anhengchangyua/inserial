package com.zhy.cloud.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhy.cloud.dto.Page;
import com.zhy.cloud.model.InHomeNewsInfo;
import com.zhy.cloud.service.InHomeNewsInfoService;
import com.zhy.cloud.utils.BaseResp;
import com.zhy.cloud.utils.ResultStatus;
import com.zhy.cloud.utils.Tool;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/news")
public class InHomeNewsInfoController {

    private final
    InHomeNewsInfoService inHomeNewsInfoService;

    @Autowired
    public InHomeNewsInfoController(InHomeNewsInfoService inHomeNewsInfoService) {
        this.inHomeNewsInfoService = inHomeNewsInfoService;
    }

    @GetMapping(value = "/list")
    @ApiOperation(value = "列表")
    public BaseResp list(InHomeNewsInfo newsInfo) {
        BaseResp result = new BaseResp();
        PageHelper.startPage(newsInfo.getPageNum(), newsInfo.getLimit());
        List<InHomeNewsInfo> newsInfoList = inHomeNewsInfoService.selectAllNews(newsInfo);
        PageInfo<InHomeNewsInfo> newsInfoPageInfo = new PageInfo<>(newsInfoList);
        result.setData(newsInfoPageInfo.getList());
        result.setCode(ResultStatus.getCode("SUCCESS"));
        result.setTotal(String.valueOf(newsInfoPageInfo.getTotal()));
        result.setPageNum(String.valueOf(newsInfoPageInfo.getPageNum()));
        result.setLimit(String.valueOf(newsInfo.getLimit()));
        return result;
    }

}
