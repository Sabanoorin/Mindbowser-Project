package com.example.mindbowser_project.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.mindbowser_project.entity.Employee;
import com.example.mindbowser_project.entity.Manager;
import com.example.mindbowser_project.repositories.EmployeeRepository;
import com.example.mindbowser_project.repositories.ManagerRepository;

@Controller
public class ManagerController {
	
	@Autowired
	ManagerRepository managerRepo;
	
	@Autowired
	EmployeeRepository employeeRepo;

	@RequestMapping("/managerSignup")
	public String managerSignup() {
		return "managerSignup";
	}

	@RequestMapping("/saveSignup")
	public String saveSignup(@ModelAttribute Manager manager, ModelMap modelMap) {
		managerRepo.save(manager);
		modelMap.addAttribute("msg", "Signed up successfully");
		return "managerSignup";
	}

	@RequestMapping("/managerLogin")
	public String login() {
		return "login";
	}

	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("email") String email, @RequestParam("password") String password,ModelMap modelMap) {
		try {
			Manager manager = managerRepo.findByEMAIL(email);
			if (manager.getEMAIL().equals(email) && manager.getPASSWORD().equals(password)) {
				return "homescreen";
			} else {
				modelMap.addAttribute("msg", "invalid username/Password");
				return "login";
			}
		} catch (Exception e) {
			modelMap.addAttribute("msg", "invalid username/Password");
			return "login";
		}
	}
	
	@RequestMapping("/addEmployee")
	public String addEmployee() {
		return "addEmployee";
	}
	
	@RequestMapping("/savedetails")
	public String savedetails(@ModelAttribute Employee employee, ModelMap modelMap) {
		employeeRepo.save(employee);
		modelMap.addAttribute("msg", "Employee details saved successfully");
		return "addEmployee";
	}
	
	@RequestMapping("/listEmployee")
	public String listEmployee(ModelMap modelMap) {
		List<Employee> employee = employeeRepo.findAll();
		modelMap.addAttribute("Employees", employee);
		return "displayEmployee";
	}
	
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("id") Long id, ModelMap modelMap) {
		employeeRepo.deleteById(id);
		List<Employee> employee = employeeRepo.findAll();
		modelMap.addAttribute("Employees", employee);
		return "displayEmployee";
	}
	
	@RequestMapping("/updateEmployee")
	public String updateEmployee(@RequestParam("id") Long id, ModelMap modelMap) {
		Optional<Employee> findById = employeeRepo.findById(id);
		Employee employee = findById.get();
		modelMap.addAttribute("ID", employee.getID());
		modelMap.addAttribute("FIRST_NAME", employee.getFIRST_NAME());
		modelMap.addAttribute("LAST_NAME", employee.getLAST_NAME());
		modelMap.addAttribute("ADDRESS", employee.getADDRESS());
		modelMap.addAttribute("MOBILE", employee.getMOBILE());
		modelMap.addAttribute("CITY", employee.getCITY());
		return "editEmployee";
	}
	
	@RequestMapping("/updateEmployees")
	public String updateEmployees(@ModelAttribute Employee employee, ModelMap modelMap) {
		employeeRepo.save(employee);
		modelMap.addAttribute("msg", "Employee details is updated");
		List<Employee> employee1 = employeeRepo.findAll();
		modelMap.addAttribute("Employees", employee1);
		return "displayEmployee";
	}



}
