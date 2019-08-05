package com.zhy.cloud.model;

import lombok.Data;

import java.util.Date;

@Data
public class NewsInfo extends BaseEntity<Long> {

    private Integer typeId;
    private String title;
    private String content;
    private Integer clickVolume;
    private Integer displayMethod;
    private Integer isTop;
    private Integer isScroll;
    private Integer isCheck;
    private Date releaseTime;
    private String picUri;
    private String picUri1;
    private String picUri2;
}
