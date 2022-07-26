<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.BoardReport"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물망초</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
<meta name="author" content="FREEHTML5.CO" />

<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

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

<link rel="stylesheet" href="/web/resources/main/css/style.css?ver3">


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<body>
<%@ include file="header.jsp" %>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">


			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover" data-stellar-background-ratio="0.5"
					style="background-image: url(blurry.jpg);">
					<div class="desc">
						<div class="container">
							<div class="row">
								<div class="col-sm-5 col-md-5">
									<!-- <a href="index.html" id="main-logo">Travel</a> -->
								<div class="tabulation animate-box">

								  <!-- Nav tabs -->
								  <ul class="nav nav-tabs" role="tablist">
									<li id="findItem" role="presentation" class="nav-item active">
										<a id="findSc" class="nav-link active" href="#" aria-controls="flights" role="tab" data-toggle="tab" data-bs-target="#flights" aria-selected="true">실종아동검색</a>
									</li>
									<li id="reportItem"  role="presentation" class="nav-item">
										 <a id="reportSc" class="nav-link" href="#" aria-controls="report" role="tab" data-toggle="tab" data-bs-target="#report" aria-selected="false">제보검색</a>
									</li>
								   
								 </ul>

								 <!-- Tab panes -->
								  <div class="tab-content">
								  
								   <div role="tabpanel" class="tab-pane show" id="flights" role="tabpanel" aria-labelledby="findSc" >
								   <form action="findSearch.do"  mehod="post" >
									  <div class="row">
										  <div class="col-xxs-12 col-xs-12 mt">
											  <div class="input-field">
												  <label for="name">이름</label>
												  <input name="find_name" type="text" class="form-control" id="from-place" placeholder="이름"/>
											  </div>
										  </div>
										  
										  <div class="col-xxs-12 col-xs-6 mt alternate">
											<div class="input-field">
												<label for="date-end">성별</label>
												<div class="form-check form-check-inline">
												  <input class="form-check-input" type="radio" name="find_gender" id="male" value="남">
												  <label class="form-check-label" for="inlineRadio2">남</label>
											  </div>
												  <div class="form-check form-check-inline">
													  <input class="form-check-input" type="radio" name="find_gender" id="female" value="여">
													  <label class="form-check-label" for="inlineRadio2">여</label>
												  </div>
											</div>
										</div>
  
										  <div class="col-xxs-12 col-xs-6 mt alternate">
											  <div class="input-field">
												  <label for="date-end">장애여부</label>
												  <div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="find_handicaped" id="Y" value="유">
													<label class="form-check-label" for="inlineRadio2">유</label>
												</div>
													<div class="form-check form-check-inline">
														<input class="form-check-input" type="radio" name="find_handicaped" id="N" value="무">
														<label class="form-check-label" for="inlineRadio2">무</label>
													</div>
											  </div>
										  </div>

										  <div class="col-xxs-12 col-xs-12 mt alternate">
											  <div class="input-field">
												  <label for="date-end">인상착의</label>
												  <input type="text" class="form-control" name="find_look" id="from-place" placeholder="인상착의를 입력해주세요."/>
											  </div>
										  </div>
										  <div class="col-xxs-12 col-xs-12 mt alternate">
											  <div class="input-field">
												  <label for="date-end">특징</label>
												  <input type="text" class="form-control" id="from-place" name="find_feature" placeholder="특징을 입력해주세요."/>
											  </div>
										  </div>
										  <div class="col-xxs-12 col-xs-12 mt alternate">
											  <div class="input-field">
												  <label for="date-end">설명</label>
												  <input type="text" class="form-control" id="from-place" name="find_desc" placeholder="설명을 입력해주세요."/>
											  </div>
										  </div>
										  <div class="col-xxs-12 col-xs-6 mt alternate">
											  <div class="input-field">
												  <label for="date-end">실종일자</label>
												  <input type="text" class="form-control" id="date-end" placeholder="mm/dd/yyyy"/>
											  </div>
										  </div>
										  <div class="col-xxs-12 col-xs-6 mt">
											  <section>
												  <label for="class">실종지역:</label>
												  <select name="missing_region" class="cs-select cs-skin-border">
								<option selected value="all">실종 지역</option>
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
											  </section>
										  </div>
										  <div class="col-xs-12">
											  <input type="submit" class="btn btn-primary btn-block" value="실종아동검색">
										  </div>
									  </div>
									  </form>
								   </div>
									
									
									<div role="tabpanel" class="tab-pane fade" id="report" aria-labelledby="reportSc" >
									 <form action="reportSearch.do"  mehod="post">								   
									  <div class="row">
										  <div class="col-xxs-12 col-xs-12 mt">
											  <div class="input-field">
												  <label for="name">이름</label>
												  <input type="text" name="person_name" class="form-control" id="from-place" placeholder="이름"/>
											  </div>
										  </div>
										  
										 <div class="col-xxs-12 col-xs-6 mt alternate">
										  <div class="input-field">
											  <label for="date-end">성별</label>
											  <div class="form-check form-check-inline">
												<input class="form-check-input" type="radio" name="gender" id="male" value="여">
												<label class="form-check-label" for="inlineRadio2">남</label>
											</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="gender" id="female" value="여">
													<label class="form-check-label" for="inlineRadio2">여</label>
												</div>
										  </div>
									  </div>


										<div class="col-xxs-12 col-xs-12 mt alternate">
											<div class="input-field">
												<label for="date-end">특징</label>
												<input type="text" name="report_feature" class="form-control" id="from-place" placeholder="특징을 입력하세요"/>
											</div>
										</div>
										<div class="col-xxs-12 col-xs-12 mt alternate">
											<div class="input-field">
												<label for="date-end">설명</label>
												<input type="text" name="report_desc" class="form-control" id="from-place" placeholder="설명을 입력하세요"/>
											</div>
										</div>
										  
										  
										  <div class="col-xxs-12 col-xs-6 mt">
											  <section>
												  <label for="class">발견지역:</label>
												  <select name="report_region" class="cs-select cs-skin-border">
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
											  </section>
										  </div>
										
										  <div class="col-xs-12">
											  <input type="submit" class="btn btn-primary btn-block" value="제보 검색">
										  </div>
									  </div>
									  </form>
								   </div>

								   
								</div>
							</div>

								</div>

								<div class="desc2 animate-box">
									<div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">

										<h3 class="multitle">물망초의 꽃말은</h3>
										<h3 class="multitle">
											<span id="for">「 나를 잊지 말아요 」</span> 입니다.
										</h3>
										<h3 class="multitle">장기실종아이들을 기억해주세요</h3>
										<!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- 검색이랑 제일 메인부분 끝 -->



	<!-- 물망초 이용법 -->

	<div id="fh5co-blog-section" class="fh5co-section-gray">
		<div class="container">
			<div class="row">
				<div
					class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
					<h3>물망초</h3>
					<p>실종아동 찾기에 도움을 주기 위해 제공하는 주요기능들입니다</p>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row row-bottom-padded-md">
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="fh5co-blog animate-box">
						<a href="#"><img class="img-responsive" id="p1"
							src="/web/resources/main/images/changee.jpg" alt=""></a>
						<div class="blog-text">
							<div class="prod-title">
								<h3 style="text-align: center;">
									<a href="/web/findList.do">미래얼굴예측기술</a>
								</h3>
								<span class="posted_by"></span>
					
								<p>
									물망초의 "미래 얼굴 예측 기술"을 통해<br> 장기실종아동의 찾기에 도움을 줍니다.
								</p>
									
								<p>
									<a href="/web/findList.do">실종아동등록페이지로 이동</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="fh5co-blog animate-box">
						<a href="/web/helpFilter.do"><img class="img-responsive" id="p1"
							src="/web/resources/main/images/lookk.jpg" alt=""></a>
						<div class="blog-text">
							<div class="prod-title">
								<h3 style="text-align: center;">
									<a href="/web/helpFilter.do">스티커로 인상착의 변환</a>
								</h3>
								<span class="posted_by"></span>
								<!-- <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
								<p>
									물망초의 "미래 얼굴 예측 기술"을 통해<br> 장기실종아동의 찾기에 도움을 줍니다.
								</p>
								<p>
									<a href="/web/helpFilter.do">사진필터페이지로 이동</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix visible-sm-block"></div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<div class="fh5co-blog animate-box">
						<a href="/web/helpPrintFirst.do"><img class="img-responsive" id="p1"
							src="/web/resources/main/images/leff.jpg" alt=""></a>
						<div class="blog-text">
							<div class="prod-title">
								<h3 style="text-align: center;">
									<a href="/web/helpPrintFirst.do">손쉬운 전단지제작</a>
								</h3>
								<span class="posted_by"></span>
								<!-- <span class="comment"><a href="">21<i class="icon-bubble2"></i></a></span> -->
								<p>
									전단지제작 폼을 제공하여 쉽게 <br>전단지를 만들수있도록 도움을 줍니다.
								</p>
								<p>
									<a href="/web/helpPrintFirst.do">전단지제작페이지로 이동</a>
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix visible-md-block"></div>
			</div>

			<!-- 버튼이 필요없어 일단 지워둠 -->
			<!-- <div class="col-md-12 text-center animate-box">
			<p><a class="btn btn-primary btn-outline btn-lg" href="#">See All Post <i class="icon-arrow-right22"></i></a></p>
		</div> -->

		</div>
	</div>
	<!-- 주요기능 끗 -->


	<div id="fh5co-tours" class="fh5co-section-gray">
		<div class="container">
			<div class="row">
				<div
					class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
					<h3 id="de">대책법</h3>
					<p>실종아동 발생시 대책법이 가장중요합니다. 당황하지 마시고 따라해보세요</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-sm-6 fh5co-tours animate-box"
					data-animate-effect="fadeIn">
					<div href="#">
						<img src="/web/resources/main/images/place-1.jpg"
							alt="Free HTML5 Website Template by FreeHTML5.co"
							class="img-responsive">
						<div class="desc">
							<span></span>
							<h3>부모님이 알아두는</h3>

							<span>실종아동 발생시 7단계 절차</span> <span class="price"></span> <a
								class="btn btn-primary btn-outline" href="/web/helpHelp.do" >바로가기<i
								class="icon-arrow-right22"></i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 fh5co-tours animate-box"
					data-animate-effect="fadeIn">
					<div href="#">
						<img src="/web/resources/main/images/place-2.jpg"
							alt="Free HTML5 Website Template by FreeHTML5.co"
							class="img-responsive">
						<div class="desc">
							<span></span>
							<h3>아이와 함께하는</h3>

							<span>귀여운 캐릭터와 함께 배우는 예방지식</span> <span class="price"></span> <a
								class="btn btn-primary btn-outline" href="/web/helpHelp.do" >바로가기<i
								class="icon-arrow-right22"></i></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 fh5co-tours animate-box"
					data-animate-effect="fadeIn">
					<div href="#">
						<img src="/web/resources/main/images/place-3.jpg"
							alt="Free HTML5 Website Template by FreeHTML5.co"
							class="img-responsive">
						<div class="desc">
							<span></span>
							<h3>지문 등 사전등록제</h3>

							<span>실종을 방지하고 발생시 신속한 발견을 위해 사전에 등록해주는 제도를 운영합니다.</span> <span
								class="price"></span> <a class="btn btn-primary btn-outline"
								href="#">안전 Dream바로가기<i class="icon-arrow-right22"></i></a>
						</div>
					</div>
				</div>
				<div class="col-md-12 text-center animate-box">
					<p>
						<a class="btn btn-primary btn-outline btn-lg" href="#">대책법
							알아보기 <i class="icon-arrow-right22"></i>
						</a>
					</p>
				</div>
			</div>
		</div>
	</div>




	<!-- 팀원소개 -->

	<div id="fh5co-features">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center animate-box">
					<h3>물망초 팀원소개</h3>
					<br>
					<br>

				</div>
			</div>

			<div class="row">
				<div class="col-md-4 animate-box">

					<div class="feature-left">
					<!-- <span class="icon"> <i class="icon-wallet"></i> -->
						</span>
						<div class="feature-copy">
							<h3>김훈겸</h3>
							<p>백엔드 담당</p>
							<p>mySQL을 이용한 DataBase 설계 및 구현</p>
							<p>Spring Framework를 이용하여 게시판 글 등록 및 사진 업로드 후 출력 구현</p>
							<p>010-2802-4785</p>
						</div>
					</div>

				</div>
				
				
				<div class="col-md-4 animate-box">

					<div class="feature-left">
						<!-- <span class="icon"> <i class="icon-wallet"></i> -->
						</span>
						<div class="feature-copy">
							<h3>이민지</h3>
							<p>백엔드 담당</p>
							<p>Spring Framework를 이용하여 게시판 목록 및 상세페이지 서버 구현/ 등록, 검색, 메세지, 페이징 서버 구현
							</p>
							<p>도움마당게시판 기능 서버 연결</p>
							<p>010-2297-5412</p>
						</div>
					</div>

				</div>

				<div class="col-md-4 animate-box">
					<div class="feature-left">
						<!-- <span class="icon"> <i class="icon-wallet"></i> -->
						</span>
						<div class="feature-copy">
							<h3>이정민</h3>
								
							<p>프론트엔드 담당</p>
							<p>전체화면설계(메인, 게시판 목록 및 상세페이지, 등록, 검색, 메시지, 도움마당)</p>
							<p>fabric.js를 이용한 스티커기능 구현과 JavaScript를 이용한 회원가입 중복체크, 로그인구현</p>
							<p>010-5814-4577</p>
						</div>
					</div>

				</div>
				
				
				

				
			</div>
			<div class="row">
				
				<div class="col-md-4 animate-box">
					<div class="feature-left">
						<!-- <span class="icon"> <i class="icon-wallet"></i> -->
						<div class="feature-copy">
							<h3>하종현</h3>
						
							<p>인공지능 담당</p>
								<p>StyleGAN과 cGAN을 활용한 딥러닝 과정 수행</p>
									<p>
