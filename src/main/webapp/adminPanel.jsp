<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div>
	<table>
		<thead>
			<tr>
			<th>Name</th>
			<th>Father Name</th>
			<th>Registration Number</th>
			<th>Roll Number</th>
			<th>Amount</th>
			<th>Status</th>
			<th>Branch</th>
			<th>Department</th>
			<th>Hostel Name</th>
			<th>Hostel number</th>
				</tr>
		</thead>
		
		<tbody>
		 	<tr <c:forEach var="stud" items="${studList}">>
		 	
		 	<td>${stud.getName()}</td>
		 	<td>${stud.getFatherName()}</td>
		 	<td>${stud.getRegistrationNumber()}</td>
		 	<td>${stud.getRollNumber()}</td>
		 	<td>${stud.getAmount()}</td>
		 	<td>${stud.getStatus()}</td>
		 	<td>${stud.getBranch()}</td>
		 	<td>${stud.getDepartment()}</td>
		 	<td>${stud.getHostelName()}</td>
		 	<td>${stud.getHostelNo()}</td>
		 	
		 	</tr </c:forEach> >
		</tbody>
	</table>
</div>

<div>
		<form action="addStudent" method="post"> 
		
		<label>Registration Number</label>
		<input name="registrationNumber" />
		<br>
		<label>Roll Number</label>
		<input name="rollNumber" />
		<br>
		<label>Name</label>
		<input name="name" />
		<br>
		<label>Father Name</label>
		<input name="fatherName" />
		<br>
		<label>Branch</label>
		<input name="branch" />
		<br>
		<label>Department</label>
		<input name="department" />
		<br>
		<label>Hostel Number</label>
		<input name="hostelNo" />
		<br>
		<label>Hostel Name</label>
		<input name="hostelName" />
		<br>
		<label>Amount</label>
		<input name="amount" />
		<br>
		<label>Status</label>
		<input name="status" />
		<br>
		<button type="submit">Add New Student</button>
		
		</form>
</div>


<div>
		
		<h2>${message}</h2>
</div>
</body>
</html>