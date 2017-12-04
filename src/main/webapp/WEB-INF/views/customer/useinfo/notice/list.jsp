<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link rel="stylesheet"
	href="${path}/resource/css/useinfo-font-awesome.min.css">
<link rel="stylesheet" href="${path}/resource/css/useinfo-animate.css">
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900|Montserrat:400,700'
	rel='stylesheet' type='text/css'>


<link rel="stylesheet"
	href="${path}/resource/css/useinfo-bootstrap.min.css">
<link rel="stylesheet" href="${path}/resource/css/useinfomain.css">

<script src="${path}/resource/js/useinfo-modernizr-2.7.1.js"></script>


<style>
.listnum {
	margin-top: 45px;
}

.listnum ul {
	padding-left: 900px;
	list-style: none;
	float: left;
	display: inline;
}

.listnum ul li {
	float: left;
}

.listnum ul li a {
	float: left;
	padding: 4px;
	margin-right: 3px;
	width: 30px;
	color: #000;
	font: bold 12px tahoma;
	border: 1px solid #eee;
	text-align: center;
	text-decoration: none;
}

.listnum ul li a:hover, .listnum ul li a:focus {
	color: #fff;
	border: 1px solid #808080;
	background-color: #808080;
}

#logout {
	border: none;
	background: black;
	color: white;
	margin-top: 9px;
	/* font-weight: bolder; */
	text-decoration: none;
	font-size: 14px;
}
</style>
<main class="main"> 
<br>
<br>
<br>

<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">


			<a class="logo aa" href="index.html"><img src="img/logo.svg"
				alt="Logo"></a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav" style="margin-left: -465px;">



				<li><a id="home" style="text-decoration: none"
					href="${path}/main/calendar">HOME</a></li>
				<!-- <security:authorize access="hasRole('ROLE_USER')"> -->
				<li>
					<form action="${path}/logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <input type="submit" value="LOGOUT"
							id="logout" />
					</form>
				</li>
				<!-- </security:authorize> -->
				<li><a id="mypage" style="text-decoration: none"
					href="${path}/mypage/edit">MY PAGE</a></li>

			</ul>
		</div>
		<!--/.navbar-collapse -->
	</div>
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
	</div>
</section>

<label class="list-tit"> 카페 할인 정보</label>

<section id="gongcha" class="pad-xl">

	<h3 class="hidden">공지사항 검색폼</h3>
	<div class="d1">
		<form>

			<select name="f">
				<option selected="selected" value="utitle">제목</option>
				<option value="ucontent">내용</option>
			</select> <input class="btn-search" type="text" name="q" placeholder="검색어 입력">
			<input class="btn-button" type="submit" value="▶" />

		</form>
	</div>


	<h3 class="hidden">카페이용방법</h3>
	<table class="table-garo-2">
		<thead>
			<tr>
				<th class="w60">카페</th>
				<th class="tit w100">제목</th>
				<th class="w70">작성자</th>
				<th class="w60">조회수</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach var="n" items="${list}">
				<tr>
					<td>${n.cname}</td>
					<td class="con w100"><a href="notice/${n.num}">${n.utitle}</a></td>
					<td>카페 달</td>
					<td>${n.hit}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


	<!-- <div class="reg">
   <a class="eff-1" href="notice/reg">등록</a>
</div> -->





	<c:set var="startNum" value="${page-((page-1)%5)}" />
	<c:set var="lastNum"
		value="${fn:substringBefore(count%10 ==0 ? count/10 : count/10+1, '.')}" />


	<div class="listnum">
		<ul class="listnum">
			<c:forEach var="i" begin="0" end="4">
				<c:set var="strong" value="" />
				<c:if test="${page == startNum+i }">
					<c:set var="strong" value="text-strong" />
				</c:if>
				<c:if test="${startNum+i <= lastNum }">
					<li><a class="${strong }" href="?p=${startNum+i}">${startNum+i}</a></li>
				</c:if>
				<c:if test="${startNum+i > lastNum }">
					<li><a href="?p=${startNum+i}">${startNum+i}</a></li>
				</c:if>
			</c:forEach>
		</ul>





	</div>



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


