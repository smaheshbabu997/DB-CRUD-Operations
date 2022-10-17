<%@page import="com.entity.studentlist"%>
<%@page import="com.dao.studentlistDAO"%>
<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
<meta charset="ISO-8859-1">
<title>Edit_Student</title>

	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
     
   img {
	margin: 0px;
	height: 50px;
	width: 50px;
}

.navbar-nav {
	margin-left: 58%;
	font-size:18px;
}

.container-fluid {
	font-size: 20px;
	font-weight: 400;
	color: red;
}

a {
	text-decoration: none;
	
}


nav ul li:hover {
	background-color:#FFA500 ;
	
	font-weight: 500;
	padding: 0px;
	border-radius: 9px;
}

.navbar {
	background: #D03D56;
	padding: 0;
	font-size:18px;
	color: black;
}

nav ul li i {
	color: #fff;
	padding-right: 7px;
}

.dropdown-menu {
	background: #fff;
	font-size: 18px;
	font-weight: 600;
}
</style>
</head>

<body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    


  
	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center fs-1" style="color:#fff; font-weight:600; background:#3383FF; border-radius:10px">Edit Student Data</p>

                        
                          
                        
                        <%
                        int id=Integer.parseInt(request.getParameter("id"));
                        studentlistDAO dao2=new studentlistDAO(DBConnect.getConn());
                        studentlist s=dao2.getDetailsById(id);
                        %>
                         
                         
                         <form action="updatedate" method="post">
						<input type="hidden" name="id" value="<%=s.getId() %>">
						
						<div class="mb-3">
								<label class="form-label">Full Name</label> <input name="fullName" value="<%=s.getFullName() %>"
									type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input name="address" value="<%=s.getAddress() %>"
									type="text" class="form-control">
							</div>
							
							&nbsp;
							
							<button type="submit" class="btn btn-primary col-md-12">Edit</button>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>