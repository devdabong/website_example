<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<!-- bootstrap4
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Architects+Daughter&family=Noto+Serif+KR&family=Poor+Story&family=Stylish&family=Yeon+Sung&display=swap" rel="stylesheet">

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0e7b2a5c2598977f8bb8f6b360def401"></script> -->
<jsp:include page="common.jsp"></jsp:include>
<title>다봉 식당</title> 
<style type="text/css">  

body {
	font-family: 'Noto Serif KR';
	font-weight: 500; 
} 

.navbar-brand { 
	padding-right: 3.5rem; 
}   
 
.nav-item { 
	padding-right: 2rem; 
	margin-right: 0.5rem;  
}     
 
.carousel-item > img {
	height: 650px; 
}     
 
.places img { 
	height: 400px;
}  
  
img { 
	height: 300px;
}
 
#cont { 
	padding-top: 100px;    
/* 	padding-bottom: 100px;  */ 
}   
 
.btn {
	border: solid 1px;	 
	/* padding: 15px 0;   */
}    

#map {
	height: 500px;
} 

.time_ul {
	list-style: none;
	padding-left: 0px;
}
/* .carousel-item > img { 
	height: 500px; 
}   

.container {
	padding-top: 100px;
	padding-bottom: 100px; 
} 
 
.places img { 
	height: 400px; 
}      
 
.card-body {
	padding: 1.8rem;   
}     
  
img {  
	height: 300px;
}   */
 

</style> 

