<%@page import="com.smhrd.domain.Face"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<!-- 우리가 IMG를 HTML에 출력해주려면 무슨태그 썼어요? jstl? 맞다 여기 jstl 알지 일단 이 이미지 태그를 써야할 거에요 
	그럼 두 속성중에 어떤거에다가 경로를 써줘야해? src 그치
	근데 그럼 여기에 우리가 출력하고자 하는 파일의 경로를 적어줘야하는데 어떻게 적어주면될까 잘모르겠ㅇ요
	 -->
	<img alt="" src="resources/saveImg/${face.real_face }">

</body>
</html>