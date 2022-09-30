package com.example.repo;

import org.springframework.data.repository.CrudRepository;

import com.example.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
	 public User findByName(String name);
}
