<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header3.jsp" />  
	<!-- <div style="height: 250px;">
		hello  
	</div> -->  
	<main style="height: 1500px;">    
		<jsp:include page="slider.jsp" />
		<jsp:include page="list.jsp" />
	</main>  
	   
	<jsp:include page="footer2.jsp" />
	<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</body>
</html> 