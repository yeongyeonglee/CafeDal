<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet"
	href="${path}/resource/css/headerstyle.css">

<header id="admin-header">
	<div class="content-container">

		<div id="logo2">
			<ul>
				<li><img id="logologo" src="${path}/resource/images/headerstyle.PNG"  /></li>
				<li id="logo3"><a href="${path}/main/calendar"> <img src="${path}/resource/images/logo2.png" alt="CafeDal" /></a></li>
			</ul>
		</div>

		<%--   <div id="member-menu">
         <ul>

            <security:authorize access="hasRole('ROLE_USER')">
               <li>
                  <form action="${path}/logout" method="post" >
                     <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
                     <input type="submit" value="LOGOUT"  id="logout"/>
                  </form>
               </li>
            </security:authorize>
         </ul>
      </div> --%>
	</div>
</header>
