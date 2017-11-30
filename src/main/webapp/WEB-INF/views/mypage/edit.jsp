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
			<label>님의 회원정보입니다.</label>
		</c:forEach>
	</form>
	<br /><br /> 
	<img src="${path}/resource/images/woman.jpg" style="height: 180px; margin-left: 420px;"> <br />
	<br /><br /><br />
	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<c:forEach var="m" items="${list}">
			<table class="table table-garo2">
				<tr id="tr_id">
					<th>아이디</th>
					<td colspan="6">${m.id}</td>
				</tr>
				<tr id="tr_pw">
					<th>비밀번호</th>
					<td colspan="6">${m.pwd}</td>
				</tr>
				<%-- <tr id="tr_name">
					<th>이름</th>
					<td colspan="6">${m.name}</td>
				</tr> --%>
				<tr id="tr_mail">
					<th>이메일</th>
					<td colspan="6">${m.mail}</td>
				</tr>
				<tr id="tr_birth">
					<th>생일</th>
					<td colspan="6">${m.birth}</td>
				</tr>
				<!-- <tr id="tr_cafe"> -->
					<th>카페</th>
					<c:forEach var="n" items="${listcafe}">
						<td>${n.cafename}</td>
					</c:forEach>
				<!-- <tr> -->
			</table>
			<div class="button">
				<input type="button" onclick="location.href='edit2?id=${m.id}'"
					class="eff" value="수정" /> <input type="button"
					onclick="location.href='edit'" class="eff1" value="취소" />
			</div>
		</c:forEach>
	</form>
</div>
</main>