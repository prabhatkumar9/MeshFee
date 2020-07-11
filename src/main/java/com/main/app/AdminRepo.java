package com.main.app;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminRepo extends JpaRepository<Admin , Integer>{
	public Admin findByEmail(String email);
	public Admin findByUsername(String username);
	public Admin findByEmailAndPassword(String email, String password);
}
