package com.practice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.practice.payloads.ApiResponse;
import com.practice.payloads.UserDto;
import com.practice.service.UserService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("netflix/users")
public class UserController {

	@Autowired
	private UserService userService;

	// create
	@PostMapping("/")
	public ResponseEntity<UserDto> createUser(@Valid @RequestBody UserDto userDto) {

		UserDto createdUser = this.userService.createUser(userDto);

		return new ResponseEntity<>(createdUser, HttpStatus.CREATED);

	}

	// put update user
	@PutMapping("/{email}")
	public ResponseEntity<UserDto> updateUser(@Valid @RequestBody UserDto userDto, @PathVariable("email") String email) {
		UserDto updateUserDto = this.userService.updateUser(userDto, email);

		return new ResponseEntity<>(updateUserDto, HttpStatus.OK);
	}

	// delete
	@DeleteMapping("/{email}")
	public ResponseEntity<ApiResponse> deleteUser(@PathVariable("email") String email) {
		this.userService.DeleteUser(email);
		return new ResponseEntity(new ApiResponse("User Deleted Successfully", true), HttpStatus.OK);
	}

	// get all users
	@GetMapping("/")
	public ResponseEntity<List<UserDto>> getAllUsers() {

		return ResponseEntity.ok(this.userService.getAllUsers());
	}

	// get single user
	@GetMapping("/{email}")
	public ResponseEntity<UserDto> getUsers(@PathVariable("email") String email) {

		return ResponseEntity.ok(this.userService.getUserByEmail(email));
	}

}

