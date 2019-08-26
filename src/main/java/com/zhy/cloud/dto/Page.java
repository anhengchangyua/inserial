package com.zhy.cloud.dto;

import com.zhy.cloud.utils.Tool;
import org.springframework.web.bind.ServletRequestUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

import java.util.List;

public class Page<T> {

    private int code = -1;
    private List<T> datas = new ArrayList<T>();
    private String message = "无数据";
    private int total;//总页数
    private int pageNum;//当前页码
    private int limit = 10;//每页条数
    private String orderBy;//sql查询数据排序规则

    public Page() {
    }

    public Page(int pageNum, int limit) {
        this.pageNum = pageNum;
        this.limit = limit;
    }


    public Page(HttpServletRequest request) {
        this.pageNum = ServletRequestUtils.getIntParameter(request, "pageNum", 1);
        this.limit = ServletRequestUtils.getIntParameter(request, "limit", limit);
        this.orderBy = ServletRequestUtils.getStringParameter(request, "sortField", null) == null ? null :
                Tool.humpToLine2(ServletRequestUtils.getStringParameter(request, "sortField", null)) + " " +
                        ServletRequestUtils.getStringParameter(request, "sortOrder", null);
    }

    public Page(int pageNum, int limit, String orderBy) {
        this.pageNum = pageNum;
        this.limit = limit;
        this.orderBy = orderBy;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public List<T> getDatas() {
        return datas;
    }

    public void setDatas(List<T> datas) {
        setCode(1);
        setMessage("查询成功");
        this.datas = datas;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String mssage) {
        this.message = mssage;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }
}

