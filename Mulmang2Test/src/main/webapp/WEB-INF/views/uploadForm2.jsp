<%@page import="com.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
   

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
<link rel="stylesheet" href="./resources/css/findWrite.css?ver1">
</head>
<body>
<%@ include file="header.jsp"%>

        
        <div class="container">
           <div class="row">
        <h3 class="mb-3">찾기 글쓰기</h3>
        
                       <h7 class="'mb-3">1.기본 정보 입력  >  2. 사진업로드 > 3. 변환사진 반환</h7>

            <hr class="my-4">
    </div>

            <div class="row">
                <div class="col-md-4"> 
                    <div class="card" style="width: 121%;">
                   <img alt="" src="${face.real_face}">
              
                    </div>
                </div>
                <div class="col-md-4" id="faceC">
                    <button type="button"  class="btn btn-light btn-lg bb"  > ➞ </button>
                </div>
                <div class="col-md-4"> 
                    <div class="card" style="width: 121%;">
                    <img src="brand_03.png" class="card-img-top" alt="..." id="Aface">
                    
                    </div>
                </div>
            </div>
            <div>
                <div class="row">
                    <div id="fw3b">  
                         <button class="btn btn-secondary" id="fwb">이전</button>
                         <button class="btn btn-secondary" id="fww">등록하기</button>
                         <button class="btn btn-secondary" id="fst">스타일적용</button>
            		</div>  
                </div>
              
            </div>
                </div>
              
            </div>
        </div>






<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>