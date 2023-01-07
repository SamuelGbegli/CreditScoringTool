package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.example.model.User;
import com.example.repo.UserRepository;


@SpringBootApplication
public class TestProjectApplication implements ApplicationRunner {

	@Autowired
	private UserRepository urepo;
	
	public static void main(String[] args) {
		SpringApplication.run(TestProjectApplication.class, args);
	}

	@Autowired
	private PasswordEncoder pe;
	
	@Override
	public void run(ApplicationArguments args) throws Exception {
		User u1 = new User();
		u1.setName("guest");
		u1.setEmail("getramarku@tozya.com");
		u1.setPassword(pe.encode("password"));
		
		u1.setEmployment("Full-time");
		u1.setTime("1 to 3 years");
		u1.setResident("Renting");
		u1.setMortgage("Not a home owner");
		u1.setOverdue("0 days");
		u1.setIncome(35000);
		u1.setCreditcards(1);
		u1.setOverdue("0 days");
		u1.setBankruptcy("No");
		u1.setDefaults("Use profile, and show all options");
		
		u1 = urepo.save(u1);
	}

}
