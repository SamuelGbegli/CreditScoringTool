package com.example.controller;

import java.io.IOException;
import java.security.Principal;
import java.util.ArrayList;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.User;
import com.example.model.UserProfile;
import com.example.helper.EmailSender;
import com.example.helper.PDFGenerator;
import com.example.model.PasswordChangeHelper;
import com.example.model.ProfileHelper;
import com.example.model.ScoreModel;
import com.example.model.ScoreSummary;
import com.example.repo.ScoreRepository;
import com.example.repo.UserRepository;
import com.example.service.ScoreService;
import com.itextpdf.text.DocumentException;

import antlr.collections.List;

@Controller
public class UserController {

	@Autowired
	private UserRepository urepo;

	@Autowired
	private ScoreRepository srepo;

	@Autowired
	private ScoreService sservice;

	@Autowired
	private PasswordEncoder pe;

	@RequestMapping("/profile")
	public String editprofile(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		System.out.println(u);
		model.addAttribute("user", u);
		model.addAttribute("profile", new UserProfile(u));
		System.out.println(u);
		return "UserProfile";
	}

	@PostMapping("/saveprofile")
	public String saveprofile(@ModelAttribute UserProfile userProfile, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		u.setProfile(userProfile);
		System.out.println(userProfile);
		u = urepo.save(u);
		return "redirect:/settings";
	}

	@RequestMapping("/calculate")
	public String calculate(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		model.addAttribute("user", u);
		ScoreModel s = new ScoreModel();
		model.addAttribute("score", s);
		return "CreditCalculationPage";
	}

	@PostMapping("/results")
	public String results(@ModelAttribute ScoreModel score, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		score.setParameters(u);
		score.calculate();
		srepo.save(score);
		model.addAttribute("score", score);
		model.addAttribute("percentage", score.defaultPercentage());
		return "ScoreResult";
	}

	@RequestMapping("/pastscores")
	public String viewScores(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		java.util.List<ScoreModel> scores = srepo.findAllByUser(u);
		model.addAttribute("scores", scores);
		return "ScoreList";
	}

	@RequestMapping("/view/{id}")
	public String viewScore(@PathVariable Integer id, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		ScoreModel s = sservice.getScore(id);
		if (s == null) {
			return "Error";
		}
		if (s.getUser() != u)
			return "security/denied";
		ScoreSummary ss = new ScoreSummary(s);
		model.addAttribute("summary", ss);
		model.addAttribute("score", s);
		return "ScoreView";
	}

	@RequestMapping("/delete/{id}")
	public String deleteScore(@PathVariable Integer id, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		ScoreModel s = sservice.getScore(id);
		if (s == null) {
			return "Error";
		}
		if (s.getUser() != u)
			return "security/denied";
		srepo.deleteById(id);
		return "redirect:pastscores";
	}

	@RequestMapping("/settings")
	public String settings(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		System.out.println(u);
		model.addAttribute("user", u);
		return "Settings";
	}

	@RequestMapping("/profilesettings")
	public String profilePreferences(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		model.addAttribute("user", u);
		model.addAttribute("profile", new ProfileHelper());
		return "ProfileSettings";
	}

	@PostMapping("/saveprofilepreferences")
	public String saveProfileSettings(@ModelAttribute ProfileHelper profile, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		u.setDefaults(profile.getResult());
		urepo.save(u);
		return "redirect:settings";
	}

	@RequestMapping("/deleteall")
	public String deleteAllScores(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		for (ScoreModel s : srepo.findAllByUser(u))
			srepo.delete(s);
		return "redirect:pastscores";
	}

	@RequestMapping("/changeemail")
	public String changeEmail(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		model.addAttribute("user", u);
		model.addAttribute("profile", new ProfileHelper());
		return "ChangeEmail";
	}

	@RequestMapping("/changepassword")
	public String changePassword(Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		model.addAttribute("user", u);
		model.addAttribute("password", new PasswordChangeHelper());
		return "ChangePassword";
	}

	@PostMapping("/saveemail")
	public String saveEmail(@ModelAttribute ProfileHelper email, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		u.setEmail(email.getResult());
		urepo.save(u);
		return "redirect:settings";
	}

	@PostMapping("/savepassword")
	public String savePassword(@ModelAttribute PasswordChangeHelper password, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		if (password.getNewPassword().equals(password.getConfirmPassword())
				&& pe.matches(password.getOldPassword(), u.getPassword())) {
			u.setPassword(pe.encode(password.getNewPassword()));
			urepo.save(u);
			return "redirect:settings";
		}
		urepo.save(u);
		return "redirect:changepassword";
	}

	@RequestMapping("/send/{id}")
	public String sendReport(@PathVariable Integer id, Model model, Principal principal) {
		User u = urepo.findByName(principal.getName());
		ScoreModel score = sservice.getScore(id);
		try {
			new EmailSender().send(u.getEmail());
		} catch (MessagingException e) {

			e.printStackTrace();
		} catch (IOException e) {

			e.printStackTrace();
		}
		return "ScoreList";
	}

	@RequestMapping("/export/{id}")
	public void exportReport(@PathVariable Integer id, HttpServletResponse response)
			throws DocumentException, IOException {
		response.setContentType("application/pdf");
        response.setHeader("Content-Disposition", "attachment; filename=report.pdf");
		
		new PDFGenerator().GenerateReport(sservice.getScore(id), response);
	}
}
