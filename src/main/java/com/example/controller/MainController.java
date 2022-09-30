package com.example.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.User;
import com.example.model.ScoreModel;
import com.example.model.UserRegistration;
import com.example.repo.ScoreRepository;
import com.example.repo.UserRepository;
import com.example.validation.ScoreValidator;

@Controller
public class MainController {

	@Autowired
	private UserRepository urepo;

	@Autowired
	private ScoreRepository srepo;

	@Autowired
	private PasswordEncoder passwordEncoder;

	ScoreModel demoScore;

	@RequestMapping("/")
	public String home(Model model, Principal principal) {
		if (principal != null) return "redirect:/userhome";
		demoScore = null;
		return "Home";
	}

	@RequestMapping("/demo")
	public String test(Model model, Principal principal) {
		if (principal != null) return "redirect:/userhome";
		demoScore = null;
		model.addAttribute("score", new ScoreModel());
		return "DemoCreditCalculationPage";
	}

	@PostMapping("/demoresults")
	public String calculate(@ModelAttribute ScoreModel score, Model model) {
		model.addAttribute("score", score);
		score.calculate();
		demoScore = score;
		model.addAttribute("score", score);
		model.addAttribute("percentage", score.defaultPercentage());
		return "DemoScoreResult";
	}

	@RequestMapping("/userhome")
	public String userhome(Principal p, Model model) {
		User u = urepo.findByName(p.getName());
		model.addAttribute("user", u);
		model.addAttribute("scores", srepo.findAllByUser(u));
		return "UserHomePage";
	}

	@RequestMapping("/register")
	public String register(Model model) {
		model.addAttribute("user", new UserRegistration());
		return "register";
	}

	@PostMapping("/createuser")
	public String newuser(@ModelAttribute UserRegistration user, HttpServletRequest request, Model model) {
		if (user.passwordsMatch()) {
			User u = new User();
			u.setName(user.getName());
			u.setPassword(passwordEncoder.encode(user.getPassword()));

			if (demoScore != null) {
				demoScore.setUser(u);
				srepo.save(demoScore);
				demoScore = null;
			}

			urepo.save(u);
			return "redirect:/login-page";
		}
		return "redirect:/register";

	}

	void authenticateUser(User u, HttpServletRequest request) {
		UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(u.getName(),
				u.getPassword());

		request.getSession();
		token.setDetails(new WebAuthenticationDetails(request));
	}
}
