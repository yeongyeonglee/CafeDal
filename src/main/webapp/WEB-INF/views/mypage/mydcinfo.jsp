<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet" href="${path}/resource/css/mypagestyle.css">
<style>
.listnum ul{  
    padding-left: 420px;
    margin-top: -20px;
    list-style:none;  
    float:left;  
    display:inline;  
}  
.listnum ul li{  
    float:left;  
}  
.listnum ul li a {  
    float:left;  
    padding:4px;  
    margin-right:3px;  
    width:15px;  
    color:#000;  
    font:bold 12px tahoma;  
    border:1px solid #eee;  
    text-align:center;  
    text-decoration:none;  
}  
.listnum ul li a:hover, .listnum ul li a:focus {  
    color:#fff;  
    border:1px solid  #7b4122;  
    background-color: #7b4122;  
} 
</style>
<br />
<br />


<main class="main">
<div id="div_activate" class="container">
<br />
<label id="name-dd">카페 할인 정보</label>
<br /><br /><br /><br />

	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
		<table class="table table-garo2">
	      <tr>
	         <th class="w60">카페</th>
	         <th class="tit w100">제목</th>
	         <!-- <th class="w60">내용</th> -->
	         <th class="w60">시작일자</th>
	         <th class="w60">종료일자</th>
	      </tr>
		  <tbody>
		     <c:forEach var="m" items="${list}">
		        <tr>
		           <td>${m.cafename}</td>
		           <td class="con w100"><a href="${path}/customer/dcinfo/notice/${m.dcinfonum}">${m.title}</a></td>
		           <%-- <td>${m.content}</td> --%>
		           <td><fmt:formatDate pattern="yyyy-MM-dd" value="${m.startdate}"/></td>   
		           <td><fmt:formatDate pattern="yyyy-MM-dd" value="${m.finishdate}"/></td>         
		        </tr>
		     </c:forEach>
		  </tbody>
        </table>
        <br /><br />
<!-- 리스트 : 이전  1 2 3 4 5 ... 다음 --> <c:set var="page" value="${param.p}" />
<c:set var="startNum" value="${page-((page-1)%5)}" /> <c:set
   var="lastNum"
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
      <div>
         <c:if test="${lastNum >= startNum+5 }">
            <a href="?p=${startNum+5}">다음</a>
         </c:if>
      </div>
</div>
    </form>
</div>

</main>