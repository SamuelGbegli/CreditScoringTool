/*
 * Helper class to set a user's default profile
 * 
 */

package com.example.model;

public class UserProfile {

	private String employment;
	private String time;
	private String resident;
	private int income;
	private String mortgage;
	private int creditcards;
	private String overdue;
	private String bankruptcy;

	public UserProfile() {

	}

	public UserProfile(User user) {
		employment = user.getEmployment();
		time = user.getTime();
		resident = user.getResident();
		income = user.getIncome();
		mortgage = user.getMortgage();
		creditcards = user.getCreditcards();
		overdue = user.getOverdue();
		bankruptcy = user.getBankruptcy();
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

	@Override
	public String toString() {
		return "UserProfile [employment=" + employment + ", time=" + time + ", resident=" + resident + ", income="
				+ income + ", mortgage=" + mortgage + ", creditcards=" + creditcards + ", overdue=" + overdue
				+ ", bankruptcy=" + bankruptcy + "]";
	}

}
