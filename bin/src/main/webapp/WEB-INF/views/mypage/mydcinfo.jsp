<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet" href="${path}/resource/css/mypagestyle.css">
<br />
<br />
<br />
<br />
<main class="main">

<div id="div_activate" class="container">
<br />
<label id="name-dd">나의 카페 할인 정보</label>
<br /><br /><br /><br /><br /><br />
	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
		<table class="table table-garo2">
	      <tr>
	         <th class="w60">카페</th>
	         <th class="tit w100">제목</th>
	         <th class="w60">내용</th>
	         <th class="w60">시작일자</th>
	         <th class="w60">종료일자</th>
	      </tr>
		  <tbody>
		     <c:forEach var="m" items="${list}">
		        <tr>
		           <td>${m.cafename}</td>
		           <td class="con w100">${m.title}</td>
		           <td>${m.content}</td>
		           <td><fmt:formatDate pattern="yyyy-MM-dd" value="${m.startdate}"/></td>   
		           <td><fmt:formatDate pattern="yyyy-MM-dd" value="${m.finishdate}"/></td>         
		        </tr>
		     </c:forEach>
		  </tbody>
        </table>
    </form>
</div>