<%@page import="com.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제보게시판 글쓰기</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

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

<link rel="stylesheet" href="/web/resources/main/css/reportView.css?Ver3">

</head>
<body>

<%@ include file="header.jsp"%>

	<%User user = (User)session.getAttribute("user"); %>
	<div class="container">
		<div class="row" id="reportW">
			<h3 class="mb-3">제보 글쓰기</h3>


			<hr class="my-4">
		</div>

		<!-- 글쓰기 폼 -->
		<div class="col-md-7 col-lg-8">
			<form action="reportWrite.do" method="post" class="needs-validation" novalidate="" enctype="multipart/form-data">
				<div class="row g-4">
					<div id="reWN" class="col-sm-12">이름</div>

					<div class="col-sm-5">
						<input type="text" class="form-control" id="REPORT_NAME"
							placeholder="이름" name="person_name" value="" required="">

					</div>

					<div class="col-sm-7">
						<input type="checkbox" id="dont" name="person_name">모름
					</div>


					<div class="col-sm-12">
						<label for="FIND_GENDER" class="form-label">성별</label>
					</div>




					<div class="col-md-12">
						<div class="form-check form-check-inline" name="REPORT_GENDER">
							<input class="form-check-input" type="radio" name="gender"
								id="male" value="남"> <label class="form-check-label"
								for="inlineRadio1">남</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="female" value="여"> <label class="form-check-label"
								for="inlineRadio2">여</label>
						</div>

					</div>




					<div class="col-sm-6">
						<label for="firstName" class="form-label">발견일자</label>
					</div>
					
					
					<div class="col-sm-6">
						<label for="firstName" class="form-label">발견지역</label>
					</div>
					
					
					<div class="col-sm-6">
						<input type="date" name="report_date">
					</div>

					<!-- <input type="text" class="form-control" id="date_dis" placeholder="실종일자" value="" required="">
                    </div> -->




					
					<div class="col-sm-6">
						<select class="form-select" aria-label="Default select example"
							name="report_region">

							<option selected value="all">발견 지역</option>
							<option value="서울특별시">서울특별시</option>
							<option value="경기도">경기도</option>
							<option value="강원도">강원도</option>
							<option value="충청북도">충청북도</option>
							<option value="충청남도">충청남도</option>
							<option value="경상남도">경상남도</option>
							<option value="경상북도">경상북도</option>
							<option value="전라남도">전라남도</option>
							<option value="전라북도">전라북도</option>
							<option value="대전광역시">대전광역시</option>
							<option value="대구광역시">대구광역시</option>
							<option value="부산광역시">부산광역시</option>
							<option value="광주광역시">광주광역시</option>
							<option value="인천광역시">인천광역시</option>



						</select>
					</div>



					<div class="col-12">
						<label for="character" class="form-label">특징</label>
						<div class="input-group has-validation">
							<input type="text" class="form-control" id="character"
								name="report_feature" placeholder="특징" value="" required="">
						</div>
					</div>

					<div class="col-12">
						<label for="look" class="form-label">인상착의</label>
						<div class="input-group has-validation">
							<input type="text" class="form-control" id="look"
								name="report_look" placeholder="인상착의" required="">
						</div>
					</div>


					<div class="col-12">
						<label for="add" class="form-label">부가설명</label>
						<div class="input-group has-validation">
							<textarea class="form-control" id="add" name="report_desc"
								rows="6"></textarea>
						</div>
					</div>
				</div>
				<br> <input type="file" id="input-file" name="reportPhoto" multiple>

				<hr class="my-4">

				<input type="hidden" name="user_id" value="<%=user.getUser_id()%>">
				<button type="submit" class="btn btn-secondary"
					style="width: 150px;">등록</button>
			</form>
		</div>
	</div>

	</div>

	</div>
	<div></div>
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.12.4.min.js"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script>
        $("#dont").click(function(){
            $("#REPORT_NAME").prop("value", "모름")
        });
     




    </script>

</body>
</html>