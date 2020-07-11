package com.main.app;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
public class HomeController {

	@Autowired
	private RegisterService registerService;

	@Autowired
	private StudentRepo studrepo;

	@RequestMapping("/payment")
	public ModelAndView payment() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("payment");
		return mv;
	}

	@RequestMapping("/home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		//		System.out.println("console is working");
		mv.setViewName("home");
		return mv;
	}


	@GetMapping("/studentLogin")
	public ModelAndView studentLogin(@RequestParam("reg") Long registration, @RequestParam("rollno") int rollnumber) {
		ModelAndView mv = new ModelAndView();
		System.out.println(registration);
		System.out.println(rollnumber);
		if(registration != null ) {
			// fetch student details
			Student student = studrepo.findByRegistrationNumber(registration);
			mv.addObject("std",student); // add student object
			mv.setViewName("studPage");

		}else{
			System.out.println("Student not found");
			// if student not found
			mv.addObject("stdmsg", "student notfound"); // add student object
			mv.setViewName("home");
		}

		return mv;
	}




	//	 admin panel section

	@ResponseBody   // add new admin
	@PostMapping("/add")
	public String registerUser(@RequestBody Admin register) throws Exception {
		ModelAndView mv = new ModelAndView();
		// compare with existing email
		String email = register.getEmail();
		if(email != null && !"".equals(email)) {
			Admin user = registerService.fetchUserById(email);
			if(user != null) {
				//throw new Exception("this email is already registered");
				return "this email is already registered";
			}
		}
		registerService.saveNewUser(register);
		return "New Admin added successfully";

	}


	@PostMapping("/adminLogin")
	public ModelAndView VerifyUser(@RequestParam("email") String email, @RequestParam("pass") String password, HttpSession session)  {
		Admin user = null;
		ModelAndView mv = new ModelAndView();
		if(email != null && password != null) {
			// compare with existing credentials
			user = registerService.verifyUserData(email,password);
			if(user == null) {

				mv.addObject("msg","bad credentials"); /// key and variable name
				mv.setViewName("home");

			}else {
				session.setAttribute("password",password );
				List<Student> studentList = studrepo.findAll();
				mv.addObject("studList",studentList); /// key and variable name
				mv.setViewName("adminPanel"); // set jsp page name to redirect

			}
		}
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


	@GetMapping("/get/{pid}")
	public ModelAndView getProductById(@PathVariable("pid") Long studentid){
		ModelAndView mv = new ModelAndView();
		Student stud =  studrepo.findById(studentid).orElse(null);
		mv.addObject("st",stud);
		mv.setViewName("updatePage");
		return mv;
	}


	@PutMapping("/update")
	public ModelAndView updateProduct(@RequestBody Student stud) {
		ModelAndView mv = new ModelAndView();
		studrepo.saveAndFlush(stud);
		mv.setViewName("adminPanel");
		return mv;
	}


	@DeleteMapping("/delete/{pid}")
	public ModelAndView deleteProduct(@PathVariable("pid") Long studentid) {
		ModelAndView mv = new ModelAndView();
		studrepo.deleteById(studentid);
		mv.setViewName("adminPanel");
		mv.addObject("deletemsg",  "deleted successfully");
		return mv;
	}



}


