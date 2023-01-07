/**
 * Class to generate a summary for a score when it's viewed
 * 
 *  
 */

package com.example.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ScoreSummary {

	private int loan;
	private int income;
	private int score;
	private int odds;
	private String date;

	private Map<String, String> scoreInput = new HashMap<String, String>();
	private Map<String, Integer> scoreValues = new HashMap<String, Integer>();

	private List<String> positiveScores = new ArrayList<String>();
	private List<String> negativeScores = new ArrayList<String>();
	private List<String> neutralScores = new ArrayList<String>();

	public ScoreSummary() {

	}

	public ScoreSummary(ScoreModel s) {
		loan = s.getLoan();
		income = s.getIncome();
		score = s.getScore();
		odds = (int) s.defaultOdds();
		date = s.getDate();

		scoreInput.put("Employment status", s.getEmployment());
		scoreInput.put("Time in current employment", s.getTime());
		scoreInput.put("Residential status", s.getResident());
		scoreInput.put("Outstanding mortgage status", s.getMortgage());
		scoreInput.put("Number of credit cards", Integer.toString(s.getCreditcards()));
		scoreInput.put("Outstanding credit arrangements", s.getOverdue());
		scoreInput.put("Declared ankrupcy in the last 5 years?", s.getBankruptcy());

		scoreValues.put("Employment status", ScoreCalculation.employment(s.getEmployment()));
		scoreValues.put("Time in current employment", ScoreCalculation.time(s.getTime()));
		scoreValues.put("Residential status", ScoreCalculation.resident(s.getResident()));
		scoreValues.put("Proportion of loan to income", ScoreCalculation.loanProportion(loan, income));
		scoreValues.put("Outstanding mortgage status", ScoreCalculation.mortgage(s.getMortgage()));
		scoreValues.put("Number of credit cards", ScoreCalculation.creditcards(s.getCreditcards()));
		scoreValues.put("Outstanding credit arrangements", ScoreCalculation.overdue(s.getOverdue()));
		scoreValues.put("Bankrupcy status in last 5 years", ScoreCalculation.bankruptcy(s.getBankruptcy()));

		for (Map.Entry<String, Integer> x : scoreValues.entrySet()) {
			if (x.getValue() >= 0)
				positiveScores.add(x.getKey());
			else if (x.getValue() <= 0)
				negativeScores.add(x.getKey());
			else
				neutralScores.add(x.getKey());
		}

	}

	public int getLoan() {
		return loan;
	}

	public void setLoan(int loan) {
		this.loan = loan;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public int getOdds() {
		return odds;
	}

	public void setOdds(int odds) {
		this.odds = odds;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Map<String, String> getScoreInput() {
		return scoreInput;
	}

	public void setScoreInput(Map<String, String> scoreInput) {
		this.scoreInput = scoreInput;
	}

	public Map<String, Integer> getScoreValues() {
		return scoreValues;
	}

	public void setScoreValues(Map<String, Integer> scoreValues) {
		this.scoreValues = scoreValues;
	}

	public List<String> getPositiveScores() {
		return positiveScores;
	}

	public void setPositiveScores(List<String> positiveScores) {
		this.positiveScores = positiveScores;
	}

	public List<String> getNegativeScores() {
		return negativeScores;
	}

	public void setNegativeScores(List<String> negativeScores) {
		this.negativeScores = negativeScores;
	}

	public List<String> getNeutralScores() {
		return neutralScores;
	}

	public void setNeutralScores(List<String> neutralScores) {
		this.neutralScores = neutralScores;
	}

}
