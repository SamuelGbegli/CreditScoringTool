package com.example.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.ScoreModel;
import com.example.model.User;
import com.example.repo.ScoreRepository;

@Service
public class ScoreService {

	@Autowired
	ScoreRepository srepo;

	public ScoreModel getScore(Integer id) {
		for (ScoreModel s : srepo.findAll()) {
			if (s.getId() == id) return s;
		}
		return null;
	}
	
	public void deleteScore(Integer id) {
		for (ScoreModel s : srepo.findAll()) {
			if (s.getId() == id) srepo.delete(s);
		}
	}
	
	public void deleteAllScores(User u) {
		for (ScoreModel s : srepo.findAll()) {
			if (s.getUser() == u) srepo.delete(s);
		}
	}
	
	public Integer getNumberScores(User u) {
		int i = 0;
		for (ScoreModel s : srepo.findAll()) {
			if (s.getUser() == u) i++;
		}
		return i;
	}
	
}
