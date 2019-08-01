package com.zhy.cloud.service;

import com.zhy.cloud.model.FileInfo;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface FileService {

    FileInfo save(MultipartFile file) throws IOException;

    void delete(String id);

}
