<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${path}/resource/css/dccss/main.css" />

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
		<!-- <link rel="stylesheet" href="/CafeDal2/resource/css/dccss/main.css" /> -->
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
										<h2>새로워진 이디야 멤버스 선물이벤트</h2>
										<p>새로워진 이디야 멤버스의 슈퍼그레잇!한 선물 이벤트</p>
									</div>
									<div class="meta">
										<time class="published">2017. 11. 28</time>
										<time class="published">2017. 12. -- </time> 
										<a class="author"><span class="name">Ediya</span><img src="${path}/resource/images/logo-ediya.PNG" alt="" /></a>
									</div>
								</header>
								<img class="image featured" src="${path}/resource/images/b-ediya1.PNG" alt="" style="width:650px; margin-left: 100px" />
								<img class="image featured" src="${path}/resource/images/b-ediya2.PNG" alt="" style="width:650px; margin-left: 100px" />
								<img class="image featured" src="${path}/resource/images/b-ediya2.PNG" alt="" style="width:650px; margin-left: 100px" />

			
							</article>

					</div>

				<!-- Sidebar -->
					<section id="sidebar">

						<!-- Intro -->
							<section id="intro">
								<!-- <a href="#" class="logo"><img src="images/logo.jpg" alt="" /></a> -->
								<header>
								<header>
									<h2 style="margin-top: -2px; margin-bottom: -2px; font-size: 23px;"><a href="${path}/customer/useinfo/notice">■</a>
									    <a href="${path}/customer/dcinfo/sub/gongcha">■</a>
									    <a href="${path}/main/today">■</a></h2>
									<h2>Starbucks</h2>
									<h2>Ediya</h2>
									<p>토피넛 라떼(+샷추가) & 바닐라라떼</p>
								</header>
							</section>

						<!-- Mini Posts -->
							<section>
								<div class="mini-posts">


									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="ediya">Ediya</a></h3>
												<time class="published">가성비 GOOD</time>
												<a href="ediya" class="author"><img src="${path}/resource/images/logo-ediya.PNG"  alt="" /></a>
											</header>
											<a href="ediya" class="image"><img src="${path}/resource/images/ediya2.jpg" alt="" /></a>
										</article>
<%-- 
									<!-- Mini Post -->
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
										</article> --%>
									<!-- Mini Post -->
										<article class="mini-post">
											<header>
												<h3><a href="hollys">Hollys</a></h3>
												<time class="published">무난하면서 맛은 GOOD</time>
												<a href="hollys" class="author"><img src="${path}/resource/images/logo-hollys.PNG" alt="" /></a>
											</header>
											<a href="hollys" class="image"><img src="${path}/resource/images/hollys1.PNG" alt="" /></a>
										</article>	
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

	

	</body>
