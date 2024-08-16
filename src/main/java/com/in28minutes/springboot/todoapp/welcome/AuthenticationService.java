package com.in28minutes.springboot.todoapp.welcome;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
	
	public boolean isAuthenticated(String name, String password) {
		return name.equalsIgnoreCase("in28Minutes") && password.equals("1234");
	}
}
