package com.zhy.cloud.dao;


import com.zhy.cloud.model.InHomeNewsInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InHomeNewsInfoDao   {
    /**
     * 按条件查找新闻信息
     *
     * @param inHomeNewsInfo
     * @return
     */
    List<InHomeNewsInfo> selectAllNews(InHomeNewsInfo inHomeNewsInfo);
}
