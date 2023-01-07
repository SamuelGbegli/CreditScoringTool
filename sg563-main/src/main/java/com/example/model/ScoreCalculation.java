package com.example.model;

public final class ScoreCalculation {

	public static int employment(String value) {
		switch (value) {
		case "Full-time":
			return 28;
		case "Part-time":
			return 7;
		case "Retired":
			return 15;
		case "Student":
			return -8;
		case "Unemployed":
			return -42;
		}
		return 0;
	}

	public static int time(String value) {
		switch (value) {
		case "Less than 1 year":
			return -25;
		case "1 to 3 years":
			return -10;
		case "More than 10 years":
			return 31;
		}
		return 0;
	}

	public static int resident(String value) {
		if (value.equals("Homeowner"))
			return 26;
		return 0;
	}

	public static int loanProportion(int loan, int income) {
		double p = (double) loan / (double) income;
		if (p < 0.1)
			return 43;
		else if (p > 0.1 && p < 0.25)
			return 22;
		else if (p > 0.6)
			return -28;
		return 0;
	}

	public static int mortgage(String value) {
		switch (value) {
		case "Less than £40,000":
			return 11;
		case "Between £60,000 and £100,000":
			return -9;
		case "Between £100,000 and £150,000":
			return -12;
		case "Between £150,000 and £250,000":
			return -16;
		case "More than £250,000":
			return -19;
		}
		return 0;
	}

	public static int creditcards(int value) {
		if (value == 1)
			return -17;
		else if (value > 1 && value < 3)
			return 12;
		else if (value > 9)
			return -18;
		return 0;
	}

	public static int overdue(String value) {
		switch (value) {
		case "0 days":
			return 14;
		case "Between 31 and 60 days":
			return -29;
		case "More than 60 days":
			return -41;
		}
		return 0;
	}

	public static int bankruptcy(String value) {
		if (value.equals("Yes"))
			return -50;

		return 9;

	}
}
