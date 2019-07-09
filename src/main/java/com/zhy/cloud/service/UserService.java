package com.zhy.cloud.service;


import com.zhy.cloud.dto.UserDto;
import com.zhy.cloud.model.User;

public interface UserService {

	User saveUser(UserDto userDto);
	
	User updateUser(UserDto userDto);

	String passwordEncoder(String credentials, String salt);

	User getUser(String username);

	void changePassword(String username, String oldPassword, String newPassword);

}
