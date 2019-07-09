package com.zhy.cloud.service;


import com.zhy.cloud.dto.UserDto;
import com.zhy.cloud.model.SysUser;

public interface UserService {

	SysUser saveUser(UserDto userDto);

	SysUser updateUser(UserDto userDto);

	SysUser getUser(String username);

	void changePassword(String username, String oldPassword, String newPassword);

}
