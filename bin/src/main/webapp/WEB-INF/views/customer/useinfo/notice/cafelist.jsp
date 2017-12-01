<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${path}/resource/css/useinfo-font-awesome.min.css">
<link rel="stylesheet" href="${path}/resource/css/useinfo-animate.css">
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900|Montserrat:400,700'
	rel='stylesheet' type='text/css'>


<link rel="stylesheet" href="${path}/resource/css/useinfo-bootstrap.min.css">
<link rel="stylesheet" href="${path}/resource/css/useinfomain.css">

<script src="${path}/resource/js/useinfo-modernizr-2.7.1.js"></script>
<main>




<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="logo" href="index.html"><img src="img/logo.svg"
				alt="Logo"></a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#be-the-first" class="scroll">맨 위로 올라가기</a></li>
				<li><a href="#hollys">맨 아래로 내려가기</a></li>
			</ul>
		</div>
		<!--/.navbar-collapse -->
	</div>
</div>


<div class="mouse-icon hidden-xs">
	<div class="scroll"></div>
</div>

<section id="be-the-first" class="pad-xl">

	<div class="container">

		<div class="row">
			<div
				class="col-sm-8 col-sm-offset-2 text-center margin-30 wow fadeIn"
				data-wow-delay="0.6s">
				<h2 style="color: black;">Cafe Use Information</h2>
				<%-- <div class="iphone wow fadeInUp" data-wow-delay="1s">
			<img src="${path}/resource/images/useinfomain.jpg">
		</div> 
				 --%>
				<!-- <p class="lead">카페 이용 방법을 알려드립니다.</p> -->
				<div class="row">
					<div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
					</div>
				</div>
			</div>
		</div>


		<div class="row btn5">
			<div class="  " data-wow-delay="0.4s">
				<a href="#gongcha" class="btn btn-secondary btn-lg scroll">공차</a>
			</div>
			<div></div>
			<br>
			<div class=" " data-wow-delay="0.8s">
				<a href="#starbucks" class="btn btn-primary btn-lg scroll">스타벅스</a>
			</div>
			<div></div>
			<div class=" " data-wow-delay="1.2s">
				<a href="#ediya" class="btn btn-secondary btn-lg scroll">이디야</a>
			</div>
			<div></div>
			<div class="  " data-wow-delay="1.4s">
				<a href="#hollys" class="btn btn-primary btn-lg scroll">할리스</a>
			</div>

		</div>
		<!--End Button Row-->
	</div>
</section>

<section id="gongcha" class="pad-xl">

	<div class="container">
		<img style="float: left;" id="gongchaimg"
			src="${path}/resource/images/gongcha.png" />
		<%-- <img style="float: left;" id="gongchaimg2"
			src="${path}/resource/images/gongchaname.png" /> --%>
		<div class="row2">
			<div class="col-sm-4 wow fadeIn move" data-wow-delay="0.4s">
				<hr class="line purple">
				<h3 class="h31">공차&nbsp;이용법&nbsp;-&nbsp; 취향에 &nbsp;맞게
					&nbsp;음료를&nbsp; 고르세요</h3>
				<p id="p1">
					차를 기본으로 한 음료가 메인 메뉴입니다.<br /> 그 외 생과일 음료와 커피 메뉴등도 있습니다!<br /> 음료
					베스트 메뉴는 블랙 밀크 티, 망고 스무디와<br /> 초콜릿 티 라떼 입니다.
				</p>
				<img id="gongcha-menu"
					src="${path}/resource/images/gongcha-menu.PNG" />

			</div>
			<div class="col-sm-4 wow fadeIn move" data-wow-delay="0.8s">
				<hr class="line blue">
				<h3 class="h31">공차&nbsp;이용법&nbsp;- 취향에 &nbsp;맞게 &nbsp;토핑을&nbsp;
					고르세요</h3>
				<p id="p2">
					토핑을 통해 공차 음료의 다양한 맛을 느낄 수 있습니다. 최대 3가지의 토핑을 추가 할 수 있어요.<br /> 토핑
					가격은 음료외 별도 입니다.<br /> 기본 추천 토핑은 타피오카 펄입니다.
				</p>
				<img id="gongcha-menu2" src="${path}/resource/images/peal.png" />

			</div>
			<div class="col-sm-4 wow fadeIn move" data-wow-delay="1.2s">
				<hr class="line yellow">
				<h3 class="h31">공차&nbsp;이용법&nbsp;-마지막 &nbsp;당도/얼음 양을&nbsp;
					조절하세요</h3>

				<p id="p3">
					입맛에 맞게 당도와 얼음양를 조절할 수 있습니다.<br /> 주문할 때 당도와 얼음 양을 정해주세요.<br /> 처음
					오신 분들은 당도 70%과 얼음 중간을 추천합니다.
				</p>
				<img id="gongcha-menu2" src="${path}/resource/images/ice.png" />

			</div>
			
		</div>

	</div>
