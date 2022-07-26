<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.BoardReport"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제보게시판 리스트</title>
<link rel="stylesheet" href="./resources/css/report.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


</head>
<body>
<%@ include file="header.jsp" %>
		<div class="container">
		<!--action="reportSearch.do"  -->
			<form id="searchForm" action="reportSearch.do" name="f" method="post">

				<h4>실종아동 검색</h4>
				<hr>

				<table class="table table-borderless">
					<thead>
						<tr>
							<th colspan="2" scope="col"><input type="text" name="person_name"
								class="form-control" id="Name" placeholder="이름" value=""
								></th>
							<td scope="col">성별
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio"
										name="gender" id="male" value="남"> <label
										class="form-check-label" for="inlineRadio1">남</label>
								</div>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio"
										name="gender" id="female" value="여">
									<label class="form-check-label" for="inlineRadio2">여</label>
								</div>
							</td>
							
						</tr>
					</thead>
					<tbody>
						<tr>


							<!-- <td> <label for="firstName" class="form-label">실종일자</label> <select class="form-select"  aria-label="Default select example name="yy" id="year" style="width: 100px;"></select>
                                        <select class="form-select text-center" aria-label="Default select example name="mm" id="month" style="width: 100px;"></select>
                                        <select class="form-select text-center" aria-label="Default select example name="dd" id="day" style="width: 100px;"></select></td> -->
						<td><select name="report_region" class="form-select"
							aria-label="Default select example">
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
						</select></td>

						</tr>


						<tr>

							<td colspan="3"><input type="text" class="form-control" name="report_feature"
								id="character" placeholder="특징" value="" ></td>

						</tr>
						<tr>

							<td colspan="3"><input type="text" class="form-control" name="report_desc"
								id="" placeholder="설명" value="" ></td>
							<td>
								<div class="text-center mt-6">
									 <!--<button id="subBtn" class="btn btn-secondary">검색하기</button> -->
									<button type="submit" id="subBtn" class="btn btn-secondary">검색하기</button>
								</div>
							</td>
						</tr>


					</tbody>
				</table>


			</form>


		</div>


		<div class="container">
			<h3>등록 리스트</h3>
			<hr>
			<br>
			<div id="child_list">
			<!-- table 내용 -->
			</div>
			
			<div id="search_list">
			<!-- 검색결과 -->
			</div>
		</div>
			
			
		
			<br> <br> <br> <br> <br> <br>

			<div class="container">


				<div class="paging">

					<a href="#" class="bt">이전</a> <a href="#" class="num on">1</a> <a
						href="#" class="num">2</a> <a href="#" class="num">3</a> <a
						href="#" class="num">4</a> <a href="#" class="num">5</a> <a
						href="#" class="bt">다음</a>

				</div>

			</div>
		</div>





	<script type="text/javascript" src="resources/js/boardReportList.js"></script>
	<!-- <script type="text/javascript" src="resources/js/boardSearchList.js"></script> -->
	<%@ include file="footer.jsp" %>
</body>
</html>