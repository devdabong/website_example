<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value='/resources/images/sea.jpg' var="url1" />
	<c:url value='/resources/images/brunch2.jpg' var="url2" />
	<c:url value='/resources/images/brunch3.jpg' var="url3" />
		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel" style="height: 400px;">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel" 
					data-bs-slide-to="0" class="active" aria-label="Slide 1" 
					aria-current="true"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2" class=""></button> 
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
			</div>
			<div class="carousel-inner"> 
				<div class="carousel-item active">
					<img src="<c:out value='${url1 }'/>" class="d-block w-100" alt="..." height="400px">
						<rect width="100%" height="100%" fill="#777"></rect></img>

					<div class="container">
						<div class="carousel-caption text-start">
							<h1>Dabong Shop</h1> 
							<p>Some representative placeholder content for the first
								slide of the carousel.</p>
							<p> 
								<a class="btn btn-lg btn-primary" href="#">Sign up today</a>
							</p>
						</div>
					</div>
				</div>   
				<div class="carousel-item">
					<img src="<c:out value='${url2 }'/>" class="d-block w-100" alt="..." height="400px">
						<rect width="100%" height="100%" fill="#777"></rect></img>

					<div class="container"> 
						<div class="carousel-caption">
							<h1></h1>
							<p></p>
							<p>
								<!-- <a class="btn btn-lg btn-primary" href="#">Learn more</a> --> 
							</p>
						</div>   
					</div>   
				</div>
				<div class="carousel-item"> 
					<img src="<c:out value='${url3 }'/>" class="d-block w-100" alt="..." height="400px">
						<rect width="100%" height="100%" fill="#777"></rect></img>
 
					<div class="container">
						<div class="carousel-caption text-end">
							<h1></h1>
							<p></p>
							<p>
								<!-- <a class="btn btn-lg btn-primary" href="#">Learn more</a> --> 
							</p> 
						</div>
					</div>
				</div> 
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
</body>
</html>