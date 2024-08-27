package com.practice.controller;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.practice.entities.User;
import com.practice.repositories.UserRepo;

@Controller
public class MyController {
	
	@Autowired
	private UserRepo userRepo;

	@RequestMapping("/index")
	public String index() {
		
		System.out.println("Inside Index Page.");
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String login() {
		
		System.out.println("Inside Login Page.");
		
		return "login";
	}
	
	@PostMapping("/login")
	public String userLogin(@ModelAttribute("user") User user, BindingResult result) {
		
		System.out.println("UserName = " + user.getEmail());
		System.out.println("Password = " + user.getPassword());
		
		String userId = user.getEmail();
		
		if(this.userRepo.findById(userId).isEmpty()) {
			return "unsuccessful";
		}
		
		Optional<User> userData = userRepo.findById(userId);
		
		if(user.getPassword().equals(userData.get().getPassword())) {
			System.out.println("Valid User.");
			return "successful";
		}
		else {
			System.out.println("Invalid User");
			return "unsuccessful";
		}
	}
	
	@GetMapping("/register")
	public String userRegister() {
		
		System.out.println("Inside Registeration Page");
		
		return "register";
	}
	
	@PostMapping("/register")
	public String userRegister(@Valid @ModelAttribute("user") User user, BindingResult result) {
		
		if(result.hasErrors()) {
			return "unsuccessful";
		}
		else {
			
			System.out.println(user);
			
			this.userRepo.save(user);
			
			return "successful";
		}
	}
}
