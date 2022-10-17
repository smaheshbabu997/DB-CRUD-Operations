<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
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
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
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
							style="font-size: 18px;"></i> <a class="dropdown"
							href="studentLogout" style="color: black; text-decoration: none;">Logout</a>
				</div>
			</div>
			<br> <br>
			<div class="content">


				<div class="main-container">
					<div class="heading">
						<h1 class="heading__title">WELCOME</h1>
						<p class="heading__credits">
							<a class="heading__link" target="_blank"
								href="https://dribbble.com/sl">Material available for 6th
								Semester</a>
						</p>
					</div>
					<div class="cards">
						<div class="card card-1">
							<div class="card__icon">
								<i class="fa fa-bolt" aria-hidden="true"></i>
							</div>
							<p class="card__exit">
								<i class="fa fa-times"></i>
							</p>
							<h2 class="card__title">Web Technologies</h2>
							<p class="card__apply">
								<a class="card__link"
									href="https://www.udemy.com/course/the-complete-web-development-bootcamp/">Click
									here to learn <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
								</a>
							</p>
						</div>
						<div class="card card-2">
							<div class="card__icon">
								<i class="fa fa-bolt" aria-hidden="true"></i>
							</div>
							<p class="card__exit">
								<i class="fa fa-times"></i>
							</p>
							<h2 class="card__title">Machine Learning</h2>
							<p class="card__apply">
								<a class="card__link"
									href="https://www.udemy.com/course/python-for-machine-learning-data-science-masterclass/">Click
									here to learn <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
								</a>
							</p>
						</div>
						<div class="card card-3">
							<div class="card__icon">
								<i class="fa fa-bolt" aria-hidden="true"></i>
							</div>
							<p class="card__exit">
							<i class="fa fa-times"></i>
							</p>
							<h2 class="card__title">Artificial Intelligence</h2>
							<p class="card__apply">
								<a class="card__link"
									href="https://www.udemy.com/course/artificial-intelligence-az/">Click
									here to learn <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
								</a>
							</p>
						</div>
						<div class="card card-4">
							<div class="card__icon">
								<i class="fa fa-bolt" aria-hidden="true"></i>
							</div>
							<p class="card__exit">
								<i class="fa fa-times"></i>
							</p>
							<h2 class="card__title">Linux Programming</h2>
							<p class="card__apply">
								<a class="card__link"
									href="https://www.udemy.com/course/advance-programming-concepts/">Click
									here to learn <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
								</a>
							</p>
						</div>
						<div class="card card-5">
							<div class="card__icon">
								<i class="fa fa-bolt" aria-hidden="true"></i>
							</div>
							<p class="card__exit">
								<i class="fa fa-times"></i>
							</p>
							<h2 class="card__title">Cloud Computing</h2>
							<p class="card__apply">
								<a class="card__link"
									href="https://www.udemy.com/course/introduction-to-cloud-computing-on-amazon-aws-for-beginners/">Click
									here to learn <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
								</a>
							</p>
						</div>
						<div class="card card-1">
						<div class="card__icon">
							<i class="fa fa-bolt" aria-hidden="true"></i>
							</div>
							<p class="card__exit">
								<i class="fa fa-times"></i>
							</p>
							<h2 class="card__title">Entrepreneurship</h2>
							<p class="card__apply">
								<a class="card__link"
									href="https://www.udemy.com/course/quantum-leap-your-business-in-6-weeks/">Click
									here to learn <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
								</a>
							</p>
						</div>
					</div>
				</div>

			</div>

		</div>
	</c:if>
</body>
</html>