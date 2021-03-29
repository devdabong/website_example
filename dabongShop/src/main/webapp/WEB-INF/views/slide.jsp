<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>슬라이드</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
<link href="carousel.css" rel="stylesheet">  
<!-- <style> 
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }
  
</style> -->
</head> 
<body>     
	<%-- <jsp:include page="header.jsp" /> --%>  
	<%-- <jsp:include page="header2.jsp" /> --%>     
    <jsp:include page="header3.jsp" />       
	<main style="height: 1000px;">      
		<c:url value='/resources/images/sea.jpg' var="url" />
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
					<img src="<c:out value='${url }'/>" class="d-block w-100" alt="..." height="400px">
						<rect width="100%" height="100%" fill="#777"></rect></img>

					<div class="container">
						<div class="carousel-caption text-start">
							<h1>Example headline.</h1>
							<p>Some representative placeholder content for the first
								slide of the carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Sign up today</a>
							</p>
						</div>
					</div>
				</div> 
				<div class="carousel-item">
					<img src="<c:out value='${url }'/>" class="d-block w-100" alt="..." height="400px">
						<rect width="100%" height="100%" fill="#777"></rect></img>

					<div class="container"> 
						<div class="carousel-caption">
							<h1>Another example headline.</h1>
							<p>Some representative placeholder content for the second
								slide of the carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Learn more</a> 
							</p>
						</div> 
					</div> 
				</div>
				<div class="carousel-item"> 
					<img src="<c:out value='${url }'/>" class="d-block w-100" alt="..." height="400px">
						<rect width="100%" height="100%" fill="#777"></rect></img>
 
					<div class="container">
						<div class="carousel-caption text-end">
							<h1>One more for good measure.</h1>
							<p>Some representative placeholder content for the third
								slide of this carousel.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#">Browse gallery</a>
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
		
		<jsp:include page="list.jsp" />
					 
		<%-- <div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">   
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div> 
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="<c:out value='${url }'/>" class="d-block w-100" alt="..." >
				</div>   
				<div class="carousel-item"> 
					<img src="<c:out value='${url }'/>" class="d-block w-100" alt="..." >
				</div>
				<div class="carousel-item">
					<img src="<c:out value='${url }'/>" class="d-block w-100" alt="..." >
				</div>           
			</div>        
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="visually-hidden">Previous</span>
			</button> 
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="visually-hidden">Next</span>
			</button>
		</div> --%>
		   
	</main> 
	<jsp:include page="footer.jsp" />
	<jsp:include page="footer2.jsp" />
	<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html>