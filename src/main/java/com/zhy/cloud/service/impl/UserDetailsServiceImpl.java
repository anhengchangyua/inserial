package com.zhy.cloud.service.impl;

import com.zhy.cloud.dao.PermissionDao;
import com.zhy.cloud.dto.LoginUser;
import com.zhy.cloud.model.Permission;
import com.zhy.cloud.model.SysUser;
import com.zhy.cloud.service.UserService;
import com.zhy.cloud.utils.UserUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * spring security登陆处理
 */
@SuppressWarnings("ALL")
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserService userService;
    @Autowired
    private PermissionDao permissionDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        SysUser sysUser = userService.getUser(username);
        if (sysUser == null) {
            throw new AuthenticationCredentialsNotFoundException("用户名不存在");
        } else if (sysUser.getStatus() == SysUser.Status.LOCKED) {
            throw new LockedException("用户被锁定,请联系管理员");
        } else if (sysUser.getStatus() == SysUser.Status.DISABLED) {
            throw new DisabledException("用户已作废");
        }

        LoginUser loginUser = new LoginUser();
        BeanUtils.copyProperties(sysUser, loginUser);

        List<Permission> permissions = permissionDao.listByUserId(sysUser.getId());

        loginUser.setPermissions(permissions);
        return loginUser;
    }

}
