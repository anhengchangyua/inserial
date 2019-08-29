package com.zhy.cloud.utils;


import com.zhy.cloud.dto.LoginUser;
import com.zhy.cloud.model.Permission;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.CollectionUtils;

import java.util.List;
import java.util.stream.Collectors;

public class UserUtil {

    public static LoginUser getLoginUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            if (authentication instanceof AnonymousAuthenticationToken) {
                return null;
            }

            if (authentication instanceof UsernamePasswordAuthenticationToken) {
                return (LoginUser) authentication.getPrincipal();
            }
        }

        return null;
    }

    public static List<Permission> getCurrentPermissionsList(List<Permission> permissionList) {
        //父级菜单
        final List<Permission> permissions = permissionList.stream().filter(l -> l.getType().equals(1))
                .collect(Collectors.toList());
        // 2018.06.09 支持多级菜单
        List<Permission> firstLevel = permissions.stream().filter(p -> p.getParentId().equals(0L)).collect(Collectors.toList());
        for (Permission p : firstLevel) {
            setChild(p, permissionList);
        }
        return firstLevel;

    }

    /**
     * 设置子元素
     * 2018.06.09
     *
     * @param p
     * @param permissions
     */
    private static void setChild(Permission p, List<Permission> permissions) {
        List<Permission> child = permissions.parallelStream().filter(a -> a.getParentId().equals(p.getId())).collect(Collectors.toList());
        p.setChild(child);
        if (!CollectionUtils.isEmpty(child)) {
            child.parallelStream().forEach(c -> {
                //递归设置子元素，多级菜单支持
                setChild(c, permissions);
            });
        }
    }

}
