<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="homeStyle.css">
    <script src="login.js"></script>
    <title> Maharshi Dyanand University</title>
</head>

<body class="bo">
	<div>
			<h2>${std.name}</h2> 
			<br>
			<h3>${std.registrationNumber}</h3>
			<br>
			<h3>${std.rollNumber}</h3>
			<br>
			<h3>${std.fatherName}</h3>
			<br>
			<h3>${std.branch}</h3>
			<br>
			<h3>${std.department}</h3>
			<br>
			<h3>${std.hostelNo}</h3>
			<br>
			<h3>${std.hostelName}</h3>
			<br>
			<h3>${std.amount}</h3>
			<br>
			<h3>${std.status}</h3>
			<br>
			<button type="submit">Pay Amount</button>
	</div>
</body>

</html>