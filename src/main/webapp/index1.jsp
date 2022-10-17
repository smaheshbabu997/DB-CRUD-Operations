<%@page import="com.entity.studentlist"%>
<%@page import="com.dao.studentlistDAO"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.StudentDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_CSS.jsp"%>


	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
<body>
<h2>Home Page</h2>
	<h3>
		<a href="login.jsp">Login Page</a>
	</h3>
	<h3>
		<a href="register.jsp">Register Page</a>
	</h3>
	<h3>
		<a href="adminlog.jsp">AdminLogin Page</a>
	</h3>
	<h3>
		<a href="inserdata.jsp">Data insert Page</a>
	</h3>


	<%-- <form action="">
		<select>
			<%
			studentlistDAO dao = new studentlistDAO(DBConnect.getConn());
			List<studentlist> list = dao.getAllStudent1();
			for (studentlist s : list) {
			%>
			<option value="<%=s.getFullName()%>"><%=s.getFullName()%></option>
			<%
			}
			%>
		</select>
		
		
	</form> --%>
	
	<div class="containet p-2" style="width:600px; margin-left:200px;">
		<div class="card">
			<div class="card-bode">

				<p class="text-center fs-1">All Student Details</p>


				<table class="table">
					<thead>
						<tr>
							<th scope="col">Full Name</th>
							<th scope="col">Address</th>
							

						</tr>
					</thead>
					<tbody>

						<%
			studentlistDAO dao = new studentlistDAO(DBConnect.getConn());
			List<studentlist> list = dao.getAllStudent1();
			for (studentlist s : list) {
			%>

						<tr>
							<th scope="row"><%=s.getFullName()%></th>
							
							<td><%=s.getAddress() %></td>
							
							
							<td><a href="editregister.jsp?id=<%=s.getId()%>"
								class="btn btn-sm btn-primary">Edit</a>
								 <a
								href="delete?id=<%=s.getId()%>"
								class="btn btn-sm btn-danger ms-1">Delete</a></td>
						</tr>
						<%
						}
						%>



					</tbody>
				</table>
			</div>
		</div>
	</div>

	<%-- <%
Connection conn=DBConnect.getConn();
out.println(conn);
%> --%>
</body>
</html>