package com.zhy.cloud.controller;

import java.util.List;

import com.zhy.cloud.dao.NewsCommentDao;
import com.zhy.cloud.model.NewsComment;
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
@RequestMapping("/newsComments")
public class NewsCommentController {

    @Autowired
    private NewsCommentDao newsCommentDao;

    @PostMapping
    @ApiOperation(value = "保存")
    public NewsComment save(@RequestBody NewsComment newsComment) {
        newsCommentDao.save(newsComment);

        return newsComment;
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据id获取")
    public NewsComment get(@PathVariable Long id) {
        return newsCommentDao.getById(id);
    }

    @PutMapping
    @ApiOperation(value = "修改")
    public NewsComment update(@RequestBody NewsComment newsComment) {
        newsCommentDao.update(newsComment);

        return newsComment;
    }

//    @GetMapping
//    @ApiOperation(value = "列表")
//    public PageTableResponse list(PageTableRequest request) {
//        return new PageTableHandler(new CountHandler() {
//
//            @Override
//            public int count(PageTableRequest request) {
//                return newsCommentDao.count(request.getParams());
//            }
//        }, new ListHandler() {
//
//            @Override
//            public List<NewsComment> list(PageTableRequest request) {
//                return newsCommentDao.list(request.getParams(), request.getOffset(), request.getLimit());
//            }
//        }).handle(request);
//    }

    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除")
    public void delete(@PathVariable Long id) {
        newsCommentDao.delete(id);
    }
}
