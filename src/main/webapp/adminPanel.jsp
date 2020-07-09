<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="adminStyle.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="main" class="container">

<div class="container">
	<table class="container">
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
		<form  class="container" action="addStudent" method="post"> 
		
		<label class="font">Registration Number :</label>
		<input placeholder="Enter registration number" name="registrationNumber" />
		<br>
		&emsp;&emsp;&emsp;&emsp;&nbsp<label class="font">Roll Number :</label>
		<input placeholder="Enter roll number"name="rollNumber" />
		<br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<label class="font">Name :</label>
		<input placeholder="Enter name" name="name" />
		<br>
		&emsp;&emsp;&emsp;&emsp;<label class="font">Father Name :</label>
		<input placeholder="Enter father's name" name="fatherName" />
		<br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;<label class="font">Branch :</label>
		<input placeholder="Branch name" name="branch" />
		<br>
		&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<label class="font">Department :</label>
		<input placeholder="Enter department name" name="department" />
		<br>
		&emsp;&emsp;&emsp;<label class="font">Hostel Number :</label>
		<input placeholder="Enter hostel number " name="hostelNo" />
		<br>
		&emsp;&emsp;&emsp;&emsp;<label class="font">Hostel Name :</label>
		<input placeholder="Enter hostel name" name="hostelName" />
		<br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<label class="font">Amount :</label>
		<input placeholder="Enter amount" name="amount" />
		<br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;<label class="font">Status :</label>
		<input placeholder="Status" name="status" />
		<br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<button  class="font" id="sub" type="submit">Add New Student</button>
		
		</form>
</div>


<div>
		
    &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<h2>${message}</h2>
</div>
</body>
</html>