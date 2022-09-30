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
	
}
