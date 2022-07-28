<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>회원가입성공테스트</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="./resources/css/joinForm.css?ver3">

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
<div id="JOINS">
<img style="margin-left:155px;" src="/web/resources/main/images/success.png">
	<h1 id="JS">회원가입 성공</h1>
<div id="jsB">
	<a href="loginCk.do">로그인</a>
	<a href="/web/">메인으로</a>
</div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>