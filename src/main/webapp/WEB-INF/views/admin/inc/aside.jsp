<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link type="text/css" rel="stylesheet" href="${path}/resource/css/aside2.css">
<aside class >

<input type="checkbox" id="menu_state" checked>
<nav>
	<label for="menu_state"><i class="fa"></i></label>
	<ul>
		<li data-content="5" class="active unread">
			<a href="javascript:void(0)">
				<i class="fa fa-inbox"></i>
				<span>Inbox</span>
			</a>
		</li>
		<li>
			<a href="javascript:void(0)">
				<i class="fa fa-heart"></i>
				<span>Favorites</span>
			</a>
		</li>
		<li>
			<a href="javascript:void(0)">
				<i class="fa fa-paper-plane"></i>
				<span>Sent</span>
			</a>
		</li>
		<li>
			<a href="javascript:void(0)">
				<i class="fa fa-pencil"></i>
				<span>Draft</span>
			</a>
		</li>
		<li data-content="2" class="unread">
			<a href="javascript:void(0)">
				<i class="fa fa-trash"></i>
				<span>Trash</span>
			</a>
		</li>
	</ul>
</nav>
</aside>


