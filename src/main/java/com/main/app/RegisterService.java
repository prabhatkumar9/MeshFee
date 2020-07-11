package com.main.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

	@Autowired
	private AdminRepo registerRepo;
	
	
	public Admin saveNewUser(Admin register) {
		return registerRepo.save(register);
	}
	
	// verify for login
	public Admin verifyUserData(String email,String password) {
		return registerRepo.findByEmailAndPassword(email,password);
		
	}

	// fetch user data if email exist 
	public Admin fetchUserById(String email) {
		return registerRepo.findByEmail(email);
	}
}