<div id="gong-btn"><a href="notice?f=cafecode&q=1" > 더 보기</a></div>

</section>


<!--Pricing-->
<section id="starbucks" class="pad-lg">

	<div class="container2">

		<div class="row margin-30 news-container">
			<div
				class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 wow fadeInLeft"
				data-wow-delay="0.8s">
				<a href="#" target="_blank"> <img class="news-img pull-left"
					src="img/press-01.jpg"></a>
					<p class="black">
						<a class="p1"> STEP 1 : 스타벅스 커피 매장에서 즐기기 <br /> <br />
						</a><small><a class="a1">스타벅스의 커피 메뉴에는 에스프레소, 콜드브루, 디카페인
								으로 나누어져있습니다.<br> 에스프레소는 입안 가득히 커피와 달콤한 카라멜 향이 느껴지는 커피
								음료입니다.<br> 다양한 원두를 즐기고 싶다면 에스프레소 메뉴중 오늘의 커피가 있습니다.<br>
								매주 일주일 간격으로 하나의 원두 종류를 선정하여 신선하게 제공되는 드립커피로<br> 다른 커피 메뉴보다
								저렴하게 원두 커피의 풍부한 맛과 향을 따뜻하게 즐기실 수 있습니다.<br> 콜드브루는 전용 원두를 차가운
								물로 14시간 동안 추출하여 신선하게 한정된 양만 제공하여 <br>실크같이 부드럽고 그윽한 초콜릿 풍미를
								느낄 수 있습니다.<br> 디카페인 커피는 화학제품을 쓰지 않고 오직 카페인만을 제거하는 CO2 방식으로
								만들어집니다.<br> 일반 커피 대비 맛과 향의 차이가 거의 없는 것이 가장 큰 특징입니다.<br>
								그 외 색다른 커피종류를 즐기고 싶을 때 스타벅스 리저브 매장이 있습니다.<br> 적은 수량 , 가장
								신선한 상태에서 손으로 골라낸 커피로 스타벅스에서 제공하는 특별한 커피입니다.<br> 2가지 혹은 소수의
								스타벅스 리저브 커피만이 지정된 스타벅스 리저브 매장™에서 제공됩니다.
						</a></small>
					</p>

				
			</div>
		</div>

		<div class="row margin-30 news-container">
			<div
				class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 wow fadeInLeft"
				data-wow-delay="1.2s">
				<a href="#" target="_blank"> <img class="news-img pull-left"
					src="img/press-02.jpg"></a>
					<p class=" black">
						<a class="p1"> STEP 2 : 스타벅스 다양한 메뉴 즐기기<br /> <br />
						</a><small><a class="a1"> 스타벅스에서는 프라푸치노, 티, 피지오등 다양한 음료
								메뉴와 케익, 샌드위치등 푸드가 있습니다.<br> 음료와 푸드는 고정 메뉴와 한정 메뉴로 나눠져 한정
								메뉴가 출시될 때 마다 다양한 이벤트를 즐길 수 있습니다.<br> 스타벅스에서는 커피 메뉴와 음료 메뉴를
								커스텀을 할 수 있습니다.<br> 시럽 양 조절 , 샷 추가로 자신만의 메뉴를 만들어 즐길 수 있고 그
								메뉴가 공유되어 인기를 끌기도 합니다.<br> 푸드는 빵, 스콘, 케이크, 샌드위치뿐만이 아닌 샐러드와
								푸딩등 다양한 메뉴를 팝니다.<br> 또한 바쁜 직장인들이나 다이어트를 하는 사람들을 위해 고구마,옥수수를
								팔기도 합니다.
						</a></small>
					</p>
			
			</div>
		</div>
		<div class="row margin-30 news-container">
			<div
				class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 wow fadeInLeft"
				data-wow-delay="1.5s">
				<a href="#" target="_blank"> <img class="news-img pull-left"
					src="img/press-02.jpg"></a>
					<p class="black">
						<a class="p1">STEP 3 : 스타벅스 커피 집에서 즐기기<br /> <br /></a> <small><a
							class="a1"> 스타벅스에서 판매하는 원두로 집에서 다양하게 즐길 수 있습니다.<br>
								스타벅스는 블론드 로스트, 미디엄 로스트와 다크 로스트의 세 가지 로스팅으로 분류됩니다.<br> 블론드
								로스트는 향긋한 청량감으로 은은하고 부드러우며, 살짝 달콤한 풍미가 느껴지는 친근한 커피입니다.<br>
								미디엄 로스트 커피는 너무 연하거나 너무 강하지 않은 그 중간의 입맛을 가진 분들에게 적합합니다.<br>
								부드럽고 균형 잡힌 미디엄 로스트 스타벅스 커피는 항상 변함없는 스타벅스 커피의 맛을 보여줍니다.<br>
								다크 로스트 커피는 달콤하면서 강한 풍미와 향긋한 입맛이 특징입니다.<br> 입안에서 느껴지는 꽉찬
								무게감이 강조된 커피로 진하고 강한 맛을 선호하시는 분들에게 적합합니다.

						</a></small>
					</p>
		
			</div>
		</div>
		<img style="float: left;" id="starbucksimg"
			src="${path}/resource/images/starbucks.png" />
			<div id="star-btn"><a href="notice?f=cafecode&q=2" > 더 보기</a></div>
	</div>
