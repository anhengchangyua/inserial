package com.zhy.cloud.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import com.google.common.collect.Lists;
import com.zhy.cloud.annotation.LogAnnotation;
import com.zhy.cloud.dao.PermissionDao;
import com.zhy.cloud.dto.LoginUser;
import com.zhy.cloud.model.Permission;
import com.zhy.cloud.service.PermissionService;
import com.zhy.cloud.utils.BaseResp;
import com.zhy.cloud.utils.ResultStatus;
import com.zhy.cloud.utils.UserUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.util.CollectionUtils;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.stream.Collectors;

@Api(tags = "权限")
@RestController
@RequestMapping("/permissions")
public class PermissionController {

    private final PermissionDao permissionDao;
    private final PermissionService permissionService;

    @Autowired
    public PermissionController(PermissionDao permissionDao, PermissionService permissionService) {
        this.permissionDao = permissionDao;
        this.permissionService = permissionService;
    }

    @ApiOperation(value = "当前登录用户拥有的权限")
    @GetMapping("/current")
    public BaseResp<HashMap<String, Object>> permissionsCurrent() {

        BaseResp<HashMap<String, Object>> baseResp = new BaseResp<HashMap<String, Object>>();
        LoginUser loginUser = UserUtil.getLoginUser();
        List<Permission> list = null;
        if (loginUser != null) {
            list = loginUser.getPermissions();
        }
        HashMap<String, Object> map = new HashMap<>();
        List<Permission> currentPermissionsList  = UserUtil.getCurrentPermissionsList(list);
        map.put("menus",currentPermissionsList);
        map.put("userInfo",UserUtil.getUserDvo(loginUser));
        baseResp.setCode(ResultStatus.SUCCESS.getCode());
        baseResp.setData(map);

        return baseResp;
    }

    /**
     * 菜单列表
     *
     * @param pId
     * @param permissionsAll
     * @param list
     */
    private void setPermissionsList(Long pId, List<Permission> permissionsAll, List<Permission> list) {
        for (Permission per : permissionsAll) {
            if (per.getParentId().equals(pId)) {
                list.add(per);
                if (permissionsAll.stream().filter(p -> p.getParentId().equals(per.getId())).findAny() != null) {
                    setPermissionsList(per.getId(), permissionsAll, list);
                }
            }
        }
    }

    @GetMapping
    @ApiOperation(value = "菜单列表")
//	@PreAuthorize("hasAuthority('sys:menu:query')")
    public List<Permission> permissionsList() {
        List<Permission> permissionsAll = permissionDao.listAll();

        List<Permission> list = Lists.newArrayList();
        setPermissionsList(0L, permissionsAll, list);

        return list;
    }

    @GetMapping("/all")
    @ApiOperation(value = "所有菜单")
//	@PreAuthorize("hasAuthority('sys:menu:query')")
    public JSONArray permissionsAll() {
        List<Permission> permissionsAll = permissionDao.listAll();
        JSONArray array = new JSONArray();
        setPermissionsTree(0L, permissionsAll, array);

        return array;
    }

    @GetMapping("/parents")
    @ApiOperation(value = "一级菜单")
    @PreAuthorize("hasAuthority('sys:menu:query')")
    public List<Permission> parentMenu() {

        return permissionDao.listParents();
    }

    /**
     * 菜单树
     *
     * @param pId
     * @param permissionsAll
     * @param array
     */
    private void setPermissionsTree(Long pId, List<Permission> permissionsAll, JSONArray array) {
        for (Permission per : permissionsAll) {
            if (per.getParentId().equals(pId)) {
                String string = JSONObject.toJSONString(per);
                JSONObject parent = (JSONObject) JSONObject.parse(string);
                array.add(parent);

                if (permissionsAll.stream().filter(p -> p.getParentId().equals(per.getId())).findAny() != null) {
                    JSONArray child = new JSONArray();
                    parent.put("child", child);
                    setPermissionsTree(per.getId(), permissionsAll, child);
                }
            }
        }
    }

    @GetMapping(params = "roleId")
    @ApiOperation(value = "根据角色id获取权限")
    @PreAuthorize("hasAnyAuthority('sys:menu:query','sys:role:query')")
    public List<Permission> listByRoleId(Long roleId) {
        return permissionDao.listByRoleId(roleId);
    }

    @LogAnnotation
    @PostMapping
    @ApiOperation(value = "保存菜单")
//	@PreAuthorize("hasAuthority('sys:menu:add')")
    public void save(@RequestBody Permission permission) {
        permissionDao.save(permission);
    }

    @GetMapping("/{id}")
    @ApiOperation(value = "根据菜单id获取菜单")
    @PreAuthorize("hasAuthority('sys:menu:query')")
    public Permission get(@PathVariable Long id) {
        return permissionDao.getById(id);
    }

    @LogAnnotation
    @PutMapping
    @ApiOperation(value = "修改菜单")
    @PreAuthorize("hasAuthority('sys:menu:add')")
    public void update(@RequestBody Permission permission) {
        permissionService.update(permission);
    }

    /**
     * 校验权限
     *
     * @return
     */
    @GetMapping("/owns")
    @ApiOperation(value = "校验当前用户的权限")
    public Set<String> ownsPermission() {
        List<Permission> permissions = UserUtil.getLoginUser().getPermissions();
        if (CollectionUtils.isEmpty(permissions)) {
            return Collections.emptySet();
        }

        return permissions.parallelStream().filter(p -> !StringUtils.isEmpty(p.getPermission()))
                .map(Permission::getPermission).collect(Collectors.toSet());
    }

    @LogAnnotation
    @DeleteMapping("/{id}")
    @ApiOperation(value = "删除菜单")
    @PreAuthorize("hasAuthority('sys:menu:del')")
    public void delete(@PathVariable Long id) {
        permissionService.delete(id);
    }
}
