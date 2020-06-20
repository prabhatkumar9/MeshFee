package com.main.app;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class HomeController {
	
	@Autowired
	private AdminRepo adamrepo;
	
	@Autowired
	private StudentRepo studrepo;

	@RequestMapping("home")
//	@ResponseBody   // this will return textOnly,  not jsp page
	public String home() {
		System.out.println("console is working");
		return "home";
	}
	
	
	@PostMapping("/adminLogin")
	public ModelAndView adminLogin(@RequestParam("adminName") String name, @RequestParam("pass") String password) {
		ModelAndView mv = new ModelAndView();
		List<Student> studentList = studrepo.findAll();
		mv.addObject("studList",studentList); /// key and variable name
		mv.setViewName("adminPanel"); // set jsp page name to redirect
		return mv;
	}
	
	
	
	@PostMapping("/addStudent")
	public ModelAndView studentLogin(Student student) {
		ModelAndView mv = new ModelAndView();
		studrepo.saveAndFlush(student);
		mv.addObject("message","Student successfully Added");
		mv.setViewName("adminPanel");
		return mv;
	}
	
	
//	/// for student 
//	@GetMapping("/getStudent")
//	public ModelAndView studentLogin(Student student) {
//		ModelAndView mv = new ModelAndView();
//		
//		mv.addObject("obj",student);
//		mv.setViewName("adminPanel");
//		return mv;
//	}
	
	@PostMapping("/studentLogin")
	public ModelAndView studentLogin(@RequestParam("reg") Long registration, @RequestParam("rollno") int rollnumber) {
		ModelAndView mv = new ModelAndView();
		System.out.println(registration);
		System.out.println(rollnumber);
		// fetch student details
		Student student = studrepo.findByRollNumber(rollnumber);
		mv.addObject("std",student); // add student object
	
		mv.setViewName("studPage");
		return mv;
	}
	
	
//	@PostMapping("/add")
//	public void AddNewProduct(@RequestBody Product product) {
//		productservice.AddNewProduct(product);
//	}
	
}
