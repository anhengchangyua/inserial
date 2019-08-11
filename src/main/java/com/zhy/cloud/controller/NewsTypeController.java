package com.zhy.cloud.controller;

import java.util.List;

import com.zhy.cloud.dao.NewsTypeDao;
import com.zhy.cloud.model.NewsType;
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
@RequestMapping("/newsTypes")
public class NewsTypeController {

    @Autowired
    private NewsTypeDao newsTypeDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public NewsType save(@RequestBody NewsType newsType) {
        newsTypeDao.save(newsType);
        return newsType;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public NewsType get(@PathVariable Long id) {
        return newsTypeDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public void update(@RequestBody NewsType newsType) {
        newsTypeDao.update(newsType);
    }

    @GetMapping
    @ApiOperation(value = "列表")
    public List<NewsType> list() {
        List<NewsType> list = newsTypeDao.list();
        return list;
    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        newsTypeDao.delete(id);
    }
}
