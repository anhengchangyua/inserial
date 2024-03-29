package com.zhy.cloud.service;

import com.zhy.cloud.dto.LoginUser;
import com.zhy.cloud.dto.Token;
import com.zhy.cloud.utils.BaseResp;
import org.springframework.security.core.Authentication;

/**
 * Token管理器<br>
 * 可存储到redis或者数据库<br>
 * 具体可看实现类<br>
 * 默认基于redis，实现类为 com.boot.security.server.service.impl.TokenServiceJWTImpl<br>
 * 如要换成数据库存储，将TokenServiceImpl类上的注解@Primary挪到com.boot.security.server.service.impl.TokenServiceDbImpl
 */
public interface TokenService {



    Token saveToken(LoginUser loginUser);

    void refresh(LoginUser loginUser);

    LoginUser getLoginUser(String token);

    boolean deleteToken(String token);

}
