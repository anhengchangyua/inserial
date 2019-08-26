package com.zhy.cloud.model;

import lombok.Data;


import java.util.Date;


@Data
public class InHomeNewsInfo extends BaseEntity<Integer> {
    private Integer typeId;
    private String title;
    private Integer clickVolume;
    private Integer displayMethod;
    private Boolean isTop;
    private Boolean isScroll;
    private Boolean isCheck;
    private Date releaseTime;
    private Date createTime;
    private String picUri;
    private String picUri1;
    private String picUri2;
}
