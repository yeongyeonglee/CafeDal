<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    
   
    
<!DOCTYPE html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CAFEDAL</title>

    <!-- Bootstrap core CSS -->
    <link href="${path}/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/resource/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${path}/resource/vendor/bootstrap/css/bootstrap-reboot.css" rel="stylesheet">
    <link href="${path}/resource/vendor/bootstrap/css/bootstrap-reboot.min.css" rel="stylesheet">
    <link href="${path}/resource/vendor/bootstrap/css/bootstrap-grid.css" rel="stylesheet">
    <link href="${path}/resource/vendor/bootstrap/css/bootstrap-grid.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
   <link type="text/css" rel="stylesheet" href="${path}/resource/css/today.css">

  </head>

<main calss="main2">
  <body class="back" onload="initialize()">
  

	    <div class="container" style="margin-top: 50px;">
	    
	      <div class="bg-faded p-4 my-4">
	        <!-- Image Carousel -->
	        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	          <ol class="carousel-indicators">
	            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
	            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
	            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
	          </ol>
	          <div class="carousel-inner" role="listbox">
	            <div class="carousel-item active">
	              <img class="d-block img-fluid w-100" src="../resource/images/todaybg2.jpg" alt="">
	              <div class="carousel-caption d-none d-md-block">
	                <!-- <h3 class="text-shadow">First Slide</h3>
	                <p class="text-shadow">This is the caption for the first slide.</p> -->
	              </div>
	            </div>
	            <div class="carousel-item">
	              <img class="d-block img-fluid w-100" src="../resource/images/todaybg3.jpg" alt="">
	              <div class="carousel-caption d-none d-md-block">
	                <!-- <h3 class="text-shadow">Second Slide</h3>
	                <p class="text-shadow">This is the caption for the second slide.</p> -->
	              </div>
	            </div>
	            <div class="carousel-item">
	              <img class="d-block img-fluid w-100" src="../resource/images/todaybg1.jpg" alt="">
	              <div class="carousel-caption d-none d-md-block">
	                <!-- <h3 class="text-shadow">Third Slide</h3>
	                <p class="text-shadow">This is the caption for the third slide.</p> -->
	              </div>
	            </div>
	          </div>
	          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
	            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	            <span class="sr-only">Previous</span>
	          </a>
	          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
	            <span class="carousel-control-next-icon" aria-hidden="true"></span>
	            <span class="sr-only">Next</span>
	          </a>
	        </div>
	        <!-- Welcome Message -->
	        <div class="text-center mt-4">
	          <!-- <div class="text-heading text-muted text-lg">오 늘 의 카 페</div> -->
	          <h1 class="my-2">CAFE : "Louis Daddy"</h1>
	          
	        </div>
	      </div>
	
	      <div class="bg-faded p-4 my-4">
	        <hr class="divider">
	        <h2 class="text-center text-lg text-uppercase my-0">카 페 소 개 : 
	          <strong>Louis Daddy</strong>
	        </h2>
	        <hr class="divider">
	        
			<div class="dbr">
		        <p class="pp">추 천 음 료 : 오레오 라떼, 오레오 프라페, 퐁 프라페</p>
		        <p class="pp">오 픈 시 간</p>
		        <p class="pp">월 - 금 : AM 8 ~ PM 10 (주문은 9:10까지 가능)</p>
		        <p class="pp">토,일 공휴일 : AM 10 ~ PM 8 (주문은 7:20까지 가능)</p>
		    </div>
	      </div>
	
	      <div class="bg-faded p-4 my-4">
	        <hr class="divider">
	        <h2 class="text-center text-lg text-uppercase my-0">위 치 안 내 :  
	          <strong>서울 마포구 백범로 20  (지번 : 노고산동 107-38)</strong>
	        </h2>
	        <hr class="divider">
	        <div class="line3">
				<div id="map_canvas" style="width:600px; height:400px;"></div>
			</div>
	        <p></p>
	        <p></p>
	      </div>
	
	    </div>

	<script src="${path}/resource/vendor/jquery/jquery.min.js"></script>
	<script src="${path}/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Google Map -->
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=ko"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyB4ovH_N5bBhYVJz7PktTuhz48NzzlKsTM"></script>
	
	 <script> 
	  function initialize() { 
	  var myLatlng = new google.maps.LatLng(37.552891, 126.937015); // x, y좌표값
	  var mapOptions = { 
	        zoom: 15, 
	        center: myLatlng, 
	        mapTypeId: google.maps.MapTypeId.ROADMAP 
	  } 
	 
	  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
	  var marker = new google.maps.Marker({ 
	            position: myLatlng, 
	            map: map, 
	            title: "Louis Daddy" 
	  }); 
	  var infowindow = new google.maps.InfoWindow( 
	          { 
	            content: "<h1>Louis Daddy</h1>", 
	            maxWidth: 300 
	          } 
	  ); 
	
	  google.maps.event.addListener(marker, 'click', function() { 
	  infowindow.open(map, marker); 
	  }); 
	  } 
	 </script>

</body>


</main>