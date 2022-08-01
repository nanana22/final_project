<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전단지 1단계</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="/web/resources/css/helpPrint_1.css?ver1">
<style>
.print_btn {
	display: block;
	position: relative;
	top: 50px;
	left: 390px;
}
</style>
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
</head>
<body>

<%@ include file="header.jsp" %>
	<div class="container" id="PRINTINFO">
		<div class="row">
			<h3 class="mb-3">전단지 제작하기</h3>

			<h7 class="'mb-3">1.기본 정보 입력 > 2.사진 넣기</h7>
			<hr class="my-4">
		</div>

		<!-- 글쓰기 폼 -->
		<div class="col-md-7 col-lg-8 print1" id="PRINTINFO">
			<form action="helpPrintSecond.do" method="post" class="needs-validation" novalidate="">
				<div class="row g-3">
					<div class="col-sm-1">이름</div>
					<div class="col-sm-1"></div>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="FIND_NAME"
							placeholder="이름" name="name" value="" required="">
					</div>


					<div class="col-sm-1"></div>

					<div class="col-sm-1">
						<label for="gender" class="form-label">성별</label>
					</div>



					<div class="col-sm-4">
						<div class="form-check form-check-inline" name="FIND_GENDER">
							<input class="form-check-input" type="radio"
								name="gender" id="male" value="남"> <label
								class="form-check-label" for="inlineRadio1">남</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="gender" id="female" value="여"> <label
								class="form-check-label" for="inlineRadio2">여</label>
						</div>

					</div>








					<div class="col-sm-2">
						<label for="firstName" class="form-label">실종일자</label>
					</div>
					<div class="col-sm-4">
						<input type="date" class="form-control" name="date">
					</div>




					<div class="col-sm-2">
						<label for="firstName" class="form-label">실종지역</label>
					</div>

					<div class="col-sm-4">
						<input type="text" class="form-control" id="regionDt"
							placeholder="___도  __ 시 __ 동" name="name" value="" required="">
				
					</div>






					<div class="col-sm-2">신체 특징</div>
					<div class="col-sm-10">
						<div class="input-group has-validation">
							<input type="text" class="form-control" id="PRINT_FEATURE"
								name="feature" placeholder="특징" required="">
						</div>
					</div>



					<div class="col-sm-2">인상착의</div>
					<div class="col-sm-10">
						<div class="input-group has-validation">
							<input type="text" class="form-control" id="PRINT_LOOK"
								name="look" placeholder="인상착의" required="">
						</div>
					</div>




					<div class="col-sm-2">전화번호</div>
					<div class="col-sm-10">
						<div class="input-group has-validation">
							<input type="tel" class="form-control" id="PRINT_TEL"
								name="tel" placeholder="전화번호" required="">
						</div>
					</div>

				</div>
				<div class="col print_btn">
				
					<button type="submit" id="printB" class="btn btn-secondary" style="width: 150px;">다음</button>
				</div>
			</form>
		</div>
		
		</div>






	</div>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.12.4.min.js"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
<%@ include file="footer.jsp" %>
</body>
</html>