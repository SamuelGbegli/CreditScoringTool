package com.example.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.model.*;

public interface ScoreRepository extends CrudRepository<ScoreModel, Integer>{
	
	public ScoreModel findById(int id);
	public List<ScoreModel> findAllByUser(User u);
	public void deleteById(int id);
}