</section>


<section id="ediya" class="pad-xl">

	<div class="container">
		<img style="float: left;" id="ediyaimg"
			src="${path}/resource/images/ediya.png" />

		<div class="row2">


			<div class="col-sm-4 wow fadeIn move" data-wow-delay="0.4s">
				<hr class="line purple">
				<h3 class="h31">이디야 커피</h3>
				<p id="p1">
					입안 가득 느껴지는 바디감과 부드러운 향미<br> 줄어든 쓴 맛과 깔끔한 맛입니다.<br> 부드럽고
					깔끔한 맛을 선호하는 사람들은<br> 저렴한 가격에 즐길 수 있습니다.<br> 이디야 커피는 저렴한
					가격에도 <br>기본 2샷을 제공합니다.
				</p>
				<img id="ediya-graph" src="${path}/resource/images/ediyagraph.png" />

			</div>

			<div class="col-sm-4 wow fadeIn move" data-wow-delay="0.8s">
				<hr class="line blue">
				<h3 class="h31">이디야 티</h3>
				<p id="p2">
					신선한 과일의 맛과 향을 그대로 즐길 수 있는 메뉴로 <br>과일 티와 과일 청을 블렌딩해 만들었습니다.<br>
					과일을 건조해 조합한 과일티와 홈메이드 방식으로 만든<br> 과일 청을 첨가해 자연스럽고 풍부한 맛과 향을<br>
					그대로 즐길 수 있습니다.
				</p>
				<img id="ediya-tea" src="${path}/resource/images/ediyatea.png" />
			</div>


			<div class="col-sm-4 wow fadeIn move" data-wow-delay="1.2s">
				<hr class="line yellow">
				<h3 class="h31">이디야 첫 방문 추천 음료</h3>

				<p id="p3">
					첫 방문 어떤 음료를 마실지 고민될 때<br /> 토피넛 라떼를 추천 합니다.<br /> 코코아 + 아몬드 + 호두의
					조합으로<br /> 달달하고 고소한 맛으로 남녀노소 선호할 맛입니다.<br /> 여기에 샷추가를 해서 달달 고소한
					라떼로 즐길 수 있어요!
				</p>
				<img id="ediya-best" src="${path}/resource/images/ediyalatte.png" />

			</div>


		</div>
		</div>
		<div id="gong-btn"><a href="notice?f=cafecode&q=3" > 더 보기</a></div>
