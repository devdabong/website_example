<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="common.jsp" />
<title>Insert title here</title>
</head>
<body>
	<c:url value='/resources/images/burger1.jpg' var="url1" />
	<c:url value='/resources/images/chicken.jpg' var="url2" />
	<c:url value='/resources/images/salad.jpg' var="url3" />
	<c:url value='/resources/images/pizza1.jpg' var="url4" />
	<div class="row row-cols-1 row-cols-md-3 g-4" style="margin: 0;">
		<div class="col-sm-3 col-md-3">
			<div class="card h-100">  
				<img src="<c:out value='${url1 }'/>" class="card-img-top h-50" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div>
			</div>
		</div>
		<div class="col-sm-3 col-md-3"> 
			<div class="card h-100">
				<img src="<c:out value='${url2 }'/>" class="card-img-top h-50" alt="..." >
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a short card.</p>
				</div>
			</div>
		</div>
		<div class="col-sm-3 col-md-3">
			<div class="card h-100">
				<img src="<c:out value='${url3 }'/>" class="card-img-top h-50" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content.</p>
				</div>
			</div> 
		</div>
		<div class="col-sm-3 col-md-3"> 
			<div class="card h-100">
				<img src="<c:out value='${url4 }'/>" class="card-img-top h-50" alt="...">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					<p class="card-text">This is a longer card with supporting text
						below as a natural lead-in to additional content. This content is
						a little bit longer.</p>
				</div> 
			</div> 
		</div>
	</div>
</body>
</html>