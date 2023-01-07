package com.example.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class User {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	private String email;
	private String password;

	private String employment;
	private String time;
	private String resident;
	private int income;
	private String mortgage;
	private int creditcards;
	private String overdue;
	private String bankruptcy;
	
	private String defaults = "Do not use profile by default"; //used to set defaults for filling out the form

	private String role = "user";

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getEmployment() {
		return employment;
	}

	public void setEmployment(String employment) {
		this.employment = employment;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getResident() {
		return resident;
	}

	public void setResident(String resident) {
		this.resident = resident;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public String getMortgage() {
		return mortgage;
	}

	public void setMortgage(String mortgage) {
		this.mortgage = mortgage;
	}

	public int getCreditcards() {
		return creditcards;
	}

	public void setCreditcards(int creditcards) {
		this.creditcards = creditcards;
	}

	public String getOverdue() {
		return overdue;
	}

	public void setOverdue(String overdue) {
		this.overdue = overdue;
	}

	public String getBankruptcy() {
		return bankruptcy;
	}

	public void setBankruptcy(String bankruptcy) {
		this.bankruptcy = bankruptcy;
	}

	public String getDefaults() {
		return defaults;
	}

	public void setDefaults(String defaults) {
		this.defaults = defaults;
	}

	public void setProfile(UserProfile u) {

		employment = u.getEmployment();
		time = u.getTime();
		resident = u.getResident();
		income = u.getIncome();
		mortgage = u.getMortgage();
		creditcards = u.getCreditcards();
		overdue = u.getOverdue();
		bankruptcy = u.getBankruptcy();
	}

	@Override
	public String toString() {
		return "User [employment=" + employment + ", time=" + time + ", resident=" + resident + ", income=" + income
				+ ", mortgage=" + mortgage + ", creditcards=" + creditcards + ", overdue=" + overdue + ", bankruptcy="
				+ bankruptcy + "]";
	}
	
}
