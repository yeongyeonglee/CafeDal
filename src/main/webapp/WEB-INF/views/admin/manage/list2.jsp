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

   <label class="list-tit" style="padding-right:30px;">회원 관리 수정</label>
     <a href="../useinfo/notice">  
        <style="width: 50px; height: 40px; padding-right: 10px; margin-bottom: -10px" alt="이용"/></a>
     <a href="../dcinfo/notice">  
        <style="width: 50px; height: 40px; padding-right: 10px; margin-bottom: -10px" alt="할인"/></a>

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
      <form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<table class="table table-garo2">
			<tr id="tr_id">
				<th>아이디</th>
				<td colspan="6">${n.id}</td>
			</tr>

			<tr id="tr_pw">
				<th>비밀번호</th>
				<td colspan="6"><input name="pwd" id="pwd" type="text" value='${n.pwd}'
					placeholder="비밀번호" /></td>
			</tr>

			<tr id="tr_name">
				<th>이름</th>
				<td colspan="6"><input name="name" id="name" type="text" value='${n.name}' placeholder="이름" />
				</td>
			</tr>

			<tr id="tr_mail">
				<th>이메일</th>
				<td colspan="6"><input name="mail" id="mail" type="text" value='${n.mail}' placeholder="이메일" />
				</td>
			</tr>

			<tr id="tr_birth">
				<th>생일</th>
				<td colspan="6">${n.birth}</td>
			</tr>

			<tr>
				<th><label>카페</label></th>
				<td colspan="6">
					<form name="check">
						<div class="cm-check">
							<input type="checkbox" id="cafes" name="cafes" value="1" /> 
								<label class="cm-check2">공차</label> 
							<input type="checkbox" id="cafes" name="cafes" value="2" /> 
								<label class="cm-check2">스타벅스</label>
							<input type="checkbox" id="cafes" name="cafes" value="3" /> <label
								class="cm-check2">이디야</label>
							<input type="checkbox" id="cafes" name="cafes" value="6" />
								<label class="cm-check2">할리스커피</label>
						</div>
					</form>
				</td>
			</tr>
		</table>
		<%-- <input type="hidden" name="id" value="${list.id}" />
		<input class="eff-2" type="submit" value="저장"></input>
		<div class="button">
			<a class="eff-1" href="../mypage/edit">취소</a>
		</div> --%>
		<div class="admin_editbutton">
			<input type="hidden" name="id" value="${list.id}" />
			<input class="eff" type="submit" value="저장" />
			<input type="button" onclick="location.href='../list'" class="eff1" value="취소" />
				<!-- <a class="eff-2" href="../mypage/edit">취소</a> -->
		</div>
	</form>
</main>