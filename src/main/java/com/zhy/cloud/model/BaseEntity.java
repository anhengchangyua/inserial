package com.zhy.cloud.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;

@Data
public abstract class BaseEntity<ID extends Serializable> implements Serializable {

	private static final long serialVersionUID = 2054813493011812469L;
	private ID id;
	private String sortField;

	private String sortOrder;

	private int pageNum=0;

	private int limit=10;

	private Date createTime = new Date();
	private Date updateTime = new Date();


}
