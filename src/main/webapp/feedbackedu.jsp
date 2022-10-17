<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%--  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%> --%>
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
  
    <link rel="stylesheet" href="feedback.css">
</head>
<body>
<c:if test="${not empty studentObj}">
    <div class="banner">
        <div class="navbar">
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
        <br>
        <br>
        <div class="content">

            <h4>1.Subject Knowledge and creates interest in the subject?</h4>
            <br>

            <label class="container">Excellent
                <input type="radio" checked="checked" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Satisfied
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Not Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <br>
              <br>
              <br>
              <h4>2.Planning and Delivery of Course?</h4>
            <br>

            <label class="container">Excellent
                <input type="radio" checked="checked" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Satisfied
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Not Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <br>
              <br>
              <br>
              <h4>3.Audibility and Clarity?</h4>
            <br>

            <label class="container">Excellent
                <input type="radio" checked="checked" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Satisfied
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Not Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <br>
              <br>

              <br>

              <h4>4.How is the blackboard management?</h4>
            <br>

            <label class="container">Excellent
                <input type="radio" checked="checked" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Satisfied
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Not Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <br>
              <br>

              <br>
              <h4>5.Clarification of Doubts and Thought Provoking?</h4>
            <br>

            <label class="container">Excellent
                <input type="radio" checked="checked" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Satisfied
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Not Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <br>
              <br>

              <br>

              <h4>6.Adhering to time schedule and Session Management?</h4>
            <br>

            <label class="container">Excellent
                <input type="radio" checked="checked" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Satisfied
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>
              <label class="container">Not Good
                <input type="radio" name="radio">
                <span class="checkmark"></span>
              </label>

              <br>

              <h4>7.Discipline in the class?</h4>
              <br>
  
              <label class="container">Excellent
                  <input type="radio" checked="checked" name="radio">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Satisfied
                  <input type="radio" name="radio">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Good
                  <input type="radio" name="radio">
                  <span class="checkmark"></span>
                </label>
                <label class="container">Not Good
                  <input type="radio" name="radio">
                  <span class="checkmark"></span>
                </label>
                <br>
                <br>
  
                <br>
                <h4>8.Evaluation of Assignments,Tutorials,Mid Exams etc.?</h4>
                <br>
    
                <label class="container">Excellent
                    <input type="radio" checked="checked" name="radio">
                    <span class="checkmark"></span>
                  </label>
                  <label class="container">Satisfied
                    <input type="radio" name="radio">
                    <span class="checkmark"></span>
                  </label>
                  <label class="container">Good
                    <input type="radio" name="radio">
                    <span class="checkmark"></span>
                  </label>
                  <label class="container">Not Good
                    <input type="radio" name="radio">
                    <span class="checkmark"></span>
                  </label>
                  <br>
                  <br>
    
                  <br>
                  <h4>9.Accessibility of the lecturer?</h4>
                  <br>
      
                  <label class="container">Excellent
                      <input type="radio" checked="checked" name="radio">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Satisfied
                      <input type="radio" name="radio">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Good
                      <input type="radio" name="radio">
                      <span class="checkmark"></span>
                    </label>
                    <label class="container">Not Good
                      <input type="radio" name="radio">
                      <span class="checkmark"></span>
                    </label>
                    <br>
                    <br>
      
                    <br>
            
        </div>

    </div>
    </c:if>
</body>
</html>