</section>


<!--hollys-->
<section id="hollys" class="pad-lg">

	<div class="container2">

		<div class="row margin-30 news-container">
			<div
				class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 wow fadeInLeft"
				data-wow-delay="0.8s">
				<a href="#" target="_blank"> <img class="news-img pull-left"
					src="img/press-01.jpg">
					<p class="black">
						<a class="p1"> 1.할리스 커피 <br /> <br />
						</a><small><a class="a1">부드러우면서도 깊고 진한 맛이 특징입니다. <br />
								할리스커피만의 부드러움을 살리는 로스팅 방식과 ‘더블샷’<br /> 커피를 탄화될 정도로 강하게 볶아 쓴 맛이
								강한 커피가 아닌<br /> 커피가 타지 않을 정도로 볶아 신맛과 쓴맛이 줄이고 <br /> 고품질 원두 본연의
								풍부한 향과 감칠맛까지 납니다. <br /> 여기에 단순히 커피의 쓴맛이 아닌<br /> 깊고 진한 맛을 살리기
								위해 모든 음료에 에스프레소 더블샷을 제공합니다.
						</a></small>
					</p>

				</a> <img id="hollys-coffee"
					src="${path}/resource/images/hollyscoffee.png" />
			</div>
		</div>

		<div class="row margin-30 news-container">
			<div
				class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 wow fadeInLeft"
				data-wow-delay="1.2s">
				<a href="#" target="_blank"> <img class="news-img pull-left"
					src="img/press-02.jpg">
					<p class=" black">
						<a class="p1"> 2. 할리스 음식<br /> <br />
						</a><small><a class="a1"> 달달한 간식인 케이크, 아발랑쉬와 한 끼 식사로 든든한
								파니니, 데니쉬 그리고 베이글 종류등이 있습니다. <br /> 카페에서 오래 있는 사람들을 대상으로 하루 종일
								카페에서 보내도 모든 것을 해결할 수 있게 음식들이 다양하게 있습니다. <br /> 또한 시즌 메뉴를 선보여 항상
								시기별 색다른 음식을 즐길 수 있습니다. <br /> 다른 카페와 다르게 허니 브레드가 바게트 볼로 되어있습니다.
								<br /> 브레드와 다르게 색다른 식감과 맛을 느낄 수 있습니다.

						</a></small>

					</p>
				</a> <img id="hollys-food" src="${path}/resource/images/hollysfood.png" />
			</div>
		</div>
		<div class="row margin-30 news-container">
			<div
				class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 wow fadeInLeft"
				data-wow-delay="1.5s">
				<a href="#" target="_blank"> <img class="news-img pull-left"
					src="img/press-02.jpg">
					<p class="black">
						<a class="p1">3. 할리스 추천 메뉴<br /> <br /></a> <small><a
							class="a1"> 할리스의 추천 메뉴는 바닐라 딜라이트 입니다.<br /> 카페라떼에 마다가스카르산
								천연바닐라빈으로 만든 바닐라 파우더를 듬뿍 넣은 바닐라라떼 입니다.<br /> 시럽의 가볍고 깔끔한 맛이 아닌
								파우더의 깊고 진한 풍부한 맛입니다.<br /> 할리스하면 '바닐라 딜라이트'할 정도의 인기 만점 할리스의 대표
								메뉴 입니다.<br /> 아이스로 즐기는 것도 좋지만 따뜻하게 마시는 것이 향과 맛을 제대로 즐길 수 있습니다.





						</a></small>
					</p>
				</a> <img id="hollys-best" src="${path}/resource/images/hollysbest.png" />
			</div>
		</div>
		<img style="float: left;" id="hollysimg"
			src="${path}/resource/images/hollys.png" />
	</div>
	
	<div id="gong-btn"><a href="notice?f=cafecode&q=6" > 더 보기</a></div>
</section>






<!-- Placed at the end of the document so the pages load faster --> <script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="${path}/resource/js/jquery-useinfo-1.11.0.min.js"><\/script>')
</script> <script src="${path}/resource/js/useinfo-wow.min.js"></script> <script
	src="${path}/resource/js/useinfobootstrap.min.js"></script> <script
	src="${path}/resource/js/useinfo-main.js"></script> </main>
