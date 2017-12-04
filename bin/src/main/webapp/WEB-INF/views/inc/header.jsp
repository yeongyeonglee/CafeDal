<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet"
	href="${path}/resource/css/headerstyle.css">

<header id="header">
	<div class="content-container">
		<div id="member-menu">
			<ul>
				<li>
					<a id="home" href="${path}/main/calendar">HOME</a>
				</li>
				<!-- <security:authorize access="hasRole('ROLE_USER')"> -->
					<li>
						<form action="${path}/logout" method="post" >
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
							<input type="submit" value="LOGOUT"  id="logout"/>
						</form>
					</li>
				<!-- </security:authorize> -->
				<li>
					<a id="mypage" href="${path}/mypage/edit">MY PAGE</a>
				</li>
			</ul>
		</div>
		<div id="logo">
			<img src="${path}/resource/images/logo.png" alt="CafeDal" />
		</div>
	</div>
</header>

