<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />

<link type="text/css" rel="stylesheet"
   href="${path}/resource/css/adminliststyle.css">
  
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
 
    $(document).ready(function(){
        $("#massiveSelectCheckBox").click(function() {
            
            var isChecked = $(this).prop("checked");
            $(".deleteArticleId").prop("checked", isChecked);
            
        });
        
        $("#massiveDeleteBtn").click(function() {
            
            var isChecked = false;
            
            /* 각각의 클래스를 다 보면서 선택이 됬는지 안됬는지 체크한다. */
            $(".deleteArticleId").each(function(index, data){
                if( data.checked ){
               

                    isChecked = data.checked;
                }
            });
            
            if(!isChecked){
                alert("삭제할 대상을 선택하세요.");
                return;
            }
            
            /* 사용자에게 한번 더 컨펌 */
            if( confirm("정말 삭제하시겠습니까?")){
                alert("삭제되었습니다");
                
                var form = $("#massiveDeleteForm");
                form.attr("method", "post");
                form.attr("action", "<c:url value='delete?${_csrf.parameterName}=${_csrf.token}' />");
                form.submit();
            }
            
            /* form.attr("action", "<c:url value='list' />"); */
        });
    });
    
   /*  form.attr("action", "<c:url value='manage/delete?${_csrf.parameterName}=${_csrf.token}' />"); */
 
</script>
   
<style>
.listnum ul{  
      padding-left: 900px;
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
<main class="main">

<div style="margin-top:30px; margin-bottom: 40px;">

   <label class="list-tit" style="padding-right:30px;">댓글 관리</label>

   <h3 style="margin-left:500px;">할인 정보 댓글</h3>

</div>


<!--    <div class="ph-heart-nav nav">
      <a href="notice">All</a>
      <a href="notice?f=cafecode&q=1">GongCha</a>
      <a href="notice?f=cafecode&q=2">Starbucks</a>
      <a href="notice?f=cafecode&q=3">Ediya</a>
      <a href="notice?f=cafecode&q=4">CoffeeBean</a>
      <a href="notice?f=cafecode&q=5">Twosome</a>
      <a href="notice?f=cafecode&q=6">Hollys</a>
      <div class="effect"></div>
   </div>   
   
 -->

<%--    <form id="massiveDeleteForm">
    
        <c:forEach items="${list}" var="n">
            <tr>
                <td>
                    <input type="checkbox" class="deleteArticleId" 
                            name="deleteArticleId" value="${n.code }" />
                </td> --%>

<h3 class="hidden">회원정보 목록</h3>
<h2>할인 정보 댓글</h2>
      <form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<table class="table-garo-admin" style="margin-top:-70px;">
		   		<thead>
			      <tr>
			         <th class="w60" style="width:30px;">날짜</th>
			         <th class="tit w100">댓글</th>
			      </tr>
		   		</thead>
		   <tbody>
		    <!-- 공지 ------------------------------------------------ -->
		    
			         <c:forEach var="a" items="${n}">
				         <tr>           
					            <td>${a.date}</td>
					            <td class="con w100">${a.content}</td>
				      	 </tr>
			   		 </c:forEach>
		      
		     <!------------------------------------------------------- -->
		     
		     
		   </tbody>
		</table>
		<br />
		<br />
		   <h3 style="margin-left:500px;">이용 정보 댓글</h3>
		<table class="table-garo-admin">
		   		<thead>
			      <tr>
			         <th class="w60" style="width:30px;">날짜</th>
			         <th class="tit w100">댓글</th>
			      </tr>
		   		</thead>
		   <tbody>
		    <!-- 공지 ------------------------------------------------ -->
		    
			         <c:forEach var="b" items="${m}">
				         <tr>           
					            <td>${b.date}</td>
					            <td class="con w100">${b.content}</td>
				      	 </tr>
			   		 </c:forEach>
		      
		     <!------------------------------------------------------- -->
		     
		     
		   </tbody>
		</table>
		<div class="admin_editbutton">
			<input type="hidden" name="id" value="${list.id}" />
			<input type="button" onclick="location.href='../list'" value="목록"
			style="    width: 90px; height:30px;
            margin-left: 100px;
            color: white;
            background: black;
            font-size: 13px;"	 />
				<!-- <a class="eff-2" href="../mypage/edit">취소</a> -->
		</div>
	</form>
</main>