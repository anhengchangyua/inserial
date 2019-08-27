package com.zhy.cloud.dvo;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import java.util.Date;

@Data
public class UserDvo {
    private String username;
    private String nickname;
    private String headImgUrl;
    private String phone;
    private String telephone;
    private String email;
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    private Integer sex;
    private Integer status;
    private String intro;
}
