package com.zhy.cloud.config;

import com.zhy.cloud.dto.LoginUser;
import com.zhy.cloud.dto.Token;
import com.zhy.cloud.dto.UserDto;
import com.zhy.cloud.dvo.UserDvo;
import com.zhy.cloud.filter.TokenFilter;
import com.zhy.cloud.model.Permission;
import com.zhy.cloud.service.TokenService;
import com.zhy.cloud.utils.BaseResp;
import com.zhy.cloud.utils.ResponseUtil;
import com.zhy.cloud.utils.ResultStatus;
import com.zhy.cloud.utils.UserUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * spring security处理器
 */
@Configuration
public class SecurityHandlerConfig {

    @Autowired
    private TokenService tokenService;

    /**
     * 登陆成功，返回Token
     *
     * @return
     */
    @Bean
    public AuthenticationSuccessHandler loginSuccessHandler() {
        return new AuthenticationSuccessHandler() {

            @Override
            public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                                Authentication authentication) throws IOException, ServletException {
                LoginUser loginUser = (LoginUser) authentication.getPrincipal();
                Token token = tokenService.saveToken(loginUser);
                List<Permission> currentPermissionsList = UserUtil.getCurrentPermissionsList(loginUser.getPermissions());

                UserDvo userDvo = UserUtil.getUserDvo(loginUser);

                Map<String, Object> map = new HashMap<>();
                map.put("code", ResultStatus.getCode("SUCCESS"));
                map.put("message", "登录成功");
                map.put("menus", currentPermissionsList);
                map.put("token", token.getToken());
                map.put("userInfo", userDvo);
                ResponseUtil.responseJson(response, map);
            }
        };
    }


    /**
     * 登陆失败
     *
     * @return
     */
    @Bean
    public AuthenticationFailureHandler loginFailureHandler() {
        return new AuthenticationFailureHandler() {

            @Override
            public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
                                                AuthenticationException exception) throws IOException, ServletException {
                String msg = null;
                if (exception instanceof BadCredentialsException) {
                    msg = "密码错误";
                } else {
                    msg = exception.getMessage();
                }
                BaseResp info = new BaseResp(ResultStatus.getCode("FAIL"), msg);
                ResponseUtil.responseJson(response, info);
            }
        };

    }

    /**
     * 未登录，返回401
     *
     * @return
     */
    @Bean
    public AuthenticationEntryPoint authenticationEntryPoint() {
        return new AuthenticationEntryPoint() {

            @Override
            public void commence(HttpServletRequest request, HttpServletResponse response,
                                 AuthenticationException authException) throws IOException, ServletException {
                BaseResp info = new BaseResp(ResultStatus.http_status_unauthorized);
                ResponseUtil.responseJson(response, info);
            }
        };
    }

    /**
     * 退出处理
     *
     * @return
     */
    @Bean
    public LogoutSuccessHandler logoutSussHandler() {
        return new LogoutSuccessHandler() {

            @Override
            public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
                BaseResp info = new BaseResp(ResultStatus.getCode("SUCCESS"), "退出成功", "");
                String token = TokenFilter.getToken(request);
                tokenService.deleteToken(token);
                ResponseUtil.responseJson(response, info);
            }
        };

    }

}
