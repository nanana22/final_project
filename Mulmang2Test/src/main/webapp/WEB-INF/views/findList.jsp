<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>실종아동 찾기 리스트</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="./resources/css/find.css">
</head>
<body>

	<div class="container">
		<form name="f" method="post">


			<h4>실종아동 검색</h4>
			<hr>

			<table class="table table-borderless">
				<thead>
					<tr>
						<th colspan="2" scope="col"><input type="text" name="find_name"
							class="form-control" id="Name" placeholder="이름" value=""
							required=""></th>
						<td scope="col">성별
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="find_gender" id="male" value="남"> <label
									class="form-check-label" for="inlineRadio1">남</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="find_gender" id="female" value="여">
								<label class="form-check-label" for="inlineRadio2">여</label>
							</div>
						</td>
						<td scope="col">장애여부
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="find_handicaped" id="Y" value="유"> <label
									class="form-check-label" for="inlineRadio1">유</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="find_handicaped" id="N" value="무"> <label
									class="form-check-label" for="inlineRadio2">무</label>
							</div>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row"><input type="text" class="form-control" name="find_look"
							id="look" placeholder="착의사항" value="" required=""></th>

						<!-- <td> <label for="firstName" class="form-label">실종일자</label> <select class="form-select"  aria-label="Default select example name="yy" id="year" style="width: 100px;"></select>
                                      <select class="form-select text-center" aria-label="Default select example name="mm" id="month" style="width: 100px;"></select>
                                      <select class="form-select text-center" aria-label="Default select example name="dd" id="day" style="width: 100px;"></select></td> -->
						<td><select class="form-select" name="missing_region"
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
						<td><label for="firstName" class="form-label">실종일자</label>
						<td>
							<div class="row">
								<select class="form-select col-sm-2"
									aria-label="Default select example name=" yy" id="year"
									style="width: 100px;"></select> <select
									class="form-select text-center  col-sm-2"
									aria-label="Default select example name=" mm" id="month"
									style="width: 100px;"></select> <select
									class="form-select text-center  col-sm-2"
									aria-label="Default select example name=" dd" id="day"
									style="width: 100px;"></select>
							</div>
						</td>

					</tr>

					<tr>
						<td scope="row">특징</td>
						<td colspan="3"><input type="text" class="form-control" name="find_feature"
							id="character" placeholder="특징" value="" required=""></td>

					</tr>
					<tr>
						<td scope="row">설명</td>
						<td colspan="3"><input type="text" class="form-control" name="find_desc"
						id="" placeholder="설명" value="" required=""></td>

					</tr>
				</tbody>
			</table>


		

		<div class="text-center mt-6">
			<button type="button" class="btn btn-secondary">검색하기</button>
		</div>
		</form>
	</div>

	<div class="container">
		<div class="row">
			<h4>등록리스트</h4>
			<hr>
		</div>
		<div id="child_list">
		<!-- ajax로 표현할 곳 -->
		</div>




		<!-- 리스트 페이지영역 -->
		<div class="paging">

			<a href="#" class="bt">이전</a> <a href="#" class="num on">1</a> <a
				href="#" class="num">2</a> <a href="#" class="num">3</a> <a href="#"
				class="num">4</a> <a href="#" class="num">5</a> <a href="#"
				class="bt">다음</a>

		</div>
	</div>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<script type="text/javascript"
		src="http://code.jquery.com/jquery-1.12.4.min.js"></script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>


	<script type="text/javascript" src="resources/js/boardFindList.js"></script>

</body>
</html>