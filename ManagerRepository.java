package com.example.mindbowser_project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.mindbowser_project.entity.Manager;

public interface ManagerRepository extends JpaRepository<Manager, Long>{

	@Query
	Manager findByEMAIL(String email);

}
