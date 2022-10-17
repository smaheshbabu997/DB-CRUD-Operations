<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous"> 
 <link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <link rel="stylesheet" href="feedback.css">
</head>
<body>




<c:if test="${not empty studentObj}">
    <div class="banner">
        <div class="navbar  bg-primary">
            <img src="img/text-1655317586539.png" class="logo">
            
             <div class="drop">
					<button class="btn btn-success">
						<i class="fa fa-user-circle" aria-hidden="true"
							style="font-size: 18px;"></i> ${studentObj.fullName }
					</button>
					<button class="btn btn-success">
						<i class="fa fa-sign-out" aria-hidden="true"
							style="font-size: 18px;"></i>
							<a class="dropdown" href="studentLogout" style="color:#fff;  text-decoration: none;">Logout</a>   
			</div>
             </div>
        <br>
        <br>
        <div class="content">
            <h2>Welcome ${studentObj.fullName }</h2>
           
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            

            <a href="feedbackfacilties.jsp">
            <button class="button" style="vertical-align:middle"><span>Enter Student Activity</span></button>
            </a>


           
 
        </div>

    </div>
    </c:if>
</body>
</html>