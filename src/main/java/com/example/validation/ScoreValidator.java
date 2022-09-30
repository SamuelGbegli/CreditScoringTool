package com.example.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.example.model.ScoreModel;

public class ScoreValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return ScoreModel.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "employment", "Please select an option.");
		ValidationUtils.rejectIfEmpty(errors, "time", "Please select an option.");
		ValidationUtils.rejectIfEmpty(errors, "resident", "Please select an option.");
		ValidationUtils.rejectIfEmpty(errors, "mortgage", "Please select an option.");
		ValidationUtils.rejectIfEmpty(errors, "overdue", "Please select an option.");
		ValidationUtils.rejectIfEmpty(errors, "bankruptcy", "Please select an option.");
	}
}
