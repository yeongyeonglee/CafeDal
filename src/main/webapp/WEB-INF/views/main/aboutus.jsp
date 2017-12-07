<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- <!DOCTYPE html>
<html> -->
<!-- <head> -->
<meta charset="UTF-8">
<title>cafedal</title>
<link href="${path}/css/style-header.css" type="text/css"
	rel="stylesheet" />
<link href="${path}/resource/css/aboutus.css" type="text/css"
	rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- </head> -->

<body>
	<script type="text/javascript">
		<!------------------------- 1번째 javascript------------------------->
		$(function() {
			$('a[href*=#]').on('click', function(e) {
				e.preventDefault();
				$('html, body').animate({
					scrollTop : $($(this).attr('href')).offset().top
				}, 500, 'linear');
			});
		});
		
	
		$(function() {
			  
			  //Old version below
			  
			  var image = document.querySelectorAll('.imageLink'),
			      overlay = document.querySelector('.overlayContainer'),
			      largeImage = document.querySelector('.largeImage'),
			      caption = document.querySelector('.imageCaption'),
			      href,
			      alt;
			  
			  function hideOverlay() {
			    overlay.removeEventListener('click', hideOverlay, false);
			    overlay.classList.remove('opacity');
			    
			    setTimeout(function() {
			      largeImage.removeAttribute('src');
			      largeImage.removeAttribute('alt');
			      overlay.classList.remove('display');
			    }, 400);
			  }
			  
			  function lightbox(event) {
			    event.preventDefault();
			    href = this.getAttribute('src');
			    alt = this.children[0].getAttribute('alt');
			    
			    largeImage.setAttribute('src', href);
			    largeImage.setAttribute('alt', alt);
			    caption.innerHTML = alt;
			    overlay.classList.add('display');
			    
			    setTimeout(function() { overlay.classList.add('opacity'); }, 25);
			    setTimeout(function() { overlay.addEventListener('click', hideOverlay, false); }, 400);
			  }
			  
			  
			  /***Event Listener***/
			  if ( overlay ) {
			    for ( var i = 0; i < image.length; i++ ) {
			      image[i].addEventListener('click', lightbox, false);
			    }
			  }
			  
			});
	</script>
											
	<div class="layout">

		<div class="page">
			<div class="headline">
				<!-- 	<h1>ABOUT US</h1>
				<h5>About Us Information</h5> -->
			</div>

			<div class="block center"></div>

			<div class="page Blue">
				<div class="headline"></div>

				<div class="block center">
					<div class="servicecard"></div>
				</div>


				<div class="page">
					<div class="headline"></div>

					<div class="IA_window">
						<div class="bar"></div>
						<div class="site"></div>
					</div>
					<!----------------------- 1번  CAFEDAL ----------------------->
					<section id="section01" class="demo1">
						<img src="${path}/resource/images/coffee1.jpg"
							style="background: center center/cover no-repeat; width: 100%; height: 100%;"
							alt="CafeDal" />
						<h1 id="deco1">CafeDal</h1>
						<a href="#section02"><span></span>Scroll</a>
					</section>
					<!----------------------- 2번  CAFE+DAL----------------------->
					<section id="section02" class="demo1">
						<img src="${path}/resource/images/coffee10.jpg"
							style="background: center center/cover no-repeat; width: 100%; height: 100%;"
							alt="CafeDal" />
						<div class="contentbox">
							<header>
								<h2>CAFE+DAL</h2>
							</header>
							<br />
							<p>안녕하세요. CAFEDAL입니다.</p>
							<p>저희 홈페이지는 회원님이 즐겨 찾는 카페들의 이벤트를</p>
							<p>달력으로 한 눈에 볼 수 있습니다 :)</p>
							<br />
							<br />
							<p>카페 관리자는</p>
							<p>카페 등록 서비스를 통해 등록이 가능하고</p>
							<p>타 회원들에게 이벤트 정보를 제공할 수 있습니다 :)</p>
						</div>
						<a href="#section03"><span></span>Scroll</a>
					</section>
					
					<!----------------------- 3번  이용정보/할인정보----------------------->
					<div id="section03" class="demo2">
						<img src="${path}/resource/images/coffee3.JPG"
							style="background: center center/cover no-repeat; width: 100%; height: 100%;"
							alt="CafeDal" />
						<!-- <h1>informations</h1>
						 <h1 class="header">Click Image to Enlarge</h1> -->
						  <div class="imageContainer clearfix">
						    <a class="imageLink" id="section03_1" src="${path}/resource/images/aboutus01.jpg" title="CALENDAR">
						      <img class="image" style="width:338px; height:225px;" id="section03_1" src="${path}/resource/images/aboutus01.jpg" alt="CALENDAR">
						    </a>
						    <a class="imageLink" id="section03_2" src="${path}/resource/images/aboutus02.JPG" title="USE INFO">
						      <img class="image" style="width:338px; height:225px;" id="section03_2" src="${path}/resource/images/aboutus02.JPG" alt="USE INFO">
						    </a>
						    <a class="imageLink" id="section03_3" src="${path}/resource/images/aboutus03.JPG" title="DC INFO">
						      <img class="image" style="width:338px; height:225px;" id="section03_3" src="${path}/resource/images/aboutus03.JPG" alt="DC INFO">
						    </a>
						    <a class="imageLink" id="section03_4" src="${path}/resource/images/aboutus04.jpg" title="TODAY'S COFFEE">
						      <img class="image" style="width:338px; height:225px;" id="section03_4" src="${path}/resource/images/aboutus04.jpg" alt="TODAY'S COFFEE">
						    </a>
						  </div>
						  
						  <div class="overlayContainer">
						    <div class="imageBox">
						      <div class="relativeContainer">
						        <img class="largeImage" src="" alt="">
						        <p class="imageCaption"></p>
						      </div>  <!-- /relativeContainer -->
						    </div>  <!-- /imageBox -->
						  </div>  <!-- overlayContainer -->
						<a id="thx" href="#thanks"><span></span>Scroll</a>
					</div>
				
					<!----------------------- thx  ----------------------->
					<section id="thanks">
						<div>
							<h2>Thanks!</h2>
							<p>
								<a href="${path}/main/calendar" target="_parent">&lt; Back
									To Main</a>
							</p>
						</div>
					</section>
					</div>
					</div>
					</div>
					</div>

</body>
<!-- </html> -->