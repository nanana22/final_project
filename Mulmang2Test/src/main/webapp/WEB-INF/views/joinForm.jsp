<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="./resources/css/joinForm.css">
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
</head>
<body>
	<%@ include file="header.jsp"%>
	<form action="userJoin.do" method="POST">

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
				<button type="submit" class="btn btn-light">회원가입</button>

				<!-- <div id="joinDiv">
          <button id="joinBtn" type="submit" name="button">가입하기</button>
        </div> -->
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<%@ include file="footer.jsp"%>
</body>
</html>