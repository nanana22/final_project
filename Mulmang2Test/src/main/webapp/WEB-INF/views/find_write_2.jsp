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
    <!-- <style>
       .input-file-button{
        padding: 6px 25px;
        background-color:#FF6600;
        border-radius: 4px;
        color: white;
        cursor: pointer;
        }
        </style> -->
</head>
<body>

 <%User user_id = (User)session.getAttribute("user"); %>
 <%=user_id.getUser_id() %>
 	       
 	       
        <div class="container">
           <div class="row">
        <h4 class="mb-3">찾기 글쓰기</h4>
        
            <h7 class="'mb-3">1.기본 정보 입력  >  2.사진 변환</h7>
            <hr class="my-4">
    </div>

            <div class="row">
                <div class="col-md-4"> 
                    <div class="card" style="width: 100%;">
                    <img src="brand_03.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <input type="file" id="input-file" name="FIND_FACE">
                    <!-- <a href="#" class="btn btn-secondary pb">사진 업로드</a> -->
                        
                    </div>
                    </div>
                </div>
                <div class="col-md-4" >
                    <button type="button" class="btn btn-secondary btn-lg bb">변환 하기</button>
                </div>
                <div class="col-md-4"> 
                    <div class="card" style="width: 100%;">
                    <img src="brand_03.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="#" class="btn btn-secondary pb">사진 저장하기</a>
                    </div>
                    </div>
                </div>
            </div>
            <div>
                <div class="row">
                    <!-- <div class="text-center mt-3">
                        <button type="button" class="btn-btn btn2">변경하기</button>
                        <button type="button" class="btn-btn btn2">다시쓰기</button>
                        <button type="button" class="btn-btn btn2">다시쓰기</button>
                    </div> -->
                    
                            
                                <button class="btn-2">이전</button>
                                <button class="btn-2">등록하기</button>
                                <button class="btn-2">스타일적용</button>
                </div>
              
            </div>
        </div>



<!-- 
        <label className="input-file-button" for="input-file">
            업로드
          </label>
          <input type="file" id="input-file" style= display:"none;">
           -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>