<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet"
	href="${path}/resource/css/liststyle.css">

<div class="reg-tit">카페 이용정보 수정</div>
<form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
	enctype="multipart/form-data">
	<fieldset>
		<legend class="hidden">공지사항 수정정보 필드</legend>
		<table class="table-garo2">
			<tbody>
				<tr>
						<td style="width: 270px;">제목</td>
						<td colspan="3"><input style="margin-left: -200px;" type="text" name="utitle" value="${n.utitle}" /></td>
					</tr>
					<tr>
						<td style="width: 270px;">카페 코드</td>
						<td colspan="3"><input style="margin-left: -200px;" type="text" name="cafecode" value="${n.cafecode}" /></td>
					</tr>
					<tr>
						<td style="width: 270px;">카페명</td>
						<td colspan="3"><input style="margin-left: -200px;" type="text" name="cname" value="${n.cname}" /></td>
					</tr>

				<tr>
					<td colspan="4"><textarea style="overflow: auto;"
							name="ucontent" rows="40" cols="100">${n.ucontent}</textarea></td>
				</tr>
			</tbody>
		</table>
		<div class="buttons">
			<input style="color: white; background: #7b4122; border-style: none;"
				type="hidden" name="num" value="${n.num}" /> <input
				style="color: white; background: #7b4122; border-style: none;"
				type="submit" value="저장" /> <a href="${n.num}">취소</a>
		</div>
	</fieldset>
</form>





