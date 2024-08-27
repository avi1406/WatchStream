package com.practice.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.practice.entities.User;

@Repository
public interface UserRepo extends JpaRepository<User, String>{

}
