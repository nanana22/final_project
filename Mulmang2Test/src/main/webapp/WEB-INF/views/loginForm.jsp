<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link rel="stylesheet" href="./resources/css/loginForm.css?Ver1">
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
<link rel="stylesheet"
	href="/web/resources/main/css/bootstrap-datepicker.min.css">
<!-- CS Select -->
<link rel="stylesheet" href="/web/resources/main/css/cs-select.css">
<link rel="stylesheet" href="/web/resources/main/css/cs-skin-border.css">

<link rel="stylesheet" href="/web/resources/main/css/style.css">
</head>

<body>
	<%@ include file="header.jsp"%>
	<form action="loginCk.do" method="POST">
<div id=LogForm>
		<h1 id="login">로그인</h1>

		<div class="info_login">

			<div>
				<p class="notnull">아이디</p>
				<div class="boxSize">
					<input type="text" name="user_id" value="" required>

				</div>
			</div>

			<div>
				<p class="notnull">비밀번호</p>
				<input type="password" name="user_pw" value="" required>
			</div>
			<br>


			<div></div>
			<button type="submit" class="btn btn-light" id="loglog">로그인</button>
			<a href="/web/join.do" class="btn btn-light" id="joinjoin">회원가입</a>

			<!-- 사용자가 패스워드등을 잘못 입력하는 경우에는 자동으로 다시 로그인 페이지로 이동하게 된다. -->
			
			</div>
</div>
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>