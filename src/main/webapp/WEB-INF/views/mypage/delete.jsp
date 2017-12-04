<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="${path}/resource/css/mypagestyle.css">
<br />
<br />

<main class="main"> <!-- 회원가입 폼 -->
<div id="div_activate" class="container">
	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<c:forEach var="m" items="${list}">
			<label id="name-d">${m.name}</label>
			<label>님 정말 탈퇴하시겠습니까?</label>
		</c:forEach>
	</form>
	<br /><br /><br />
	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<div class="button">
		<input type="hidden" name="id" value="${m.id}" />
		<input class="eff" onclick="location.href='delete?id=${m.id}'" type="submit" value="탈퇴" />
		<input type="button" onclick="location.href='../main/calendar'" class="eff1" value="취소" />
			<!-- <a class="eff-2" href="../mypage/edit">취소</a> -->
		</div>
	</form>
</div>
</main>