package com.example.mindbowser_project.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.mindbowser_project.entity.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long>{

}
