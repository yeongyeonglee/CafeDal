<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet"
	href="${path}/resource/css/aside2.css">


<script type="text/javascript">
	$(function() {
		$("#accordian h3").click(function() {
			$("#accordian ul ul").slideUp();
			if (!$(this).next().is(":visible")) {
				$(this).next().slideDown();
			}
		});
	})
</script>

<aside>

	<input type="checkbox" id="menu_state" checked>
	<nav>

	

		<div class="profile">
			<h1 id="logo">

			<a href="${path}/admin/manage/list"> <img
				src="${path}/resource/images/bono(2).jpg" alt="CafeDal" />

			</a>
		</h1>
			<security:authorize access="hasRole('ROLE_USER')">
				<li>
					<form action="${path}/logout" method="post">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" /> <input type="submit" value="LOGOUT"
							id="logout" />
					</form>
				</li>
				<!-- <li><a id="mypage" href="../mypage/edit">MY PAGE</a></li> -->
			</security:authorize>

		</div>
		<div id="accordian">

			<ul>
				<li class="active">
					<h3>
						<span class="icon-dashboard"></span>회원 관리
					</h3>
					<ul>
						<li><a href="#">정보 조회</a></li>
						<!-- 	<li><a href="#">Search</a></li> -->

					</ul>
				</li>
				<li class="active">
					<h3>
						<span class="icon-tasks"></span>공지관리
					</h3>
					<ul>
						<li><a href="#">이용 정보 관리</a></li>
						<li><a href="#">할인 정보 관리</a></li>
					</ul>
				</li>
				<li class="active">
					<h3>
						<span class="icon-tasks"></span>카페 관리
					</h3>
					<ul>
						<li><a href="#">카페 정보 조회</a></li>

					</ul>
				</li>

			</ul>
		</div>

	</nav>
</aside>


