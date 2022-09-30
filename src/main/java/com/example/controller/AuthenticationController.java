package com.example.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.model.User;
import com.example.repo.UserRepository;

@Controller
public class AuthenticationController {

	@Autowired
	UserRepository repo;

	@RequestMapping(value = "/login-form", method = RequestMethod.GET)
	public String loginForm() {
		return "security/login";
	}

	@RequestMapping(value = "/error-login", method = RequestMethod.GET)
	public String invalidLogin(Model model) {
		model.addAttribute("error", true);
		return "security/login";
	}

	@RequestMapping(value = "/success-login", method = RequestMethod.GET)
	public String successLogin(Principal principal) {
		User user = repo.findByName(principal.getName());
		
		return "redirect:/userhome";
	}

	@RequestMapping(value = "/access-denied", method = RequestMethod.GET)
	public String error() {
		return "security/denied";
	}
}