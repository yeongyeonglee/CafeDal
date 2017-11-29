<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<head>
<meta charset="UTF-8">
<title>CafeDal</title>
<link type="text/css" rel="stylesheet"  	href="${path}/resource/css/joinHello.css">
</head>

<div id="div_activate" class="container2">
	<div class="logo">
				<img src="${path}/resource/images/logo2.png" alt="회원가입 로고" />
	</div>
	
	
	<div class="Hi"> 회원가입을 축하합니다! </div>
	<div class="Hi"> CafeDal과 함께 카페 스케줄을 받아 보세요 </div>
	
	<div> 
         <input  class="btn join-btn"  onclick="location.href='login'" value="확인"  /> 
   </div> 
         
	

</div>


<script>

$(document).ready(function() {

var cfmId = "";		// 중복 체크 완료된 아이디 저장


$('#id').keyup(function() {

	var inputId = $('#id').val();

		$.ajax({

			url: "sameCheckId?${_csrf.parameterName}=${_csrf.token}",
			type: "POST",
			data: { "id" : inputId },
			success: function(result) {

				if ( result.message == "true" )	{
					$('#checkId').html('<strong>이미 존재하는 아이디입니다!</strong>');
					$('#checkId').css("color","red");
					cfmId = '';
				} else {
					$('#checkId').html('<strong>사용 가능한 아이디입니다.</strong>');
					$('#checkId').css("color","green");
					cfmId = inputId;
				}

				$('#id_cfm').text("중복 체크").attr('disabled', false);
			},
			error: function(result) {
				alert("잠시 후 다시 이용해주세요.");
			}
});

});


		// 비밀번호 확인 검사
		$('#pwd').blur(checkPwCfm);
		$('#pwdchk').keyup(checkPwCfm);

		function checkPwCfm() {
			var inputPw = $('#pwd').val();
			var inputPwCfm = $('#pwdchk').val();

			if ( inputPw != inputPwCfm ) {
				$('#guidepwdchk').text("비밀번호가 일치하지 않습니다.");
				$('#guidepwdchk').css("color","red");
				$('#guidepwdchk').show();

				completePwCfm = false;
			} else {
				$('#guidepwdchk').hide();
				completePwCfm = true;
			}
		}



	});


</script>




