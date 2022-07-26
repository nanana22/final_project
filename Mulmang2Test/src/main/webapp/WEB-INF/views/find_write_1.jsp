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
    <link rel="stylesheet" href="find.css">

</head>
<body>
<%User user_id = (User)session.getAttribute("user");%>
<%=user_id.getUser_id()%>
    <div class="container">   
    <div class="row">
        <h4 class="mb-3">찾기 글쓰기</h4>
        
            <h7 class="'mb-3">1.기본 정보 입력  >  2.사진 변환</h7>
            <hr class="my-4">
    </div>

    <!-- 글쓰기 폼 -->
          <div class="col-md-7 col-lg-8">            
			<form action="boardFindWrite1.do" method="POST">
			  <input type="hidden" name="user_id" value="<%=user_id.getUser_id()%>">
              <div class="row g-3">
                <div class="col-sm-6">
                  <label for="Name" class="form-label">이름</label>
                  <input type="text" class="form-control" id="find_name" placeholder="이름" name="find_name" value="" required="">
                </div>
    
                <div class="col-sm-6">
                  <label for="birth" class="form-label">생년월일</label>
                  <input type="text" class="form-control" id="find_birthdate" placeholder="생년월일" name="find_birthdate" value="" required="">
                </div>


                <div class="col-sm-6">
                    <label for="find_gender" class="form-label">성별</label>
                  </div>

                  <div class="col-sm-6">
                    <label for="find_handicaped" class="form-label">장애여부</label>
                  </div>


                  <div class="col-md-6">
                    <div class="form-check form-check-inline" name="find_gender">
                        <input class="form-check-input" type="radio" name="find_gender" id="male" value="남">
                        <label class="form-check-label" for="inlineRadio1">남</label>
                      </div>
                      <div class="form-check form-check-inline" name="find_gender">
                        <input class="form-check-input" type="radio" name="find_gender" id="female" value="여">
                        <label class="form-check-label" for="inlineRadio2">여</label>
                      </div>

                  </div>
                  <div class="col-md-6">
                    <div class="form-check form-check-inline"  name="find_handicaped">
                        <input class="form-check-input" type="radio" name="find_handicaped" id="disability_y" value="유">
                        <label class="form-check-label" for="inlineRadio1">유</label>
                      </div>
                      <div class="form-check form-check-inline" name="find_handicaped">
                        <input class="form-check-input" type="radio" name="find_handicaped" id="disability_n" value="무">
                        <label class="form-check-label" for="inlineRadio2">무</label>
                      </div>
                  </div>


                  
                <div class="col-sm-6">
                    <label for="firstName" class="form-label">실종일자</label>
                    <div class="row">
                      <input type="date" name="MISSING_DATE"> 
                  </div>
                      <!-- <input type="text" class="form-control" id="date_dis" placeholder="실종일자" value="" required="">
                    </div> -->

                

                
                  <div class="col-sm-6">
                    <label for="firstName" class="form-label">실종지역</label>
                    <select class="form-select" aria-label="Default select example" name="missing_region">
                        <option selected>실종 지역</option>
                        <option value="서울">서울</option>
                        <option value="부산">부산</option>
                        <option value="대구">대구</option>
                        <option value="인천">인천</option>
                        <option value="광주">광주</option>
                        <option value="대전">대전</option>
                        <option value="울산">울산</option>
                        <option value="경기">경기</option>
                        <option value="강원">강원</option>
                        <option value="충북">충북</option>
                        <option value="충남">충남</option>
                        <option value="전북">전북</option>
                        <option value="전남">전남</option>
                        <option value="경북">경북</option>
                        <option value="경남">경남</option>
                        <option value="세종">세종</option>
                        <option value="제주">제주</option>
                        
                      </select>
                  </div>

      
    
                <div class="col-12">
                  <label for="character" class="form-label">특징</label>
                  <div class="input-group has-validation">
                    <input type="text" class="form-control" id="character" name="find_feature" placeholder="특징" required="">
                  </div>
                </div>

                <div class="col-12">
                    <label for="look" class="form-label">인상착의</label>
                    <div class="input-group has-validation">
                      <input type="text" class="form-control" id="look" name="find_look" placeholder="인상착의" required="">
                    </div>
                  </div>


                  <div class="col-12">
                    <label for="add" class="form-label">부가설명</label>
                    <div class="input-group has-validation">
                        <textarea class="form-control" id="add" name="find_desc" rows="6"></textarea>      
                    </div>
                  </div>
      
                 
              <hr class="my-4">
    
            
            </form>
            <button type="submit" class="btn btn-light">다음</button>
          </div>
        </div>
    
        </div>

    </div>
    <div>
       

        
    </div>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
 

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function(){            
            var now = new Date();
            var year = now.getFullYear();
            var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
            var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
            //년도 selectbox만들기               
            for(var i = year ; i >= 1900 ; i--) {
                $('#year').append('<option value="' + i + '">' + i + '년</option>');    
            }
        
            // 월별 selectbox 만들기            
            for(var i=1; i <= 12; i++) {
                var mm = i > 9 ? i : "0"+i ;            
                $('#month').append('<option value="' + mm + '">' + mm + '월</option>');    
            }
            
            // 일별 selectbox 만들기
            for(var i=1; i <= 31; i++) {
                var dd = i > 9 ? i : "0"+i ;            
                $('#day').append('<option value="' + dd + '">' + dd+ '일</option>');    
            }
            $("#year  > option[value="+year+"]").attr("selected", "true");        
            $("#month  > option[value="+mon+"]").attr("selected", "true");    
            $("#day  > option[value="+day+"]").attr("selected", "true");       
          
        })
        
        </script>
</body>
</html>