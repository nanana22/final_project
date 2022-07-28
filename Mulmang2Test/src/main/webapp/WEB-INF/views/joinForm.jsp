<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="./resources/css/joinForm.css?ver1">
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>회원가입</title>

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
</head>
<body>
	<%@ include file="header.jsp"%>
	<form action="userJoin.do" method="POST">
		<div id="JOINDIV">
		<div id="joinTt">회원가입</div>



		<div class="info_member">

			<div>
				<p class="notnull">아이디</p>
				<div class="boxSize">
					<input type="text" name="user_id" value="" placeholder="2~12자 이내"
						required>
					<button class="dbCk" type="submit" name="button">중복확인</button>
				</div>
				<p class="dbCkRs">중복체크</p>
			</div>

			<div>
				<p class="notnull">비밀번호</p>
				<input type="password" name="user_pw" value=""
					placeholder="비밀번호를 입력해주세요" required>
			</div>

			<div>
				<p class="notnull">비밀번호 확인</p>
				<input type="password" name="user_pwCk" value=""
					placeholder="비밀번호를 한번 더 입력해주세요" required>
			</div>

			<div>
				<p class="notnull">연락처</p>
				<div class="boxSize">
					<input type="tel" name="user_tel" value=""
						placeholder="전화번호를 입력해주세요" required>
				</div>

				<div>
					<p class="notnull">닉네임</p>
					<div class="boxSize">
						<input type="text" name="user_nick" value=""
							placeholder="2~12자 이내" required>
						<button class="dbCk" type="submit" name="button">중복확인</button>
					</div>
					<p class="dbCkRs">중복체크</p>
				</div>



				<br>
				<button id="joinJO" type="submit" class="btn btn-light">회원가입</button>
</div>

				
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	
</body>
</html>