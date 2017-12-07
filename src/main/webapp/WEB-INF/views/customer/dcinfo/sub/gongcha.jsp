<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${path}/resource/css/dccss/main.css" /> 
<%-- <link rel="stylesheet" href="${path}/resource/css/dccss/subcss.css" />  --%>

<%-- <link type="text/css" rel="stylesheet"
   href="${path}/resource/css/adminliststyle.css"> --%>
   
<!-- Scripts -->
 <script src="${path}/resource/js/dcjs/jquery.min.js"></script>
 <script src="${path}/resource/js/dcjs/skel.min.js"></script>
 <script src="${path}/resource/js/dcjs/util.js"></script>
 <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
 <script src="${path}/resource/js/dcjs/main.js"></script>   	
			
			

	<head>
		<title>카페 할인 정보</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<%-- <link rel="stylesheet" href="${path}/resource/css/dccss/main.css" /> --%>
		<!--[if lte IE 9]><link rel="stylesheet" href="resource/css/dccss/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<main>
	<!-- <body class="code"> -->

		<!-- Wrapper -->
			<div id="wrapper">


						<!-- Actions -->
							<section>
								<ul class="actions vertical">
									<!-- <li><a href="#" class="button big fit">Log In</a></li> -->
								</ul>
							</section>

					</section>

				<!-- Main -->
				
				<%-- <c:forEach var="n" items="${list}"> --%>
				 <div id="main"> 

						<!-- Post -->
						<article class="post">
								<header>
									<div class="title">
										<h2>제휴 - L.POINT 5% 추가 적립</h2>
										<p>매 월 5/15/25일 L.POINT 5% 추가 적립 받으세요!</p>
									</div>
									<div class="meta">
										<time class="published">2017. 09. 05</time>
										<time class="published">2017. 12. 25</time> 
										<a class="author"><span class="name">GongCha</span><img src="${path}/resource/images/logo-gongcha.PNG" alt="" /></a>
									</div>
								</header>
								<img class="image featured" src="${path}/resource/images/b-gong1.PNG" alt="" />
								<p class="p">대상: L.POINT 앱카드 적립 회원 <br />
								       혜택 : 기본적립 0.5% + 추가적립 5% / 1회 최대 3,000P, 일 3회 한도<br />
								       유의사항 : 추가 적립내역은 구매 완료 후, L.POINT 앱 로그인>메인화면>숫자 부분 터치 후 확인 가능 <br />
								       적립은 L.POINT 앱 메인화면 바코드 이용시만 가능하며 타사 앱에 등록된 L.POINT 카드는 추가 적립이 불가 <br />
									진행 매장: L.POINT 제휴 매장에 한함</p>

							</article>

						<!-- Post -->
						<article class="post">
								<header>
									<div class="title">
										<h2>멤버십 앱-신메뉴 따뜻한 밀크티 1+1 쿠폰</h2>
										<p>공차 멤버십 앱 회원님께 신메뉴 따뜻한 신메뉴 따뜻한 밀크티 1+1 쿠폰을 드립니다.</p>
									</div>
									<div class="meta">
										<time class="published">2017. 12. 01</time>
										<time class="published">2017. 12. 19</time> 
										<a class="author"><span class="name">GongCha</span><img src="${path}/resource/images/logo-gongcha.PNG" alt="" /></a>
									</div>
								</header>
								<img class="image featured" src="${path}/resource/images/b-gong2.PNG" style="width:750px ; height: 350px" alt="" />
								<p class="p">- 행사 메뉴: 신메뉴 따뜻한 밀크티 3종(HOT/ICED, L사이즈에 한함) 말차폼 초콜렛 밀크티, 초콜렛폼 타로 밀크티, 윈터폼 블랙 밀크티<br />
									- 행사 대상: 공차 멤버십 앱 회원 (터칭 적립 제외) * 12월 19일까지 신규 가입자 포함 행사 유의사항 <br />
									- 미진행 매장: NC부천점,NC서면점,NC송파점,NC평촌범계점,강남파이낸스센터점,강서구청점,갤러리아센터시티점,계산역점,고대안암점,고속터미널점,고척스카이돔점,고투몰점,공주휴게소점 당진/대잔방향
								</p>
							</article>


					</div>

				<!-- Sidebar -->
					<section id="sidebar">

						<!-- Intro -->
							<section id="intro">
								<!-- <a href="#" class="logo"><img src="images/logo.jpg" alt="" /></a> -->
								<header>
									<h2 style="margin-top: -2px; margin-bottom: -2px; font-size: 15px;">
										<a style=" padding-right: 20px;" href="${path}/customer/useinfo/notice">이용정보</a>
									    <a style=" padding-right: 20px;" href="${path}/customer/dcinfo/sub/gongcha">할인정보</a>
									    <a href="${path}/main/today">오늘의 카페</a></h2>
					
									<h2>GongCha</h2>
									<p>망고스무디+펄 추가, 초코쿠앤크 스무디</p>
								</header>
							</section>

						<!-- Mini Posts -->
							<section>
								<div class="mini-posts">

									<!-- Mini Post -->
									    <article class="mini-post">
											<header>
												
												<h3><a href="gongcha">GongCha</a></h3>
												<time class="published">밀크티 전문, 타피오카 펄 & 밀크폼</time>
												<a href="gongcha" class="author"><img src="${path}/resource/images/logo-gongcha.PNG" alt="" /></a>
											</header>
											<a href="gongcha" class="image"><img src="${path}/resource/images/gongcha2.PNG" alt="" /></a>
										</article>
									<!-- Mini Post -->	
										<article class="mini-post">
											<header>
												<h3><a href="starbucks">Starbucks</a></h3>
												<time class="published">매니아층, 스타벅스 멤버십</time>
												<a href="starbucks" class="author"><img src="${path}/resource/images/logo-star.png" alt="" /></a>
											</header>
											<a href="starbucks" class="image"><img src="${path}/resource/images/star1.jpg" alt="" /></a>
										</article>

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="ediya">Ediya</a></h3>
												<time class="published">가성비 GOOD</time>
												<a href="ediya" class="author"><img src="${path}/resource/images/logo-ediya.PNG"  alt="" /></a>
											</header>
											<a href="ediya" class="image"><img src="${path}/resource/images/ediya2.jpg" alt="" /></a>
										</article>
										
								<!-- 커피빈, 투썸 잠시 넣어두기 -->
								<%-- <!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="#">CoffeeBean</a></h3>
												<time class="published">커피와 티, 헤이즐넛 라떼</time>
												<a href="#" class="author"><img src="${path}/resource/images/logo-bean.png" alt="" /></a>
											</header>
											<a href="#" class="image"><img src="${path}/resource/images/bean2.PNG" alt="" /></a>
										</article>

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="#">TwoSome</a></h3>
												<time class="published">디저트 음료와 케이크, 티라미수, 딸기초코 케이크</time>
												<a href="#" class="author"><img src="${path}/resource/images/logo-two.PNG" alt="" /></a>
											</header>
											<a href="#" class="image"><img src="${path}/resource/images/two2.PNG" alt="" /></a>
										</article>    --%>
										
									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="hollys">Hollys</a></h3>
												<time class="published">무난하면서 맛은 GOOD</time>
												<a href="" class="author"><img src="${path}/resource/images/logo-hollys.PNG" alt="" /></a>
											</header>
											<a href="hollys" class="image"><img src="${path}/resource/images/hollys1.PNG" alt="" /></a>
										</article>	

								</div>
							</section>

						<!-- Posts List -->
						<!-- 	<section>
								<ul class="posts">
									<li>
										<article>
											<header>
												<h3><a href="#">Lorem ipsum fermentum ut nisl vitae</a></h3>
												<time class="published" datetime="2015-10-20">October 20, 2015</time>
											</header>
											<a href="#" class="image"><img src="images/pic08.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">Convallis maximus nisl mattis nunc id lorem</a></h3>
												<time class="published" datetime="2015-10-15">October 15, 2015</time>
											</header>
											<a href="#" class="image"><img src="images/pic09.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">Euismod amet placerat vivamus porttitor</a></h3>
												<time class="published" datetime="2015-10-10">October 10, 2015</time>
											</header>
											<a href="#" class="image"><img src="images/pic10.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">Magna enim accumsan tortor cursus ultricies</a></h3>
												<time class="published" datetime="2015-10-08">October 8, 2015</time>
											</header>
											<a href="#" class="image"><img src="images/pic11.jpg" alt="" /></a>
										</article>
									</li>
									<li>
										<article>
											<header>
												<h3><a href="#">Congue ullam corper lorem ipsum dolor</a></h3>
												<time class="published" datetime="2015-10-06">October 7, 2015</time>
											</header>
											<a href="#" class="image"><img src="images/pic12.jpg" alt="" /></a>
										</article>
									</li>
								</ul>
							</section> -->
<!-- 
						About
							<section class="blurb">
								<h2>About</h2>
								<p>Mauris neque quam, fermentum ut nisl vitae, convallis maximus nisl. Sed mattis nunc id lorem euismod amet placerat. Vivamus porttitor magna enim, ac accumsan tortor cursus at phasellus sed ultricies.</p>
								<ul class="actions">
									<li><a href="#" class="button">Learn More</a></li>
								</ul>
							</section> -->
						

					</section>

			</div>

<!-- 	</body> -->
</main>