package com.practice.payloads;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;

public class UserDto {

	
	@NotEmpty
	@Email(message = "Enter a valid email id.")
	private String email;
	
	@NotEmpty
	private String password;

	public UserDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDto(@NotEmpty @Email(message = "Enter a valid email id.") String email, @NotEmpty String password) {
		super();
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "UserDto [email=" + email + ", password=" + password + "]";
	}

}
