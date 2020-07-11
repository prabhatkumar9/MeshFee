package com.main.app;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="studentId")
	private Long studentId;
	
	
	@Column(name="registrationNumber")
	private Long registrationNumber;
	
	@Column(name="rollNumber")
	private int rollNumber;
	
	@Column(name="name")
	private String name;
	
	@Column(name="fatherName")
	private String fatherName;
	
	@Column(name="branch")
	private String branch;
	
	@Column(name="department")
	private String department;
	
	@Column(name="hostelNo")
	private Integer hostelNo;
	
	@Column(name="hostelName")
	private String hostelName;
	
	@Column(name="amount")
	private Double amount;
	
	@Column(name="status")
	private String status;

	public Long getStudentId() {
		return studentId;
	}

	public void setStudentId(Long studentId) {
		this.studentId = studentId;
	}

	public Long getRegistrationNumber() {
		return registrationNumber;
	}

	public void setRegistrationNumber(Long registrationNumber) {
		this.registrationNumber = registrationNumber;
	}

	public Integer getRollNumber() {
		return rollNumber;
	}

	public void setRollNumber(Integer rollNumber) {
		this.rollNumber = rollNumber;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public Integer getHostelNo() {
		return hostelNo;
	}

	public void setHostelNo(Integer hostelNo) {
		this.hostelNo = hostelNo;
	}

	public String getHostelName() {
		return hostelName;
	}

	public void setHostelName(String hostelName) {
		this.hostelName = hostelName;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}


	
	
	
}
