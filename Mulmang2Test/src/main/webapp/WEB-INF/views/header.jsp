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
<title>header</title>
</head>
<body>

	<div id="fh5co-wrapper">
		<div id="fh5co-page">

			<header id="fh5co-header-section" class="sticky-banner">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="/web/">물망초</a>
						</h1>
						<!-- <i class="icon-airplane"></i>  아이콘 코드 -->
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active"><a href="/web">Home</a></li>



								<li><a href="/web/findList.do">실종아동찾기</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/web/findList.do">실종아동 목록</a></li>
										<li><a href="/web/findInsert.do">실종아동 등록</a></li>
									</ul>
								</li>
								<li><a href="/web/reportList.do">제보하기</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/web/reportList.do">제보 목록</a></li>
										<li><a href="/web/reportForm.do">제보 등록</a></li>
										

									</ul>
								
								</li>
								<li><a href="#" class="fh5co-sub-ddown">도움마당</a>
									<ul class="fh5co-sub-menu">
										<li><a href="/web/helpFilter.do">사진 필터</a></li>
										<li><a href="/web/helpPrintFirst.do">전단지 제작</a></li>
										<li><a href="/web/helpHelp.do">대책법</a></li>

									</ul>
								</li>
									
								
									
								<c:choose>
								
									<c:when test="${empty user }">
										<li class="log"><a href="/web/userlog.do">로그인</a></li>
										<li class="log"><a href="/web/join.do">회원가입</a></li>
									</c:when>
								
									<c:otherwise>
									<% User user = (User)session.getAttribute("user"); %>
										<li class="log"><a href="#">${user.user_id}님</a></li>
										<li class="log"><a href="/web/logOut.do">로그아웃</a></li>
									</c:otherwise>
								
								</c:choose>
								
							</ul>
						</nav>
					</div>
				</div>
			</header>

			<!-- end:header-top -->



			<!-- END fh5co-page -->

		</div>
</body>
</html>