</head>
<body>
	<!-- header -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark py-2">
		<a class="navbar-brand" href="#">다봉 식당</a>    
		<button class="navbar-toggler" type="button" data-toggle="collapse" 
			data-target="#collapsibleNavbar">  
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">  
			<ul class="navbar-nav mr-auto">  
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/my">메인</a></li> 
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/my/info">소개</a></li> 
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/my/menu">메뉴</a></li> 
				<li class="nav-item"><a class="nav-link" href="#">오시는길</a></li>  
				<li class="nav-item"><a class="nav-link" href="#">예약안내</a></li>  
			</ul>  
			<!-- <span class="navbar-text">
		      <a class="nav-item"><a class="nav-link" href="#">로그인</a></a>  
		    </span>  -->   
		</div>
	</nav> 
	
	<div class="wrap">
		<div class="jumbotron text-center" style="margin: 0;">  
		  <h1 class="display-4">Dabong Shop</h1>
		  <p class="lead">Number one of the world!</p> 
		</div>	
			 
		<!-- 슬라이더 -->
		<c:url value='/resources/images/sea.jpg' var="url1" />
		<c:url value='/resources/images/brunch2.jpg' var="url2" />
		<c:url value='/resources/images/brunch3.jpg' var="url3" />
		<div id="carouselExampleCaptions" class="carousel slide" 
			data-ride="carousel" >
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleCaptions" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
				<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="${url1 }" class="d-block w-100" alt="...">
					<!-- <div class="carousel-caption d-none d-md-block">
						<h5>First slide label</h5>
						<p>Some representative placeholder content for the first slide.</p>
					</div> --> 
				</div> 
				<div class="carousel-item">
					<img src="${url2 }" class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img src="${url3 }" class="d-block w-100" alt="...">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleCaptions"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		
		
		<!-- <div class="container" style="margin-top: 30px; margin-bottom: 30px;">  -->
		<div id="cont" class="container-fluid">   
			<div class="info container"> 
				<div class="row">     
					<c:url value='/resources/images/prague1.jpg' var="place1" />
					<c:url value='/resources/images/prague2.jpg' var="place2" />
					<p class="display-3 col-md-12 text-center py-4">ABOUT</p>
					<p class="h3 col-md-12 text-left py-4">아름다운 풍경 속에서 진정한 휴식</p> 
					<p class="display-5 col-md-9 text-left mb-5">한끼의 식사를 그 누구보다도 맛있게 드시고 가실 수 있도록 준비하겠습니다.<br>고급진 분위기, 여유로운 풍경과 조화로운 여러 종류의 음식. 친절한 서비스는 덤. 즐기고 가세요~</p>
					<p class="col-md-3 mb-5 text-center"><a href="#" class="btn" style="vertical-align:middle;">자세히 보기</a></p>       
				</div>     
			</div>   
			<div class="pic mb-5 container">      
				<div class="row">      
					<div class="col-md-6">                 
						<img src="${place1 }" class="d-block w-100 bd-placeholder-img" alt="..."> 
					</div>     
					<div class="col-md-6"> 
						<img src="${place2 }" class="d-block w-100" alt="..."> 
					</div> 
				</div>
				<div class="row">      
					<div class="col-md-6">                 
						<img src="${place1 }" class="d-block w-100 bd-placeholder-img" alt="..."> 
					</div>     
					<div class="col-md-6"> 
						<img src="${place2 }" class="d-block w-100" alt="..."> 
					</div> 
				</div>
			</div>
			<%-- <div class="places py-3"> 
				<c:url value='/resources/images/prague1.jpg' var="place1" />
				<c:url value='/resources/images/prague2.jpg' var="place2" />
				<div class="row" style="margin-bottom: 100px;">         
					<p class="display-4 col-md-12 text-center py-4">ABOUT</p>           
					<div class="card col-md-6 border-0 mt-4" style="width: 18rem;"> 
					  <div class="card-body">    
					  	<img src="${place1 }" class="card-img-top" alt="...">  
					  	<h4 style="margin-top: 16px;">다양하고 푸짐한 상차림</h4>    
					    <p class="card-text">유럽 느낌의 공간. 싱싱한 채소와 육즙 가득한 고기와 함께하세요.<br> 든든한 식사를 책임지겠습니다.<br>일상으로 돌아가기 싫은 이 곳에서만 느낄 수 있는 맛! 보장합니다. </p>
					  </div>   
					</div>     
					<div class="card col-md-6 border-0 mt-4" style="width: 18rem;">
					  <div class="card-body">  
					  	<h4>다채로운 풍경과 함께 식사를</h4>  
					    <p class="card-text">유럽 느낌의 공간. 싱싱한 채소와 육즙 가득한 고기와 함께하세요.<br> 든든한 식사를 책임지겠습니다.<br>일상으로 돌아가기 싫은 이 곳에서만 느낄 수 있는 맛! 보장합니다. </p>
					  	<img src="${place2 }" class="card-img-top" alt="...">  
					  </div> 
					</div> 
				</div>
			</div>  --%>
			<div class="info container">
				<div class="row">    
					<c:url value='/resources/images/prague1.jpg' var="place1" />
					<c:url value='/resources/images/prague2.jpg' var="place2" />
					<p class="display-3 col-md-12 text-center py-4 mt-5">MENU</p>
					<p class="h3 col-md-12 text-left py-4">아름다운 풍경 속에서 진정한 휴식</p> 
					<p class="display-5 col-md-9 text-left mb-5">한끼의 식사를 그 누구보다도 맛있게 드시고 가실 수 있도록 준비하겠습니다.<br>고급진 분위기, 여유로운 풍경과 조화로운 여러 종류의 음식. 친절한 서비스는 덤. 즐기고 가세요~</p>
					<p class="col-md-3 mb-5 text-center"><a href="#" class="btn" style="vertical-align:middle;">자세히 보기</a></p>       
				</div>     
			</div>
			<div class="food mb-5 container"> 
				<div class="row"> 
					<div class="col-md-4" style="padding: 0">
						<img src="${url1 }" class="d-block w-100 bd-placeholder-img" alt="...">
					</div>
					<div class="col-md-4" style="padding: 0">
						<img src="${url2 }" class="d-block w-100" alt="...">
					</div> 
					<div class="col-md-4" style="padding: 0">
						<img src="${url3 }" class="d-block w-100" alt="...">
					</div> 
				</div>
			</div>
			
			<div class="info container">
				<div class="row">      
					<c:url value='/resources/images/prague1.jpg' var="place1" />
					<c:url value='/resources/images/prague2.jpg' var="place2" />
					<p class="display-3 col-md-12 text-center py-4 mt-5">Location</p>
				</div>      
			</div> 
		</div>
	</div>  
	
	<div class="col-md-12 mt-4" style="padding: 0"> 
		<div id="map" class="col-md-12"></div>    
		<!-- <div id="map" style="width:500px;height:400px;"></div> -->
	</div>   
	 
	<!-- Footer --> 
	<div class="footer container-fluid" style="margin-bottom: 0; padding: 0;">
		<footer class="">    
			<div class="py-4 container border-top">	 
				  <div class="row">    
				    <%-- <div class="col-12 col-md-1">
				      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mb-2" role="img" viewBox="0 0 24 24" focusable="false"><title>Product</title><circle cx="12" cy="12" r="10"></circle><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"></path></svg>
				    </div> --%> 
				    <div class="col-6 col-md-4"> 
				      <h6>전화번호</h6>    
				      <ul class="list-unstyled text-small">
				        <li><h6 class="text-muted">031-123-1234</h5></li>
				      </ul>    
				      <h6>영업시간</h6>   
				      <ul class="time_ul">
				      	<li><h6 class="text-muted">MON-FRI  am 09:00 ~ pm 06:00</h6></li>
				      	<li><h6 class="text-muted">LUNCH  pm 12:00 ~ pm 01:00</h6></li>
				      	<li><h6 class="text-muted">Sat, Sun, Holiday OFF</h6></li>
				      </ul> 
				    </div>  
				    <div class="col-6 col-md-4">
				      <h6>계좌</h6> 
				      <ul class="list-unstyled text-small">
				        <li><a class="text-muted">신한은행</a></li>
				        <li><a class="text-muted">123-123-12-1231</a></li>
				        <li><a class="text-muted">정다봉</a></li>
				      </ul>
				    </div>   
				    <div class="col-6 col-md-3">
				      <c:url value='/resources/images/facebook.png' var="sns1" />
				      <c:url value='/resources/images/instar.png' var="sns2" />
				      <h6>&nbsp;SNS</h6>  
				      <ul class="list-unstyled text-small" style="display: block;">  
				        <li><a class="text-muted" href="#"><img src="${sns1 }" class="d-block" style="width: 30px; height: 25px; float: left; padding-right: 6px;" alt="..."></a></li>
				        <li><a class="text-muted" href="#"><img src="${sns2 }" class="d-block" style="width: 25px; height: 25px;" alt="..."></a></li>
				      </ul>      
				    </div> 
				</div>         
		</footer> 
		<footer class="" style="background-color: #495057;">  
			<div class="py-4 container text-center border-top ml-4" style="background-color: #495057;">
				<div class="row">               
					<div class="col-12 col-md-1 ml-3">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mb-2" role="img" viewBox="0 0 24 24" focusable="false"><title>Product</title><circle cx="12" cy="12" r="10"></circle><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"></path></svg>
					</div> 
					<div class="col-12 col-md-auto">      
						<div class="row m-0 text-muted text-left" >  
							<div class="col-md-5">다봉 식당</div>  
							<div class="col-md-auto">경기도 김포시 구래동 1</div>  
						</div>     
						<div class="row m-0 text-muted text-left" >  
							<div class="col-md-5">대표번호: 031-123-1234</div>  
							<div class="col-md-auto">사업자등록번호:123-12-12312</div>
						</div> 
						<div class="row m-0 text-muted text-left" >   
							<div class="col-md-5">대표쟈: 정다봉</div>     
						</div>
					</div>    
				</div>
			</div>  
	    </footer>  
	</div>
	<div class="bg-dark">     
    	<p class="m-0 text-center text-secondary">Copyright &copy; Dabong Shop 2020</p>
    </div> 
</body>
<script type="text/javascript">
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.64525277709508, 126.62840281425957), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

//마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(37.64525277709508, 126.62840281425957); 

//마커를 생성합니다 
var marker = new kakao.maps.Marker({
    position: markerPosition
}); 
  
marker.setMap(map); 

//카카오 지도 api 관련 사이트
//https://apis.map.kakao.com/web/guide/
//https://apis.map.kakao.com/web/sample/basicMarker/

</script>
</html>