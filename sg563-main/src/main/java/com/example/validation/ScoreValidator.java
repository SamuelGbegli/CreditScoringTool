package com.example.validation;

import java.util.HashMap;
import java.util.Map;


import com.example.model.ScoreModel;

public class ScoreValidator{
	
	public Map<String,String> validate(ScoreModel s) {
		Map<String,String> errors = new HashMap<String,String>();
		if (s.getBankruptcy() == null) errors.put("bankruptcy", "Please select an option.");
		if (s.getEmployment() == null) errors.put("employment", "Please select an option.");
		if (s.getMortgage() == null) errors.put("mortgage", "Please select an option.");
		if (s.getOverdue() == null) errors.put("overdue", "Please select an option.");
		if (s.getResident() == null) errors.put("resident", "Please select an option.");
		if (s.getTime() == null) errors.put("time", "Please select an option.");
		if (s.getLoan() < 100 ) errors.put("time", "Please select an option.");
		if (s.getIncome() < 0 ) errors.put("income", "Income cannot be less than 0.");
		return errors;
	}
}
