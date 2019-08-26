package com.zhy.cloud.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhy.cloud.dto.Page;
import com.zhy.cloud.model.InHomeNewsInfo;
import com.zhy.cloud.service.InHomeNewsInfoService;
import com.zhy.cloud.utils.BaseResp;
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

    @Autowired
    InHomeNewsInfoService inHomeNewsInfoService;

    @GetMapping(value = "/list")
    @ApiOperation(value = "列表")
    public BaseResp list( InHomeNewsInfo newsInfo) {
        BaseResp result = new BaseResp();
        Page page = new Page();
        PageHelper.startPage(page.getPageNum(), page.getLimit());
        List<InHomeNewsInfo> newsInfoList = inHomeNewsInfoService.selectAllProjects(newsInfo);
        PageInfo<InHomeNewsInfo> newsInfoPageInfo = new PageInfo<>(newsInfoList);
        List<InHomeNewsInfo> list = newsInfoPageInfo.getList();
        page.setDatas(list);
        page.setPageNum(newsInfoPageInfo.getPageNum());
        page.setTotal((int) newsInfoPageInfo.getTotal());
        result.setData(page);
        result.setCode(page.getCode());
        result.setMessage(page.getMessage());
        return result;
    }

}
