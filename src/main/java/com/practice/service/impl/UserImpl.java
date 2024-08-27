package com.practice.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.entities.User;
import com.practice.exceptions.ResourseNotFoundException;
import com.practice.payloads.UserDto;
import com.practice.repositories.UserRepo;
import com.practice.service.UserService;

@Service
public class UserImpl implements UserService {

	@Autowired
	private UserRepo userRepo;

	@Autowired
	private ModelMapper modelMapper;

	@Override
	public UserDto createUser(UserDto userDto) {

		User user = dtoToUser(userDto);

		User savedUser = this.userRepo.save(user);

		return this.userToDto(savedUser);
	}

	@Override
	public UserDto updateUser(UserDto userDto, String email) {

		User user = this.userRepo.findById(email)
				.orElseThrow(() -> new ResourseNotFoundException("User", "email id", email));

		user.setPassword(userDto.getPassword());

		User updateUser = this.userRepo.save(user);
		UserDto userDto1 = this.userToDto(updateUser);

		return userDto1;

	}

	@Override
	public UserDto getUserByEmail(String email) {

		User user = this.userRepo.findById(email)
				.orElseThrow(() -> new ResourseNotFoundException("User", "email id", email));

		return userToDto(user);
	}

	@Override
	public List<UserDto> getAllUsers() {

		List<User> users = this.userRepo.findAll();

		List<UserDto> userDtos = users.stream().map(user -> this.userToDto(user)).collect(Collectors.toList());

		return userDtos;
	}

	@Override
	public void DeleteUser(String email) {
		
		User user = this.userRepo.findById(email).orElseThrow(() -> new ResourseNotFoundException("User", "email id", email));

		this.userRepo.delete(user);

	}

	// model mapper
	private UserDto userToDto(User user) {

		UserDto userDto = this.modelMapper.map(user, UserDto.class);

		return userDto;
	}

	private User dtoToUser(UserDto userDto) {

		User user = this.modelMapper.map(userDto, User.class);

		return user;
	}

}
