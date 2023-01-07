package com.example.validation;

import javax.mail.internet.InternetAddress;

public class EmailValidator {
	
	public boolean isValid(String email) {
		
		try{
			InternetAddress address = new InternetAddress(email);
			address.validate();
			return true;
		}
		catch (Exception e) {
			return false;
		}
	}
	
}
