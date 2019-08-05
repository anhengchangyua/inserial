package com.zhy.cloud.model;

import lombok.Data;

@Data
public class SysDict extends BaseEntity<Long> {

    private String code;
    private String typeCode;
    private String name;
    private String value;

}