AI허브에서 제공하는 한국인 안면 이미지 데이터 신청 및  수집</p>
<p>Python을 이용한 데이터 증식 및 데이터 전처리</p>
									<p>010-5106-5648</p>
						</div>
					</div>
				</div>
				
				
				<div class="col-md-4 animate-box">
					<div class="feature-left">
					<!-- <span class="icon"> <i class="icon-wallet"></i> -->
						</span>
						<div class="feature-copy">
							<h3>안민준</h3>
							<p>인공지능 담당</p>
								<p>코랩을 통해 GPU활용으로 노화 예측 이미지 오픈소스 모델링을 활용한 동양인 이미지 딥러닝 학습 및 산출
 
								</p>
							<p>010-9030-2705</p>
						</div>
					</div>
				</div>
				<div class="col-md-4 animate-box">
					<div class="feature-left">
						<!-- <span class="icon"> <i class="icon-wallet"></i> -->
						</span>
						<div class="feature-copy">
							<h3>양서린</h3>
							<p>인공지능 담당</p>
								<p>StyleGAN과 cGAN을 활용한 딥러닝 과정 수행</p>
								<p>데이터 셋 크롤링을 통한 안면 데이터 수집 및 데이터 증식</p>
								<p>가상 환경 설정 - VirtualBox에서 리눅스 환경 이용 및 anaconda를 이용해 가상환경 생성</p>
							<p>010-8946-8837</p>
						</div>
					</div>
				</div>
				
				
			</div>
		</div>
	</div>



	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="/web/resources/main/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="/web/resources/main/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="/web/resources/main/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="/web/resources/main/js/jquery.waypoints.min.js"></script>
	<script src="/web/resources/main/js/sticky.js"></script>

	<!-- Stellar -->
	<script src="/web/resources/main/js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="/web/resources/main/js/hoverIntent.js"></script>
	<script src="/web/resources/main/js/superfish.js"></script>
	<!-- Magnific Popup -->
	<script src="/web/resources/main/js/jquery.magnific-popup.min.js"></script>
	<script src="/web/resources/main/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="/web/resources/main/js/bootstrap-datepicker.min.js"></script>
	<!-- CS Select -->
	<script src="/web/resources/main/js/classie.js"></script>
	<script src="/web/resources/main/js/selectFx.js"></script>

	<!-- Main JS -->
	<script src="/web/resources/main/js/main.js"></script>
	<script type="text/javascript">
	$(document).on("click","#findSc",function(){

	    $('#findItem').prop('class','nav-item active');
	    $('#reportItem').prop('class','nav-item');
	    $('#findSc').prop('aria-selected','true');
	    $('#findSc').prop('class','nav-link active');
	    $('#reportSc').prop('aria-selected','false');
	    $('#reportSc').prop('class','nav-link')
	    $('#flights').prop('class','tab-pane show');
	    $('#report').prop('class','tab-pane fade')
	    

	})




	$(document).on("click","#reportSc",function(){

	    $('#reportItem').prop('class','nav-item active');
	    $('#findItem').prop('class','nav-item');
	    $('#reportSc').prop('aria-selected','true');
	    $('#findSc').prop('aria-selected','false');
	    $('#reportSc').prop('class','nav-link active');
	    $('#findSc').prop('class','nav-link')
	    $('#report').prop('class','tab-pane show');
	    $('#flights').prop('class','tab-pane fade')
	    

	})
	</script>
	<%@ include file="footer.jsp" %>

</body>
</html>