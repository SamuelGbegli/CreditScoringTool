package com.example.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class ScoreModel {

	@Id
	@GeneratedValue
	private int id;

	@ManyToOne
	private User user;

	private int score = 670;

	private int loan;
	private String employment;
	private String time;
	private String resident;
	private int income;
	private String mortgage;
	private int creditcards;
	private String overdue;
	private String bankruptcy;
	private String date = (new Date()).toString();

	public ScoreModel() {
	}

	public void setParameters(User u) {

		if (user == null) user = u;
		if (employment == null) employment = u.getEmployment();
		if (time == null) time = u.getTime();
		if (resident == null) resident = u.getResident();
		if (u.getDefaults().equals("Use profile, and only show unfilled options") && income == 0) income = u.getIncome();
		if (mortgage == null) mortgage = u.getMortgage();
		if (u.getDefaults().equals("Use profile, and only show unfilled options") && creditcards == 0) creditcards = u.getCreditcards();
		if (overdue == null) overdue = u.getOverdue();
		if (bankruptcy == null) bankruptcy = u.getBankruptcy();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getLoan() {
		return loan;
	}

	public void setLoan(int loan) {
		this.loan = loan;
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public double loanProportion() {
		return (double) loan / (double) income;
	}

	public void calculate() {
		score += ScoreCalculation.employment(employment);
		score += ScoreCalculation.time(time);
		score += ScoreCalculation.resident(resident);
		score += ScoreCalculation.loanProportion(loan, income);
		score += ScoreCalculation.mortgage(mortgage);
		score += ScoreCalculation.creditcards(creditcards);
		score += ScoreCalculation.overdue(overdue);
		score += ScoreCalculation.bankruptcy(bankruptcy);

	}

	public double defaultOdds() {
		double power = (double) score - 500;
		power = power / 20;
		return Math.pow(2, power);
	}

	public double defaultPercentage() {
		return (defaultOdds() / (defaultOdds() + 1)) * 100;
	}

	public Map<String, Integer> valueMappings() {
		Map<String, Integer> values = new HashMap<String, Integer>();

		return values;
	}

	@Override
	public String toString() {
		return "ScoreModel [score=" + score + ", loan=" + loan + ", employment=" + employment + ", time=" + time
				+ ", resident=" + resident + ", income=" + income + ", mortgage=" + mortgage + ", creditcards="
				+ creditcards + ", overdue=" + overdue + ", bankruptcy=" + bankruptcy + "]";
	}
}
