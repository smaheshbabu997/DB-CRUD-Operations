<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> 
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
<meta charset="ISO-8859-1">
<title>Student Register</title>
<%@include file="all_CSS.jsp"%>

</head>
<body class="bg-light">

	

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center fs-1" style="color:#fff; font-weight:600; background:#3383FF; border-radius:10px">Student Registration</p>

                         <c:if test="${not empty succMsg }">
                         <p class="text-center text-success">${succMsg }</p>
                         <c:remove var="succMsg"/>
                          </c:if>
                          
                        
                        
                         
                         
                         <form action="register" method="post">
						
						<div class="mb-3">
								<label class="form-label">Full Name</label> <input name="name"
									type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Date Of Birth</label> <input name="dob"
									type="date" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input name="address"
									type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input name="qualification"
									type="text" class="form-control">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input name="email"
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email" required="required">
								
							&nbsp;
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input name="pwd"
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required">
							</div>
							&nbsp;
							
							<button type="submit" class="btn btn-primary col-md-12">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>