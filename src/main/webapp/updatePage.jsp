<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div>
		<form class="container" action="update" method="post">

			<label class="font">Registration Number :</label> <input
				type="number" name="registrationNumber" /> ${st.registrationNumber}<br>


			&emsp;&emsp;&emsp;&emsp;&nbsp<label class="font">Roll Number
				:</label> <input type="number" name="rollNumber" />${st.rollNumber} <br>

			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<label
				class="font">Name :</label> <input name="name" /> ${st.name}<br>

			&emsp;&emsp;&emsp;&emsp;<label class="font">Father Name :</label> <input
				name="fatherName" /> ${st.fatherName}<br>

			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;<label class="font">Branch
				:</label> <input name="branch" /> ${st.branch}<br>

			&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<label class="font">Department
				:</label> <input name="department" />${st.department} <br>

			&emsp;&emsp;&emsp;<label class="font">Hostel Number :</label> <input
				type="number" name="hostelNo" />${st.hostelNo} <br>
			&emsp;&emsp;&emsp;&emsp;<label class="font">Hostel Name :</label> <input
				name="hostelName" />${st.hostelName} <br>
			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;&nbsp;<label
				class="font">Amount :</label> <input type="number" name="amount" />${st.amount}
			<br> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;<label
				class="font">Status :</label> <input name="status" />${st.status} <br>

			&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<button class="font" id="sub" type="submit">SAVE</button>

		</form>
	</div>

</body>
</html>