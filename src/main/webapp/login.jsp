<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%--   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %> --%>
<!DOCTYPE html>
<html>
<head>
   <title>Home</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body style="background:url(img/clg.png); height="100%"; width="100%">
    <div class="banner">
        <div class="navbar">
            <img src="img/text-1655317586539.png" class="logo">
        </div>

        <div class="content">
            <section class='login' id='login'>
                <div class='head'>
                <h1 class='company'>LOGIN</h1>
                </div>
                
                
                <p class='msg'>Welcome back</p>
                <div class='form'>
               <form action="StudentLogin" method="post">
						
							<div class="form-group">
								 <input name="email" type="text" class="text" id="username"
									aria-describedby="emailHelp" placeholder="Username" required="required">
								
									
							
							<div class="form-group">
							 <input name="password"
									type="password" class="password"
									placeholder="Password" required="required">
							</div>
							&nbsp;
							<button type="submit" class="btn-login" name="password" id="do-login">Login</button>
							<br><br>
                 <center> <a href="register.jsp">Create Account</a></center>
                  </form>
                </div>
              </section>
            
        </div>

    </div>

    <script  src="script.js"></script>
</body>
</html>