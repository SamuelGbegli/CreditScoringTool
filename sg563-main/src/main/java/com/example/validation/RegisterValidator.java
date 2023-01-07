package com.example.validation;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.model.User;
import com.example.repo.UserRepository;

public class RegisterValidator {

	@Autowired
	private UserRepository urepo;
	
	public boolean nameExists(String s) {
		for (User u : urepo.findAll()) if (u.getName().equals(s)) return false;
		return true;
	}
}
