<%@page import="com.conn.DBConnect"%>
<%@page import="com.*"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Home</title>
 
  <style>
 
  </style>
    <link rel="stylesheet" href="styles.css">
</head>
<body >
<div class="body1" style="background:url(img/clg.png);">
  <%
Connection conn=DBConnect.getConn();
out.println(conn);
%>  
    <div class="banner">
        <div class="navbar">
            <img src="img/text-1655317586539.png" class="logo">
           
        </div>

        <div class="content" >
            <h1 style="font-size:36px;color:black;">STUDENT CO-CURICULAR & EXTRA-CURRICULAR ACTIVITIES</h1>
            
            <a href="login.jsp"><button class="bn30">LOGIN</button></a>
        </div>
        <h3>
		<a href="index1.jsp">Another index Page</a>
	</h3>

    </div>
    </div>
</body>
</html>