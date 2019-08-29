package com.zhy.cloud.model;

import lombok.Data;

import java.util.List;


@Data
public class Permission extends BaseEntity<Long> {

    private static final long serialVersionUID = 6180869216498363919L;
    private Long parentId;
    private String menuName;
    private String menuIcon;
    private String menuUrl;
    private Integer type;
    private String permission;
    private Integer sort;
    private List<Permission> child;


}
