package com.zhy.cloud.model;

import lombok.Data;

@Data
public class NewsComment extends BaseEntity<Long> {

    private Integer newsId;
    private Integer isCheck;
    private String content;
    private Integer userId;
    private String likeNumber;



}
