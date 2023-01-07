package com.example.validation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

public class PasswordValidator {

	@Autowired
	private PasswordEncoder pe;
	
	public boolean confirmPassword(String a, String b) {
		if (a.equals(b)) return true;
		return false;
	}
	
	public boolean passwordCheck(String a, String b) {
		return pe.matches(a, b);
	}
}
