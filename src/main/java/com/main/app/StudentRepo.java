package com.main.app;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentRepo extends JpaRepository<Student, Long>{
	public List<Student> findByName(String name);
	
	public Student findByRollNumber(Integer rollNumber);
	public Student findByRegistrationNumber(Long registrationNumber);
	

}
