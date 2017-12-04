<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet"
	href="${path}/resource/css/adminliststyle.css">


<body>
	<div class="reg-tit">신규 카페 등록</div>
	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<fieldset class="reg-field">
			<table class="table-cafe">
				<thead>
				<tr>
			
				<td class="tit w100">카페 이름</td>
		
				</tr>
				</thead>
				<tbody>
					<tr>
						
						<td><input id="width55" type="text" name="name" /></td>
					</tr>

				</tbody>
			</table>
			<div class="buttons55">
				<input
					style="color: white; background: #808080; border-style: none;"
					type="submit" value="등록" /> <a href="../manage">취소</a>
			</div>
		</fieldset>
	</form>
</body>



