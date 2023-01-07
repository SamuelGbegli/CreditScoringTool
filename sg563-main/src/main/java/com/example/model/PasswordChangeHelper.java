package com.example.model;

public class PasswordChangeHelper {
	
	private String oldPassword;
	private String newPassword;
	private String confirmPassword;
	
	public PasswordChangeHelper() {
		
	}
	
	public String getOldPassword() {
		return oldPassword;
	}
	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	public boolean passwordsMatch() {
		return newPassword.equals(confirmPassword);
	}

}
