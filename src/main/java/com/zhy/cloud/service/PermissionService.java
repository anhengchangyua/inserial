package com.zhy.cloud.service;


import com.zhy.cloud.model.Permission;

public interface PermissionService {

	void save(Permission permission);

	void update(Permission permission);

	void delete(Long id);
}
