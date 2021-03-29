<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/user.css"> 
<title>유저 테스트</title>  
</head>
<body>
	<h1 class="text-primary">
		<c:forEach items="${userlist }" var="user">
			<c:out value="${user.userId }"></c:out> 
			<c:out value="${user.userNm }"></c:out> 
		</c:forEach>  
	</h1> 
	
	<div class="row">
		<div class="col-lg-3 col-md-4 col-sm-6" style="background-color: red;">
			A 
		</div>
		<div class="col-lg-3 col-md-4 col-sm-6" style="background-color: yellow;">
			B 
		</div>
		<div class="col-lg-3 col-md-4 col-sm-12" style="background-color: blue;">
			C
		</div>   
	</div>
	 
	 <!-- 메뉴 가로로 차례로 정렬 -->
	<nav style="--bs-breadcrumb-divider: '';" aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item"><a href="#">Home</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Library</li>
	  </ol>
	</nav>
	
	<!-- notify -->
	<div>
		<span class="badge bg-secondary">New</span>
		<span class="badge bg-secondary">4</span>
	</div>  
</body> 
</html>