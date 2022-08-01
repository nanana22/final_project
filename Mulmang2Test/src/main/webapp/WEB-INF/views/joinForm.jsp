<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="/web/resources/css/joinForm.css?ver5">
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
<link rel="stylesheet"
	href="/web/resources/main/css/bootstrap-datepicker.min.css">
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
						<input type="text" name="user_id" value="" placeholder="2~12자 이내"  id="uif_id" oninput="uif_idCheck()"
							id="user_id" required oninput="uif_idCheck()">
						
					</div>
					<p id="idCheck"></p>
				</div>

				<div>
					<p class="notnull">비밀번호</p>
					<input type="password" name="user_pw" value="" id="uif_pw"
						placeholder="비밀번호를 입력해주세요" oninput="uif_pwCheck()" minlength="4"  required>
						 <p id="pwCheck"></p>
				</div>

				<div>
					<p class="notnull">비밀번호 확인</p>
					<input type="password" name="user_pwCk" value="" id="uif_pwck"
						placeholder="비밀번호를 한번 더 입력해주세요" oninput="uif_pwckCheck()" minlength="4" required>
						<p id="pwckCheck"></p>
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
							<input type="text" name="user_nick" value="" id="uif_nick" oninput="uif_nickCheck()"
								placeholder="2~12자 이내" required>
							
						</div>
						<p id="nickCheck"></p>
					</div>



					<br>
					<button id="joinJO" type="submit" class="btn btn-light">회원가입</button>
				</div>
	</form>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		function uif_idCheck() {
			let uif_id = $('#user_id').val();
			alert(uif_id)

			let idLength = 0;
			let engCheck = /[a-z]/;
			let numCheck = /[0-9]/;
			let specialCheck = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

			for (let i = 0; i < uif_id.length; i++) {
				id = uif_id.charAt(i);
				if (escape(id).length > 4) {
					idLength += 2;
				} else {
					idLength += 1;
				}
			}

			$.ajax({
				url : '/web/joinIdCheck',
				type : 'post',
				data : {
					"user_id" : $('#user_id').val()
				},

				success : function(data) {
					console.log('통신성공 >> ', data)
					if (data == 'true') {
						$('.dbCkRs').html(
								'<p class="checkblue">사용할 수 있는 아이디입니다.<p>');
						$('#user_id').css({
							'border-color' : '#1c7cb4'
						});
					} else {
						$('.dbCkRs').html(
								'<p class="checkred">존재하는 아이디입니다.<p>');
						$('#user_id').css({
							'border-color' : '#d04444'
						});

					}
				},
				error : function(e) {
					console.log('통신실패')
				}
			})

		}
	</script>
	
	
	
	 <script>
         function uif_pwCheck(){
               
               let uif_pw = $('#uif_pw').val().length;
               
               if(uif_pw==0){
                  $('#pwCheck').text('비밀번호를 입력하세요!')
                  $('#pwCheck').css({'color':'#d04444'});
                  $('#uif_pw').css({'border-color':'#d04444'});
                  
               }else if(uif_pw<4){
                  $('#pwCheck').text('비밀번호를 4자리 이상 입력하세요');
                  $('#pwCheck').css({'color':'#d04444'});
                  $('#uif_pw').css({'border-color':'#d04444'});
                  
               }else{
                  $('#pwCheck').text('');
                  $('#uif_pw').css({'border-color':'#1c7cb4'});
               }
            }
            
            function uif_pwckCheck(){
               
               let uif_pw = $('#uif_pw').val();
               let uif_pwck = $('#uif_pwck').val();
               
               if(uif_pwck==0){
                  $('#pwckCheck').text('비밀번호를 입력하세요!')
                  $('#pwckCheck').css({'color':'#d04444'});
                  $('#uif_pwck').css({'border-color':'#d04444'});
               }else if(uif_pwck.length<4){
                  $('#pwckCheck').text('비밀번호를 4자리 이상 입력하세요');
                  $('#pwckCheck').css({'color':'#d04444'});
                  $('#uif_pwck').css({'border-color':'#d04444'});
                  
               }else if(uif_pw==uif_pwck){
                  $('#pwckCheck').text('비밀번호가 같습니다!');
                  $('#pwckCheck').css({'color':'#1c7cb4'});
                  $('#uif_pwck').css({'border-color':'#1c7cb4'});
               }else{
                  $('#pwckCheck').text('비밀번호가 다릅니다!');
                  $('#pwckCheck').css({'color':'#d04444'});
                  $('#uif_pwck').css({'border-color':'#d04444'});
               }
            }
            
            
            
            //  여기서 부턴 실험

            function uif_idCheck(){
               
               let uif_id = $('#uif_id').val();
               
               let idLength = 0;
               let engCheck = /[a-z]/;
               let numCheck = /[0-9]/;
               let specialCheck = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
               
               for(let i=0; i < uif_id.length; i++){
                  id = uif_id.charAt(i);
                  if(escape(id).length>4){
                     idLength += 2;
                  }else{
                     idLength += 1;
                  }
               }
               
               if(uif_id == null || uif_id == "dd"){
                  $('#idCheck').html('<p class="checkred">중복된 아이디입니다.<p>');
                  $('#uif_id').css({'border-color':'#d04444'});
                  $('#idCheck').css({'color':'#d04444'});
               }else if(uif_id == null || uif_id == "s"){
                   $('#idCheck').html('<p class="checkred">사용가능한 아이디입니다!.<p>');
                   $('#uif_id').css({'border-color':'#1c7cb4'});
                   $('#idCheck').css({'color':'#1c7cb4'});
               }
            }
            
            function uif_nickCheck(){
               
               let uif_nick = $('#uif_nick').val();
               
               let nickLength = 0;
               let engCheck = /[a-z]/;
               let numCheck = /[0-9]/;
               let specialCheck = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
               
               for(let i=0; i < uif_nick.length; i++){
                  nick = uif_nick.charAt(i);
                  if(escape(nick).length>4){
                     nickLength += 2;
                  }else{
                     nickLength += 1;
                  }
               }
               
         
               
               if(uif_nick == null || uif_nick == "dkdk"){
                  $('#nickCheck').html('<p class="checkred">이미 사용중인 닉네임입니다.<p>');
                  $('#uif_nick').css({'border-color':'#d04444'});
                  $('#nickCheck').css({'color':'#d04444'});
               }else if(uif_nick == null || uif_nick == "s"){
                   $('#nickCheck').html('<p class="checkred">사용가능한 닉네임입니다.<p>');
                   $('#uif_nick').css({'border-color':'#1c7cb4'});
                   $('#nickCheck').css({'color':'#1c7cb4'});
               }
            }

      </script>

</body>
</html>