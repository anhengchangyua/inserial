package com.zhy.cloud.controller;

import java.util.List;

import com.zhy.cloud.dao.NewsInfoDao;
import com.zhy.cloud.model.NewsInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import io.swagger.annotations.ApiOperation;

@RestController
@RequestMapping("/newsInfos")
public class NewsInfoController {

    @Autowired
    private NewsInfoDao newsInfoDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public NewsInfo save(@RequestBody NewsInfo newsInfo) {
        newsInfoDao.save(newsInfo);
        return newsInfo;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public NewsInfo get(@PathVariable Long id) {
        return newsInfoDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public NewsInfo update(@RequestBody NewsInfo newsInfo) {
        newsInfoDao.update(newsInfo);

        return newsInfo;
    }


    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        newsInfoDao.delete(id);
    }
}
