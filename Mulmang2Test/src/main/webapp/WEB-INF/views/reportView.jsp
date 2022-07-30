<%@page import="com.smhrd.domain.User"%>
<%@page import="com.mysql.cj.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>제보 상세페이지</title>
<link rel="stylesheet" href="/web/resources/main/css/reportView.css?ver1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>

<!-- Animate.css -->
<link rel="stylesheet" href="/web/resources/main/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/web/resources/main/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/web/resources/main/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="/web/resources/main/css/superfish.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="/web/resources/main/css/magnific-popup.css">
<!-- Date Picker -->
<link rel="stylesheet" href="/web/resources/main/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="/web/resources/main/css/cs-select.css">
<link rel="stylesheet" href="/web/resources/main/css/cs-skin-border.css">

<link rel="stylesheet" href="/web/resources/main/css/style.css">


<script type="text/javascript">
	function goList() {
		location.href = '/web/reportList.do'
	}
</script>

</head>
<body>
<%@ include file="header.jsp"%>
	<%
		User user = (User) session.getAttribute("user");
	%>
	<div class="container">
		<div class="row">
			<h3 class="mb-3">제보 상세페이지</h3>
			<div class="row" id="dateID">
				<p><span id="reportD">${rptView.upload_date}</span>
				<span id="reportID">${rptView.user_id}</span></p>
				
			</div>


			<hr class="my-1">
		</div>
		<div class="row info">
			<div class="reportPhoto">
			<figure class="figure">
  				<img src=".${rptView.report_photo}" class="figure-img img-fluid rounded" alt= "">
  				<%-- <img src="../resources/saveImg/${rptView.report_photo}" class="figure-img img-fluid rounded" alt= ""> --%>
			</figure>
				
			</div>
			


		<div class="table_text" >
			<table class="table table-borderless" id="addTable">
				<tbody>
					<tr>
						<td scope="row">이름
						</th>
						<td colspan="2">${rptView.person_name}</td>
					</tr>
					<tr>
						<td scope="row">발견날짜
						</th>
						<td>${rptView.report_date}</td>
					</tr>
					<tr>
						<td scope="row">발견지역
						</th>
						<td>${rptView.report_region}</td>
					</tr>

					<tr>
						<td scope="row">인상착의
						</th>
						<td>${rptView.report_look}</td>
					</tr>

					<tr>
						<td scope="row">특징
						</th>
						<td>${rptView.report_feature}</td>
					</tr>

					<tr>
						<td scope="row">설명
						</th>
						<td rowspan="3">${rptView.report_desc}</td>

					</tr>
					<tr>

					</tr>


					</tr>
				</tbody>
			</table>
			</div>
		</div>



<div>
			<c:choose>
				<c:when test="${empty user}">

					<div class="mt-6 mlb msgListbt">

						<a id="noLogMsg" class="btn btn-secondary" data-bs-toggle="offcanvas"
							href="/web/loginCk.do" role="button"
							aria-controls="offcanvasExample"> 메세지 </a>
						<button onClick="goList()" class="btn btn-secondary List" type="submit">목록으로</button>

					</div>



				</c:when>

				<c:otherwise>


				
					<div class="mt-6 mlb msgListbt">

						<a id="onLogMsg" class="btn btn-secondary" data-bs-toggle="offcanvas"
							href="#offcanvasExample" role="button"
							aria-controls="offcanvasExample"> 메세지 </a>
						<button onClick="goList()" class="btn btn-secondary List" type="submit"
							>목록으로</button>

					</div>




					<div class="offcanvas offcanvas-end" tabindex="-1"
						id="offcanvasExample" aria-labelledby="offcanvasExampleLabel"
						>
						<div class="offcanvas-header">
							<h3 class="offcanvas-title" id="offcanvasExampleLabel">메세지
								작성</h3>
							<br> <br>
							<button type="button" class="btn-close text-reset"
								data-bs-dismiss="offcanvas" aria-label="Close"></button>
						</div>








						<div class="offcanvas-body" id="ssxx">
							<form id="msgForm" method="post">
								<div class="mb-3 row-g-3">
									<div class="col-sm-12">
										<h7 for="exampleFormControlTextarea1" class="form-label">받는이
										${rptView.user_id}</h7>
									</div>

									<div class=" col-sm-12 input-group has-validation">
										<input type="text" class="form-control" id="look"
											name="msg_title" placeholder="제목을 입력해주세요" required="">
										<br>
									</div>

									<textarea class="form-control" id="exampleFormControlTextarea1"
										name="msg_content" rows="10"></textarea>
								</div>
								
								<input id="sender" type="hidden" name="msg_sender_id" value="<%=user.getUser_id()%>"> 
								<input id="receiver" type="hidden" name="msg_receiver_id" value="${rptView.user_id}">
								<div class="text-center">
									<!-- Button trigger modal -->
									<button id="toastStart" class="btn btn-secondary"
										data-bs-toggle="modal" data-bs-target="#exampleModal">
										메세지전송</button>
								</div>
							</form>








							<div class="row">
								<h3>메세지 리스트</h3>


								<table class="table text-center" id="msgLL">
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">제목</th>
											<th scope="col">작성자</th>
											<th scope="col">날짜</th>

										</tr>
									</thead>
									<tbody id="msgList">


									</tbody>
								</table>


				

							</div>
							
							<div class="container">
						
						
								<div class="paging">
				
									<a href="#" class="bt">이전</a> 
									<a href="#" class="num on">1</a> 
									<a href="#" class="num">2</a> 
									<a href="#" class="num">3</a> 
									<a href="#" class="num">4</a> 
									<a href="#" class="num">5</a> 
									<a href="#" class="bt">다음</a>
						
								</div>
						
							</div>
						</div>
					</div>
				
			</c:otherwise>
		</c:choose>

</div>
		


		<br> <br>

		<div class="row">

			<div class="warning">
				주의<br><br>
			실종아동 등의 사진등 신상정보사항을 실종아동 등을 찾기 위한 목적 외에
				영리목적등의 정당한 사유없이 무단 복사, 게시, 배포하는 경우에는 <br> '실종아동 등의 보호 및 자원에 관한 법률'제 18조에
				의거하여, 2년 이하의 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.
			</div>
		</div>









<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


<!-- 메세지 전송성공 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script type="text/javascript">


	$(document).on('click','#noLogMsg',function(){
		alert('로그인 하세요')
		location.href = '/web/loginCk.do'
	})

</script>




<!-- 메세지 전송성공  -->

<script type="text/javascript" src="/web/resources/js/msgList.js"></script>
<script type="text/javascript" src="/web/resources/js/msgForm.js"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>