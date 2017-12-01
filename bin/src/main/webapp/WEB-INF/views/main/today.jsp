<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CafeDal</title>
<link type="text/css" rel="stylesheet" href="${path}/resource/css/today.css">
</head>

<body onload="initialize()">
	<main id="main"> <script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!-- <h2>CAFEDAL</h2> -->
	<h4>오늘의 카페</h4>
	<h3>CAFE : "Louis Daddy"</h3>

	<div class="range">

		<div class="box">
			<figure class="flip">
				<img src="${path}/resource/images/louisdog.PNG" />
				<figcaption class="bar">
					<!-- <h3>Louis Daddy Cafe</h3> -->
				</figcaption>
			</figure>
		</div>

		<div class="box">
			<figure class="flip">
				<img src="${path}/resource/images/louis1.jpg" />
				<figcaption class="bar">
					<!-- <h3>Coffee</h3> -->
				</figcaption>
			</figure>
		</div>

		<div class="box">
			<figure class="flip">
				<img src="${path}/resource/images/louis3.jpg" />
				<figcaption class="bar">
					<!-- <h3>Cake</h3> -->
				</figcaption>
			</figure>
		</div>

		<!-- <section class="box">
			<figure class="flip">
				<img
					src="https://2.bp.blogspot.com/-XD5AjJLD0Qs/Uh9GGA_yXQI/AAAAAAAAA6s/uZNjG-XOAYw/s1600/contact.jpg" />
				<figcaption class="bar">
					<h3>Contact</h3>
				</figcaption>
			</figure>
		</section> -->
	</div>
		<div class="con">
			<ul>
				<br/>
				<li>위 치 : 서울 마포구 백범로 20  (지번 : 노고산동 107-38)</li>

				<li>추 천 음 료 : 오레오 라떼, 오레오 프라페, 퐁 프라페</li>
				<br/>
				<li>오 픈 시 간</li>	
				<li>월 - 금 : AM 8 ~ PM 10</li>	
				<li>  (주문은 9:10까지 가능)</li>	
				<li>토,일 공휴일 : AM 10 ~ PM 8</li>	
				<li>  (주문은 7:20까지 가능)</li>	
			</ul>
		</div>
		<br/>
		
<!-- Google Map -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=ko"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyB4ovH_N5bBhYVJz7PktTuhz48NzzlKsTM"></script>

 <script> 
  function initialize() { 
  var myLatlng = new google.maps.LatLng(37.552891, 126.937015); // y, x좌표값
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
		<div id="map_canvas" style="width:600px; height:400px;"></div> 
		
		</main>
</body>

</html>