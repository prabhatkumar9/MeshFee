<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"> 
        <link rel="stylesheet" href="web.css">
        <script src="login.js"></script>
        <title> Maharshi Dyanand University</title>
    </head>
    <body>
        <nav>
            <ul class="topnav">
                <li class="list"><a class="active" href="home.jsp">Home</a></li>
                 
                <li class="list"><a href="Contact.html" >Contact</a></li>
                <li class="list"><a href="About.html" >About</a></li>
            </ul>
            </nav>
            <div id="md">
                <marquee behavior="scroll" height="50px" width="100%" direction="left" bgclor="white" color="red">**You can now pay your mess dues of last month i.e May at this portal</marquee>
            </div>
            <div id="flex" class="container">
            <div id="main">
            <header class=" header">
                <div id="imgdm">
                    <img id="mduimg" src="mdu.png"  />
                </div>
              <div id="headings">
                   <h1 id="maharshi" class="head">Maharshi Dyanand University</h1>
                   <h3 class="he">Rohtak-124001, Haryana (INDIA)</h3>
                   <h5 class="he">(A State University established under Haryana Act No. XXV of 1975)</h5>
                   <h5 class="head">'A+' Grade University Accredited by NAAC</h5>
              </div>
            </header> 
            <div id="mdi" class="container">
                <img id="mdim" src="mdugate.jpeg" alt="mdu">
            </div> 
        </div>
        
       
        <aside id="aside" class="container">
        
        <div>
            <form id="form1" action="adminLogin" method="post">
                <label class=" color block">Admin Name</label>
                <input class="block" type="text" name="email" placeholder="Enter  email " />
                <label class=" color block">Password</label>
                <input class="block" type="password" name="pass" >
                
                <br>
                 <h5>${msg}</h5>
                 <br>
                <button  class=" color block login" type="submit">
                    Admin Login
                </button>
            </form>
            </div>
            
            <div>
             <form id="form" action="studentLogin" method="get">
                <label class=" color block">Registration No.</label>
                <input class="block" type="number" name="reg" placeholder="Enter Registration No." />
                <label class=" color block">Roll Number</label>
                <input class="block" type="number" name="rollno" placeholder="Enter Roll Number">
                 <br>
                 <h5>${stdmsg}</h5>
                 <br>
                <button  class=" color block login" type="submit">
                    Student Login
                </button>
            </form>
          </div>
            

        </aside>
    </div>
    </body>
    </html>