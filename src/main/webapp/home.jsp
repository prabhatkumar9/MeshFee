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
    <nav>
        <ul class="topnav">
            <li class="list"><a class="active" href="Mdu.html">Home</a></li>

            <li class="list"><a href="Contact.html">Contact</a></li>
            <li class="list"><a href="About.html">About</a></li>
        </ul>
    </nav>
    <div id="container">
        <main id="main">
            <header class="main header">
                <div id="imgdm">
                    <img id="mduimg" src="images/mdu.png" />
                </div>
                <div>
                    <h1 class="head">Maharshi Dyanand University</h1>
                    <h3 class="he">Rohtak-124001, Haryana (INDIA)</h3>
                    <h5 class="he">(A State University established under Haryana Act No. XXV of 1975)</h5>
                    <h5 class="head">'A+' Grade University Accredited by NAAC</h5>
                </div>
            </header>
        </main>
        <aside id="aside">
            <form id="form" action="adminLogin" method="post">
                <label class=" color block">Admin Name</label>
                <input class="block" type="number" name="adminName" placeholder="Enter Registration No." />
                <label class=" color block">Password</label>
                <input class="block" type="password" name="pass" placeholder="Enter Password">
                <button id="login" class=" color block" type="submit">
                    Admin Login
                </button>
            </form>
            
             <form id="form" action="studentLogin" method="post">
                <label class=" color block">Registration No.</label>
                <input class="block" type="text" name="reg" placeholder="Enter Registration No." />
                <label class=" color block">Roll Number</label>
                <input class="block" type="text" name="rollno" placeholder="Enter Roll Number">
                <button id="login" class=" color block" type="submit">
                    Student Login
                </button>
            </form>
            	<h2>${reg}</h2>
            	<h2>${roll}</h2>
            <div>
            	
            </div>

        </aside>
    </div>
</body>

</html>