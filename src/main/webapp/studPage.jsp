<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="std.css">
    <script src="login.js"></script>
    <title> Maharshi Dyanand University</title>
</head>

<body class="bo" id="main">
     <header id="header">Student Info</header>
	<div id="div">
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
			<button class="font" id="submit" type="submit">Pay Amount</button>
	</div>
</body>

</html>