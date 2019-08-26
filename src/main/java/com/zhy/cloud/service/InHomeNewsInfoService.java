package com.zhy.cloud.service;

import com.zhy.cloud.model.InHomeNewsInfo;

import java.util.List;

public interface InHomeNewsInfoService  {
    /**
     * 按条件查找新闻list
     * @param inHomeNewsInfo
     * @return
     */
    List<InHomeNewsInfo> selectAllProjects(InHomeNewsInfo inHomeNewsInfo);
}
