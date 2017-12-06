<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <meta name="description" content="">
   <meta name="author" content="">

   <!-- Bootstrap core CSS -->
<link href="${path}/resource/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="${path}/resource/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="${path}/resource/css/magnific-popup.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="${path}/resource/css/freelancer.min.css" rel="stylesheet">

<style>
.listnum ul{  
    padding-left: 390px;
    margin-top: -80px;
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

<body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">MYPAGE</a>
        <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#portfolio">정보 수정</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#about">카페 할인 정보</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="${path}/mypage/mypd">회원 탈퇴</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead bg-primary text-white text-center">
        <a href="${path}/main/calendar"><img class="img-fluid mb-5 d-block mx-auto" src="${path}/resource/images/mmy-coffee.png" style="height: 180px; margin-left: 420px;" alt=""></a>
        <h1 class="text-uppercase mb-0">My Page</h1><br />
        <!-- <hr class="star-light"> -->
	        <form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
			enctype="multipart/form-data">
			<c:forEach var="m" items="${list}">
		        <label id="name-d">${m.name}</label>
			    <label>님의 회원정보입니다.</label>
			</c:forEach>
		    </form>
      <div class="list-container">
		    <form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<c:forEach var="m" items="${list}">
			<table class="table-garo2">			
				<tr id="tr_id">
					<th>아이디</th>
					<td colspan="4">${m.id}</td>
				</tr>
				<tr id="tr_pw">
					<th>비밀번호</th>
					<td colspan="4">${m.pwd}</td>
				</tr>
				<tr id="tr_name">
					<th>이름</th>
					<td colspan="4">${m.name}</td>
				</tr>
				<tr id="tr_mail">
					<th>이메일</th>
					<td colspan="4">${m.mail}</td>
				</tr>
				<tr id="tr_birth">
					<th>생일</th>
					<td colspan="4">${m.birth}</td>
				</tr>
				<tr id="tr_cafe">
					<th>카페</th>
					<c:forEach var="n" items="${listcafe}">
						<td colspan="1">${n.cafename}</td>
					</c:forEach>
				<tr>
				<%-- <tr id="tr_cafe">
					<th colspan="2">카페</th>
					<tbody>
					<tr>
					<c:forEach var="n" items="${listcafe}">
						<td>${n.cafename}</td>
					</c:forEach>
					</tr> --%>
					</tbody>
				<tr>
			</table>			
		</c:forEach>
	</form>
      </div>
    </header>

    <!-- Portfolio Grid Section -->
    <section class="portfolio" id="portfolio">
      <h2 class="text-center text-uppercase text-white">정보 수정</h2>
      <div class="list-container">
      <c:forEach var="m" items="${list}">
    <form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<table id="e-table" class="table table-garo2">
			<tr id="tr_id">
				<th>아이디</th>
				<td colspan="6">${m.id}</td>
			</tr>

			<tr id="tr_pw">
				<th>비밀번호</th>
				<td colspan="6"><input name="pwd" id="pwd" type="text"
					placeholder="비밀번호" /></td>
			</tr>

			<tr id="tr_name">
				<th>이름</th>
				<td colspan="6"><input name="name" id="name" type="text" placeholder="이름" />
				</td>
			</tr>

			<tr id="tr_mail">
				<th>이메일</th>
				<td colspan="6"><input name="mail" id="mail" type="text" placeholder="이메일" />
				</td>
			</tr>

			<tr id="tr_birth">
				<th>생일</th>
				<td colspan="6">${m.birth}</td>
			</tr>

			<tr>
				<th>카페</th>
				<td colspan="6">
					<form name="check" class="cm-check" id="chbox">
						<div class="cm-check">
							<input type="checkbox" id="cafes1" name="cafes" value="1" /> 
								<label class="cm-check2" for="cafes1">공차</label> 
							<input type="checkbox" id="cafes1" name="cafes" value="2" /> 
								<label class="cm-check2" for="cafes1">스타벅스</label>
							<input type="checkbox" id="cafes1" name="cafes" value="3" /> 
								<label class="cm-check2" for="cafes1">이디야</label> 
								<!-- <input type="checkbox" id="cafes"
								name="cafes" value="4" /> <label class="cm-check2">커피빈</label> <input
								type="checkbox" id="cafes" name="cafes" value="5" /> <label
								class="cm-check2">투썸플레이스</label> --> 
							<input type="checkbox" id="cafes1" name="cafes" value="6" /> 
								<label class="cm-check2" for="cafes1">할리스커피</label>	
						</div>
					</form>
				</td>
			</tr>
		</table>
		<div class="button">
		<input type="hidden" name="id" value="${m.id}" />
		<input class="eff" type="submit" value="저장" />
		<!-- <input type="button" onclick="location.href='edit'" class="eff1" value="취소" /> -->
			<!-- <a class="eff-2" href="../mypage/edit">취소</a> -->
		</div>
	</form>
	</c:forEach>
	</div>  
    
       <!--  <div class="row">
          <div class="col-md-6 col-lg-4">
            <a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1">
              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/cabin.png" alt="">
            </a>
          </div>
          <div class="col-md-6 col-lg-4">
            <a class="portfolio-item d-block mx-auto" href="#portfolio-modal-2">
              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/cake.png" alt="">
            </a>
          </div>
          <div class="col-md-6 col-lg-4">
            <a class="portfolio-item d-block mx-auto" href="#portfolio-modal-3">
              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/circus.png" alt="">
            </a>
          </div>
          <div class="col-md-6 col-lg-4">
            <a class="portfolio-item d-block mx-auto" href="#portfolio-modal-4">
              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/game.png" alt="">
            </a>
          </div>
          <div class="col-md-6 col-lg-4">
            <a class="portfolio-item d-block mx-auto" href="#portfolio-modal-5">
              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/safe.png" alt="">
            </a>
          </div>
          <div class="col-md-6 col-lg-4">
            <a class="portfolio-item d-block mx-auto" href="#portfolio-modal-6">
              <div class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                <div class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                  <i class="fa fa-search-plus fa-3x"></i>
                </div>
              </div>
              <img class="img-fluid" src="img/portfolio/submarine.png" alt="">
            </a>
          </div>
        </div> -->
    </section>

    <!-- About Section -->
    <section class="bg-primary text-white mb-0" id="about">
       	  <h2 class="text-center text-uppercase text-white">카페 할인 정보</h2>
      <div class="list-container">
      <form action="?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
		<table id="table1" class="table-garo2">
	      <tr>
	         <th class="w60">카페</th>
	         <th class="tit w100">제목</th>
	         <!-- <th class="w60">내용</th> -->
	         <th class="w60">시작일자</th>
	         <th class="w60">종료일자</th>
	      </tr>
		  <tbody>
		     <c:forEach var="m" items="${list1}">
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
    </section>

    <%-- <section id="contact">
              <h2 class="text-center text-uppercase text-white">회원 탈퇴</h2>
      <div class="list-container">
        <!-- <hr class="star-light mb-5"> -->
       	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<c:forEach var="m" items="${list}">
			<label id="name-d">${m.name}</label>
			<label>님 정말 탈퇴하시겠습니까?</label>
		</c:forEach>
	</form>
	<br /><br /><br />
	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post"
		enctype="multipart/form-data">
		<div class="button">
		<input type="hidden" name="id" value="${m.id}" />
		<input class="eff" onclick="location.href='delete?id=${m.id}'" type="submit" value="탈퇴" />
			<!-- <a class="eff-2" href="../mypage/edit">취소</a> -->
		</div>
	</form>
      </div>
    </section> --%>

    <!-- Footer -->
   <!--  <footer class="footer text-center">
   <ul>

		<li>상호 CafeDal | 서울특별시 서대문구 대흥동 2층 C호 | 대표이사 이연경</li>
		<li>사업자 등록번호 000-00-000000 | 통신판매신고번호 2017-서울ㅇㅇ-0000 | </li>
		<br/>
		<li>제품 문의 : 010 - 123 - 4568 | FAX 02 - 1111 - 1111</li>
		<li>관리자 이메일 admin@cafedal.com | 이메일 주소 무단 수집 거부 | </li>
		<br/>
		<li>개인정보 보호 책임자 	CafeDal | 호스팅 서비스 제공자 CafeDal</li>
		<li>Copyright ⓒ 2017 CafeDal. All Rights Reserved.</li>

	</ul>
      <div class="container">
        <div class="row">
          <div class="col-md-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Location</h4>
            <p class="lead mb-0">2215 John Daniel Drive
              <br>Clark, MO 65243</p>
          </div>
          <div class="col-md-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Around the Web</h4>
            <ul class="list-inline mb-0">
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                  <i class="fa fa-fw fa-facebook"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                  <i class="fa fa-fw fa-google-plus"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                  <i class="fa fa-fw fa-twitter"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                  <i class="fa fa-fw fa-linkedin"></i>
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="#">
                  <i class="fa fa-fw fa-dribbble"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="col-md-4">
            <h4 class="text-uppercase mb-4">About Freelancer</h4>
            <p class="lead mb-0">Freelance is a free to use, open source Bootstrap theme created by
              <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
          </div>
        </div>
      </div>
    </footer> -->

    <div class="copyright py-4 text-center text-white">
      <div class="container">
		<small>상호 CafeDal | 서울특별시 서대문구 대흥동 2층 C호 | 대표이사 이연경</small><br />
		<small>사업자 등록번호 000-00-000000 | 통신판매신고번호 2017-서울ㅇㅇ-0000 | </small>
		<br /><br />
		<small>제품 문의 : 010 - 123 - 4568 | FAX 02 - 1111 - 1111</small><br />
		<small>관리자 이메일 admin@cafedal.com | 이메일 주소 무단 수집 거부 | </small>
		<br /><br />
		<small>개인정보 보호 책임자 	CafeDal | 호스팅 서비스 제공자 CafeDal</small><br />
		<small>Copyright ⓒ 2017 CafeDal. All Rights Reserved.</small>
       <!--  <small>Copyright &copy; Your Website 2017</small> -->
      </div>
    </div>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-to-top d-lg-none position-fixed ">
      <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
        <i class="fa fa-chevron-up"></i>
      </a>
    </div>

    <!-- Portfolio Modals -->

    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
      <div class="portfolio-modal-dialog bg-white">
        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
          <i class="fa fa-3x fa-times"></i>
        </a>
        <div class="container text-center">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
              <hr class="star-dark mb-5">
              <img class="img-fluid mb-5" src="img/portfolio/cabin.png" alt="">
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
              <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                <i class="fa fa-close"></i>
                Close Project</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Portfolio Modal 2 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-2">
      <div class="portfolio-modal-dialog bg-white">
        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
          <i class="fa fa-3x fa-times"></i>
        </a>
        <div class="container text-center">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
              <hr class="star-dark mb-5">
              <img class="img-fluid mb-5" src="img/portfolio/cake.png" alt="">
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
              <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                <i class="fa fa-close"></i>
                Close Project</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Portfolio Modal 3 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-3">
      <div class="portfolio-modal-dialog bg-white">
        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
          <i class="fa fa-3x fa-times"></i>
        </a>
        <div class="container text-center">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
              <hr class="star-dark mb-5">
              <img class="img-fluid mb-5" src="img/portfolio/circus.png" alt="">
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
              <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                <i class="fa fa-close"></i>
                Close Project</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Portfolio Modal 4 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-4">
      <div class="portfolio-modal-dialog bg-white">
        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
          <i class="fa fa-3x fa-times"></i>
        </a>
        <div class="container text-center">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
              <hr class="star-dark mb-5">
              <img class="img-fluid mb-5" src="img/portfolio/game.png" alt="">
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
              <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                <i class="fa fa-close"></i>
                Close Project</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Portfolio Modal 5 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-5">
      <div class="portfolio-modal-dialog bg-white">
        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
          <i class="fa fa-3x fa-times"></i>
        </a>
        <div class="container text-center">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
              <hr class="star-dark mb-5">
              <img class="img-fluid mb-5" src="img/portfolio/safe.png" alt="">
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
              <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                <i class="fa fa-close"></i>
                Close Project</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Portfolio Modal 6 -->
    <div class="portfolio-modal mfp-hide" id="portfolio-modal-6">
      <div class="portfolio-modal-dialog bg-white">
        <a class="close-button d-none d-md-block portfolio-modal-dismiss" href="#">
          <i class="fa fa-3x fa-times"></i>
        </a>
        <div class="container text-center">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
              <hr class="star-dark mb-5">
              <img class="img-fluid mb-5" src="img/portfolio/submarine.png" alt="">
              <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias magnam, recusandae quos quis inventore quisquam velit asperiores, vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
              <a class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss" href="#">
                <i class="fa fa-close"></i>
                Close Project</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="${path}/resource/js/jquery.min.js"></script>
    <script src="${path}/resource/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${path}/resource/js/jquery.easing.min.js"></script>
    <script src="${path}/resource/js/jquery.magnific-popup.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="${path}/resource/js/jqBootstrapValidation.js"></script>
    <script src="${path}/resource/js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${path}/resource/js/freelancer.min.js"></script>

  </body>
