<%@page import="com.smhrd.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous">
<link rel="stylesheet" href="/web/resources/css/find.css?ver13">

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

<style>

/* 페이징 */

.paging {
  margin-top: 50px;
  text-align: center;
  font-size: 0;
   
}


.paging {
  margin-top: 10px;
  text-align: center;
  font-size: 0;
     display: block;
    position: relative;
    right: 27px;
    margin-bottom: 44px;
}
.paging a {
  display: inline-block;
  margin-left: 10px;
  padding: 5px 10px; 
  font-size: 15px;
  text-decoration:none ;
  font-family: 'LeferiBaseType-BoldA';
}

 .paging a.bt {

  margin : 3px; 
  font-family: 'LeferiBaseType-BoldA';
	
}

.paging a.num {
  
  font-weight: 600;
  color: rgb(141, 157, 167);
  text-align : center;
}

.paging a.num.on {
  
  color: #3494e6;
}



#ssxx{
	
	 overflow:hidden
	
	
}


@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

#findInfo {

font-family: 'GmarketSansMedium';

}

</style>

<script type="text/javascript">
   function goList() {
      location.href = '/web/findList.do'
   }
</script>


</head>
<body>
   <%@ include file="header.jsp"%>

   <%
      User user = (User) session.getAttribute("user");
   %>

   <div class="container">
     
         <h3 class="mb-3">찾기 상세페이지</h3>
         <br> <br>
    
      <div class="row" id="findIDDATE">
         <div class="col-sm-2">${findView.upload_date }</div>
         <div class="col-sm-1">${findView.user_id }</div>
         
      </div>

      <hr class="my-4">

      <div class="row">
         <div class="col">
            <div class="card" style="width: 43rem;">
               <img src=".${face }" class="card-img-top" alt="...">
               <div class="card-body">
                  <p class="card-text" style="text-align: center;">당시 모습</p>
               </div>
            </div>
         </div>
         <div class="col-md-1"></div>
         <div class="col">
            <div class="card" style="width: 43rem;">
               <img src="${deep}" class="card-img-top" alt="...">
               <div class="card-body">
                  <p class="card-text" style="text-align: center;">현재 33살 추정모습</p>
               </div>
            </div>
         </div>

      </div>
<div class="row" id="findInfo">
      <div class="col-md-7 col-lg-8">
         <form class="needs-validation" novalidate="">
            <div class="row g-4">

               <div class="col-md-3">이름</div>
               <div class="col-md-9">${findView.find_name }</div>


               <div class="col-md-3">실종날짜</div>
               <div class="col-md-9">${findView.missing_date }</div>

               <div class="col-md-3">실종지역</div>
               <div class="col-md-9">${findView.missing_region}</div>

               <div class="col-md-3">인상착의</div>
               <div class="col-md-9">${findView.find_look}</div>

               <div class="col-md-3">특징</div>
               <div class="col-md-9">${findView.find_feature}</div>

               <div class="col-md-3">설명</div>
               <div class="col-md-9">${findView.find_desc}</div>
            </div>
         </form>
      </div>
</div>



 <div class="row" id="findmsList">
      <div class="mt-6 mlb">


         <c:choose>
            <c:when test="${empty user }">

               <a id="noLogMsg" class="btn btn-secondary"
                  data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
                  aria-controls="offcanvasExample" style="width: 120px;"> 메세지 </a>
               <button class="btn btn-secondary" type="submit"
                  data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"
                  aria-controls="offcanvasExample" style="width: 120px;"
                  onClick="goList()">목록으로</button>
            </c:when>

            <c:otherwise>

               <a id="onLogMsg" class="btn btn-secondary"
                  data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
                  aria-controls="offcanvasExample" style="width: 120px;"> 메세지 </a>
               <button class="btn btn-secondary" type="submit"
                  data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"
                  aria-controls="offcanvasExample" style="width: 120px;"
                  onClick="goList()">목록으로</button>





               <div class="offcanvas offcanvas-end" tabindex="-1"
                  id="offcanvasExample" aria-labelledby="offcanvasExampleLabel"
                >
                  <div class="offcanvas-header">
                     <h3 class="offcanvas-title" id="offcanvasExampleLabel">메세지
                        작성</h3>
                     <br> <br>
                     <button type="button" class="btn-close text-reset"
                        data-bs-dismiss="offcanvas" aria-label="Close"></button>
                  </div>








                  <div class="offcanvas-body" id="ssxx">
                     <form id="msgForm" method="post">
                        <div class="mb-3 row-g-3">
                           <div class="col-sm-12">
                              <h7 for="exampleFormControlTextarea1" class="form-label">받는이
                              ${findView.user_id}</h7>
                           </div>

                           <div class=" col-sm-12 input-group has-validation">
                              <input type="text" class="form-control" id="look"
                                 name="msg_title" placeholder="제목을 입력해주세요" required="">
                              <br>
                           </div>

                           <textarea class="form-control" id="exampleFormControlTextarea1"
                              name="msg_content" rows="10"></textarea>
                        </div>

                        <input id="sender" type="hidden" name="msg_sender_id"
                           value="<%=user.getUser_id()%>"> <input id="receiver"
                           type="hidden" name="msg_receiver_id"
                           value="${findView.user_id}">
                        <div class="text-center">
                           <!-- Button trigger modal -->
                           <button id="toastStart" class="btn btn-secondary"
                              data-bs-toggle="modal" data-bs-target="#exampleModal">
                              메세지전송</button>
                        </div>
                     </form>








                     <div class="row">
                        <h3>메세지 리스트</h3>


                        <table class="table text-center" id="msgLL">
                           <thead>
                              <tr>
                                 <th scope="col">번호</th>
                                 <th scope="col">제목</th>
                                 <th scope="col">작성자</th>
                                 <th scope="col">날짜</th>

                              </tr>
                           </thead>
                           <tbody id="msgList">


                           </tbody>
                        </table>




                     </div>

                     <div class="container">


                        <div class="paging">

                           <a href="#" class="bt">이전</a> <a href="#" class="num on">1</a>
                           <a href="#" class="num">2</a> <a href="#" class="num">3</a> <a
                              href="#" class="num">4</a> <a href="#" class="num">5</a> <a
                              href="#" class="bt">다음</a>

                        </div>

                     </div>
                  </div>
               </div>

            </c:otherwise>
         </c:choose>

</div>
</div>

         <br> <br>

       <div class="row">

			<div id="warning">
				< 주의 ><br><br>
			실종아동 등의 사진등 신상정보사항을 실종아동 등을 찾기 위한 목적 외에
				영리목적등의 정당한 사유없이 무단 복사, 게시, 배포하는 경우에는 <br> '실종아동 등의 보호 및 자원에 관한 법률'제 18조에
				의거하여, 2년 이하의 징역 또는 1천만원 이하의 벌금에 처해질 수 있습니다.
			</div>
		</div>


      
      

      <script
         src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
         integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
         crossorigin="anonymous"></script>

      <!-- 메세지 전송성공 -->
      <script src="http://code.jquery.com/jquery-latest.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
      <script>
         $(document).on('click', '#noLogMsg', function() {
            alert('로그인 하세요')
            location.href = '/web/loginCk.do'
         })
      </script>

      <script type="text/javascript" src="/web/resources/js/msgList.js"></script>
      <script type="text/javascript" src="/web/resources/js/msgForm.js"></script>
     
    
</body>
</html>
