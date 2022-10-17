<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Feedback</title>
 <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous"> 
 <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
    
    <style>
input[type=text], select {
width: 100%;
padding: 12px 20px;
margin: 8px 0;
display: inline-block;
border: 1px solid #ccc;
border-radius: 4px;
box-sizing: border-box;
}
input[type=submit] {
width: 100%;
background-color: #4CAF50;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
border-radius: 4px;
cursor: pointer;
}
input[type=submit]:hover {
background-color: #45a049;
}
div {
border-radius: 5px;
padding: 20px;
}
h2{
text-align:center;
}
table{
margin-left:auto;
margin-right:auto;
}
td{
font-weight:bold;
}
.logo{
    width: 120px;
    cursor: pointer;
}
.bn30{
width:10%;
height:40px;
font-size:22px;
border-radius:10px;
color:#fff;
background:blue;
}
</style>
</head>
<body>
<c:if test="${not empty studentObj}">
    <div class="banner">
        <div class="navbar  bg-primary">
            <img src="img/text-1655317586539.png" class="logo">
              <div class="drop">
					<button class="btn btn-light">
						<i class="fa fa-user-circle" aria-hidden="true"
							style="font-size: 18px;"></i> ${studentObj.fullName }
					</button>
					<button class="btn btn-light">
						<i class="fa fa-sign-out" aria-hidden="true"
							style="font-size: 18px;"></i>
							<a class="dropdown" href="studentLogout" style="color:black;  text-decoration: none;">Logout</a>   
			</div>
        </div>
        
        <div class="body1">
<h2>Welcome to Student Activity Portal</h2>
<form action="" method="post">
<table>
<tr><td>Student Name: </td><td><input type="text" name="sname"
placeholder="Enter Student Name"></td></tr>
<tr><td>Roll No: </td><td><input type="text" name="sroll" placeholder="Enter 
Student Roll"></td></tr>
<tr><td>Name of the Event: </td><td><input type="text" name="s1"
placeholder="Enter Event"></td></tr>
<tr><td>Activity: </td><td><input type="text" name="s2"
placeholder="Activity"></td></tr>
<tr><td>upload: </td><td><input type="file" name="filename"
placeholder="Activity"></td></tr>


</table>
</form>

<center > <a href="successreg.jsp"><button class="bn30">Submit</button></a></center>
</div>
</c:if>
</body>
</html>