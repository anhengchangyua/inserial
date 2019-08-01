package com.zhy.cloud.model;

import java.util.Date;

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

	public Integer getTypeId() {
		return typeId;
	}
	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getClickVolume() {
		return clickVolume;
	}
	public void setClickVolume(Integer clickVolume) {
		this.clickVolume = clickVolume;
	}
	public Integer getDisplayMethod() {
		return displayMethod;
	}
	public void setDisplayMethod(Integer displayMethod) {
		this.displayMethod = displayMethod;
	}
	public Integer getIsTop() {
		return isTop;
	}
	public void setIsTop(Integer isTop) {
		this.isTop = isTop;
	}
	public Integer getIsScroll() {
		return isScroll;
	}
	public void setIsScroll(Integer isScroll) {
		this.isScroll = isScroll;
	}
	public Integer getIsCheck() {
		return isCheck;
	}
	public void setIsCheck(Integer isCheck) {
		this.isCheck = isCheck;
	}
	public Date getReleaseTime() {
		return releaseTime;
	}
	public void setReleaseTime(Date releaseTime) {
		this.releaseTime = releaseTime;
	}

}
