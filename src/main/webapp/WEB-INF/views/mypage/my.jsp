<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
</head> -->
    <link href="${path}/resource/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${path}/resource/css/simple-sidebar.css" rel="stylesheet">
<main>
    <!-- Bootstrap core CSS -->
<!-- </head> -->
<!-- <body> -->
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="edit">내 정보</a>
                </li>
                <li>
                    <a href="edit2">정보 수정</a>
                </li>
                <li>
                    <a href="mydcinfo">카페 할인 정보</a>
                </li>
                <li>
                    <a href="delete">회원 탈퇴</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <h1>마이페이지</h1>
                <p>마이페이지를 보고 싶다면 버튼을 눌러주세요 </p>
                <a href="#menu-toggle" class="btn btn-secondary" id="menu-toggle">MyPage Menu</a>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
    <script src="${path}/resource/js/jquery.min.js"></script>
    <script src="${path}/resource/js/bootstrap.bundle.min.js"></script>

    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    </script>
</main>
<!-- </html> -->
