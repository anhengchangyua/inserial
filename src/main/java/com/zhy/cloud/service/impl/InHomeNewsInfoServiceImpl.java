package com.zhy.cloud.service.impl;

import com.zhy.cloud.dao.InHomeNewsInfoDao;
import com.zhy.cloud.model.InHomeNewsInfo;
import com.zhy.cloud.service.InHomeNewsInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InHomeNewsInfoServiceImpl implements InHomeNewsInfoService {

    @Autowired
    private InHomeNewsInfoDao inHomeNewsInfoDao;
    @Override
    public List<InHomeNewsInfo> selectAllProjects(InHomeNewsInfo inHomeNewsInfo) {
        List<InHomeNewsInfo> newsInfoList = inHomeNewsInfoDao.selectAllProjects(inHomeNewsInfo);
        return newsInfoList;

    }
}
