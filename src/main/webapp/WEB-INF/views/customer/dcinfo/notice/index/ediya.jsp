<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />



	<head>
		<title>카페 할인 정보</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="/CafeDal2/resource/css/dccss/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="resource/css/dccss/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				<!-- 	<header id="header">
						<h1><a href="#">Cafe Dal</a></h1>
						<nav class="links">
							<ul>
								<li><a href="#">GongCha</a></li>
								<li><a href="#">Starbucks</a></li>
								<li><a href="#">Ediya</a></li>
								<li><a href="#">CoffeeBean</a></li>
								<li><a href="#">TwoSome</a></li>
								<li><a href="#">Hollys</a></li>
							</ul>
						</nav>
						<nav class="main">
							<ul>
								<li class="search">
									<a class="fa-search" href="#search">Search</a>
									<form id="search" method="get" action="#">
										<input type="text" name="query" placeholder="Search" />
									</form>
								</li>
								<li class="menu">
									<a class="fa-bars" href="#menu">Menu</a>
								</li>
							</ul>
						</nav>
					</header> -->

				<!-- Menu -->
					<section id="menu">

						<!-- Search -->
							<section>
								<form class="search" method="get" action="#">
									<input type="text" name="query" placeholder="Search" />
								</form>
							</section>

						<!-- Links -->
				<!-- 			<section>
								<ul class="links">
									<li>
										<a href="#">
											<h3>Lorem ipsum</h3>
											<p>Feugiat tempus veroeros dolor</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Dolor sit amet</h3>
											<p>Sed vitae justo condimentum</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Feugiat veroeros</h3>
											<p>Phasellus sed ultricies mi congue</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Etiam sed consequat</h3>
											<p>Porta lectus amet ultricies</p>
										</a>
									</li>
								</ul>
							</section>
 -->
						<!-- Actions -->
							<section>
								<ul class="actions vertical">
									<li><a href="#" class="button big fit">Log In</a></li>
								</ul>
							</section>

					</section>

				<!-- Main -->
					<div id="main">

						<!-- Post -->
							<article class="post">
								<header>
									<div class="title">
										<h2><a href="#">새로워진 이디야 멤버스 선물이벤트</a></h2>
										<p>새로워진 이디야 멤버스의 슈퍼그레잇!한 선물 이벤트</p>
									</div>
									<div class="meta">
										<time class="published">2017. 11. 28</time>
										<time class="published">2017. 12. - </time> 
										<a href="#" class="author"><span class="name">Ediya</span><img src="images/logo-ediya.PNG" alt="" /></a>
									</div>
								</header>
								<img class="image featured" src="images/b-ediya1.PNG" alt="" style="width:650px; margin-left: 100px" />
								<img class="image featured" src="images/b-ediya2.PNG" alt="" style="width:650px; margin-left: 100px" />
								<img class="image featured" src="images/b-ediya2.PNG" alt="" style="width:650px; margin-left: 100px" />
								<p>
								     </p>
				<footer>
									<ul class="actions">
										<li><a href="#" class="button big">Continue Reading</a></li>
									</ul>
								<!-- 	<ul class="stats">
										<li><a href="#">General</a></li>
										<li><a href="#" class="icon fa-heart">28</a></li>
										<li><a href="#" class="icon fa-comment">128</a></li>
									</ul> -->
								</footer>
							</article>

						<!-- Post -->
						
						<!-- Post 2 -->
							<!-- <article class="post">
								<header>
									<div class="title">
										<h2><a href="#">2017 크리스마스 e-프리퀀시 이벤트</a></h2>
										<p>크리스마스 음료 3잔 포함, 총 17잔의 음료를 구매하시면 2018 스타벅스 플래너(한정)를 드립니다.</p>
									</div>
									<div class="meta">
										<time class="published">2017. 10. 27</time>
										<time class="published">2017. 12. 31</time> 
										<a href="#" class="author"><span class="name">Ediya</span><img src="images/logo-ediya.PNG" alt="" /></a>
									</div>
								</header>
								<img class="image featured" src="images/b-star3.PNG" alt="" style="width:820px ; height: 500px" />
								<p>- e 스티커 적립기간: 2017년 10월 27일 - 12월 31일<br />
								   - 플래너 증정기간: 2017년 10월 27일 - 2018년 1월 7일<br />
								   </p>
				<footer>
									<ul class="actions">
										<li><a href="#" class="button big">Continue Reading</a></li>
									</ul>
									<ul class="stats">
										<li><a href="#">General</a></li>
										<li><a href="#" class="icon fa-heart">28</a></li>
										<li><a href="#" class="icon fa-comment">128</a></li>
									</ul>
								</footer>
							</article>
 -->
						<!-- Post 2 -->
						
						<!-- Post 3 -->
						<!-- <article class="post">
								<header>
									<div class="title">
										<h2><a href="#">신세계 면세점 이벤트</a></h2>
										<p>골드,그린 회원님! 신세계 면세점에서 제공하는 혜택입니다!</p>
									</div>
									<div class="meta">
										<time class="published">2017. 11. 9</time>
										<time class="published">2018. 1. 31</time> 
										<a href="#" class="author"><span class="name">Ediya</span><img src="images/logo-ediya.PNG" alt="" /></a>
									</div>
								</header>
								<img class="image featured" src="images/b-star4.PNG" alt="" style="width:820px ; height: 500px" />
								<p>- 대상: 그린, 골드회원<br />
								       신세계 인터넷면세점 적립금 1만원 + 신규가입시  스타벅스 아메리카노(tall) 기프티콘 추가증정<br />
								   - 대상: 골드회원   <br />
								     신세계 면세점 명동점, 부산점, 인천공항점 방문시 면세점 GOLD 멤버십 발급 + 1만원 선불카드 증정
								      </p>
				<footer>
									<ul class="actions">
										<li><a href="#" class="button big">Continue Reading</a></li>
									</ul>
									<ul class="stats">
										<li><a href="#">General</a></li>
										<li><a href="#" class="icon fa-heart">28</a></li>
										<li><a href="#" class="icon fa-comment">128</a></li>
									</ul>
								</footer>
							</article>  -->
						<!-- Post 3 -->
						
						<!-- Post 4 -->
					<!-- 	<article class="post">
								<header>
									<div class="title">
										<h2><a href="#">현대카드 H-Coin 이벤트</a></h2>
										<p>H-Coin 현금처럼 사용 & 사용한 H-Coin의 5% 할인</p>
									</div>
									<div class="meta">
										<time class="published">2017. 11. 16</time>
										<time class="published">2018. 11. 15</time> 
										<a href="#" class="author"><span class="name">Ediya</span><img src="images/logo-ediya.PNG" alt="" /></a>
									</div>
								</header>
								<img class="image featured" src="images/b-star5.PNG" alt="" style="width:820px ; height: 350px" />
								<p>- H-Coin: M포인트를 전환하여 다양한 제휴처에서 현금처럼 100% 사용하는 포인트<br /> 
								   - 이용방법: 현대카드 앱에서 M포인트를 H-Coin으로 전환하여 사용   <br />
								   - H-Coin 사용시 아메리카노(tall)기프티콘을 1000분께 추첨 증정
								      </p>
				<footer>
									<ul class="actions">
										<li><a href="#" class="button big">Continue Reading</a></li>
									</ul>
									<ul class="stats">
										<li><a href="#">General</a></li>
										<li><a href="#" class="icon fa-heart">28</a></li>
										<li><a href="#" class="icon fa-comment">128</a></li>
									</ul>
								</footer>
							</article>  -->
						<!-- Post 4 -->
						

						<!-- Pagination -->
					<!-- 		<ul class="actions pagination">
								<li><a href="" class="disabled button big previous">Previous Page</a></li>
								<li><a href="#" class="button big next">Next Page</a></li>
							</ul> -->

					</div>

				<!-- Sidebar -->
					<section id="sidebar">

						<!-- Intro -->
							<section id="intro">
								<!-- <a href="#" class="logo"><img src="images/logo.jpg" alt="" /></a> -->
								<header>
									<h2>Ediya</h2>
									<p>가성비 ★★★★★</p>
								</header>
							</section>

						<!-- Mini Posts -->
							<section>
								<div class="mini-posts">


									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="#">Ediya</a></h3>
												<time class="published" datetime="2015-10-19">가성비, 토피넛 라떼(+샷추가) & 바닐라라떼</time>
												<a href="#" class="author"><img src="images/logo-ediya.PNG"  alt="" /></a>
											</header>
											<a href="#" class="image"><img src="images/ediya2.jpg" alt="" /></a>
										</article>

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="#">CoffeeBean</a></h3>
												<time class="published" datetime="2015-10-18">커피와 티, 헤이즐넛 라떼</time>
												<a href="#" class="author"><img src="images/logo-bean.png" alt="" /></a>
											</header>
											<a href="#" class="image"><img src="images/bean2.PNG" alt="" /></a>
										</article>

									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="#">TwoSome</a></h3>
												<time class="published" datetime="2015-10-17">디저트 음료와 케이크, 티라미수, 딸기초코 케이크</time>
												<a href="#" class="author"><img src="images/logo-two.PNG" alt="" /></a>
											</header>
											<a href="#" class="image"><img src="images/two2.PNG" alt="" /></a>
										</article>
									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="#">Hollys</a></h3>
												<time class="published" datetime="2015-10-17">바닐라 딜라이트, 벨지안 초코</time>
												<a href="#" class="author"><img src="images/logo-hollys.PNG" alt="" /></a>
											</header>
											<a href="#" class="image"><img src="images/hollys1.PNG" alt="" /></a>
										</article>	
									<!-- Mini Post -->
									    <article class="mini-post">
											<header>
												<h3><a href="#">GongCha</a></h3>
												<time class="published" datetime="2015-10-20">밀크티 전문, 타피오카 펄 & 밀크폼</time>
												<a href="#" class="author"><img src="images/logo-gongcha.PNG" alt="" /></a>
											</header>
											<a href="#" class="image"><img src="images/gongcha2.PNG" alt="" /></a>
										</article>
								   	<!-- Mini Post -->	
										<article class="mini-post">
											<header>
												<h3><a href="#">Starbucks</a></h3>
												<time class="published" datetime="2015-10-20">멤버십 제도, 다양한 메뉴 & 이벤트</time>
												<a href="#" class="author"><img src="images/logo-star.png" alt="" /></a>
											</header>
											<a href="#" class="image"><img src="images/star1.jpg" alt="" /></a>
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

						<!-- Footer -->
							<section id="footer">
                         <!--  <ul class="icons">
									<li><a href="#" class="fa-twitter"><span class="label">Twitter</span></a></li>
									<li><a href="#" class="fa-facebook"><span class="label">Facebook</span></a></li>
									<li><a href="#" class="fa-instagram"><span class="label">Instagram</span></a></li>
									<li><a href="#" class="fa-rss"><span class="label">RSS</span></a></li>
									<li><a href="#" class="fa-envelope"><span class="label">Email</span></a></li>
								</ul>
								<p class="copyright">&copy; Untitled. Crafted: <a href="http://designscrazed.org/">HTML5</a>.</p> -->
							</section>

					</section>

			</div>

		<!-- Scripts -->
			<script src="/CafeDal2/resource/js/dcjs/jquery.min.js"></script>
			<script src="/CafeDal2/resource/js/dcjs/skel.min.js"></script>
			<script src="/CafeDal2/resource/js/dcjs/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="/CafeDal2/resource/js/dcjs/main.js"></script>

	</body>
