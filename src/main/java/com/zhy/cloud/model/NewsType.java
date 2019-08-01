package com.zhy.cloud.model;

import lombok.Data;

@Data
public class NewsType extends BaseEntity<Long> {

    private String categories;
    private Integer sort;
}
