package com.practice.service;

import java.util.List;

import com.practice.payloads.UserDto;

public interface UserService {

	UserDto createUser(UserDto userDto);

	UserDto updateUser(UserDto userDto, String email);

	UserDto getUserByEmail(String email);

	List<UserDto> getAllUsers();

	void DeleteUser(String email);
}
