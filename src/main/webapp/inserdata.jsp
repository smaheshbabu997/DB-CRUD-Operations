<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>


</style>
</head>
<%@include file="all_CSS.jsp"%>
<body>
 <div class="container" style="height:200px; width:400px">
 <center><h3>Insert data</h3> </center>  
 
                  <form action="insert" method="post">
						
						
						
						<div class="mb-3">
								<label class="form-label">Full Name</label> <input name="fullName"
									type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input name="address"
									type="text" class="form-control">
							</div>
							
							
							<br>
							<br>
						<center>	<button type="submit" class="btn btn-primary col-md-4">Submit </button></center>
						</form>
						</div>
</body>
</html>