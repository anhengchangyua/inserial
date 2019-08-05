package com.zhy.cloud.model;

import lombok.Data;

@Data
public class SysDictType extends BaseEntity<Long> {

    private String code;
    private String name;
}
