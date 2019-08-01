package com.zhy.cloud.controller;

import com.zhy.cloud.annotation.LogAnnotation;
import com.zhy.cloud.dao.FileInfoDao;
import com.zhy.cloud.model.FileInfo;
import com.zhy.cloud.service.FileService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Api(tags = "文件")
@RestController
@RequestMapping("/files")
public class FileController {

    @Autowired
    private FileService fileService;
    @Autowired
    private FileInfoDao fileInfoDao;

    @LogAnnotation
    @PostMapping
    @ApiOperation(value = "文件上传")
    public FileInfo uploadFile(MultipartFile file) throws IOException {
        return fileService.save(file);
    }


    @GetMapping
    @ApiOperation(value = "文件查询")
    @PreAuthorize("hasAuthority('sys:file:query')")
    public List<FileInfo> listFiles() {
        return fileInfoDao.list();
    }

    @LogAnnotation
    @DeleteMapping("/{id}")
    @ApiOperation(value = "文件删除")
    @PreAuthorize("hasAuthority('sys:file:del')")
    public void delete(@PathVariable String id) {
        fileService.delete(id);
    }

}
