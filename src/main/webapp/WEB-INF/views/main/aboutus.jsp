<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cafedal</title>
<link href="${path}/css/style-header.css" type="text/css"
	rel="stylesheet" />
<link href="${path}/resource/css/aboutus.css" type="text/css"
	rel="stylesheet" />

</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('a[href*=#]').on('click', function(e) {
			e.preventDefault();
			$('html, body').animate({
				scrollTop : $($(this).attr('href')).offset().top
			}, 500, 'linear');
		});
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

					<section id="section01" class="demo">
						<h1>CafeDal</h1>
						<a href="#section02"><span></span>Scroll</a>
					</section>
					<section id="section02" class="demo">
						<h1>카페+달</h1>
						<!-- <h2>카페와 달력을 합친 합성어</h2>
						<h2>달력으로 카페 행사를 한 눈에</h2> -->
						<a href="#section03"><span></span>Scroll</a>
					</section>
					<section id="section03" class="demo">
						<h1>이용정보/할인정보</h1>
						<a href="#section04"><span></span>Scroll</a>
					</section>
					<section id="section04" class="demo">
						<h1>오늘의 커피</h1>
						<a href="#section05"><span></span>Scroll</a>
					</section>
					<section id="section05" class="demo">
						<h1>Scroll Down Button #5</h1>
						<a href="#thanks"><span></span>Scroll</a>
					</section>
					<section id="thanks">
						<div>
							<h2>Thanks!</h2>
							<p>
								<a href="${path}/main/calendar" target="_parent">&lt; Back
									To Main</a>
							</p>
						</div>
					</section>
</body>
</html>