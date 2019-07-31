package com.zhy.cloud.model;


public class NewsType extends BaseEntity<Long> {

    private Integer id;
    private String categories;
    private Integer sort;

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getInt() {
        return id;
    }

    public void setInt(Integer id) {
        this.id = id;
    }

}
