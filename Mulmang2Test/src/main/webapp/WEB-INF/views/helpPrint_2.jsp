<%@page import="com.smhrd.domain.Print"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전단지 2단계</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="/web/resources/css/helpPrint_1.css">
<link rel="stylesheet" href="/web/resources/css/helpPrint_2.css">



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
</head>
<body>
<%@ include file="header.jsp" %>
<script type="text/javascript">
	
	function oneClk(){
		$('#chooseFile').css('display','none')
		$('#oneBtn').css('display','none')
	}
	
	function twoClk(){
		$('#chooseFile2').css('display','none')
		$('#twoBtn').css('display','none')

	}
	
</script>
<% Print print = (Print)request.getAttribute("print"); %>
	<div class="container j">
		<div class="row">
			<h2 class="mb-3">전단지 제작하기</h2>

			<h4 class="'mb-3">1.기본 정보 입력 > 2.사진 넣기</h4>
			<hr class="my-4">
		</div>

		<!-- 전단지제작 폼 -->

		<div class="bb">
			<div class="row1" id="head">실종 아동을 찾습니다</div>

			<!-- 사진 업로드될 공간-->
			<div class="row" style="position: relative; top: 30px; left: 30px;">
				<div class="col-sm-1"></div>

				<div class="col-sm-4">
					<!-- 첫번째 -->
					<div class="contents">
						<div class="upload-box">
							<div id="drop-file" class="drag-file">

								<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
									alt="파일 아이콘" class="image">
								<p class="message">Drag files to upload</p>
								<img src="" alt="미리보기 이미지" class="preview">

							</div>
							<label id="oneBtn" class="file-label" for="chooseFile">사진업로드</label> <input
								onclick="oneClk()"
								class="file" id="chooseFile" type="file"
								onchange="dropFile.handleFiles(this.files)"
								accept="image/png, image/jpeg, image/gif">
						</div>
					</div>
				</div>

				<div class="col-sm-1"></div>

				<div class="col-sm-4">
					<!-- 두번째 -->
					<div class="contents">
						<div class="upload-box">
							<div id="drop-file2" class="drag-file">

								<img src="https://img.icons8.com/pastel-glyph/2x/image-file.png"
									alt="파일 아이콘" class="image">
								<p class="message">Drag files to upload</p>
								<img src="" alt="미리보기 이미지" class="preview2">

							</div>
							<label id="twoBtn" class="file-label" for="chooseFile2">사진업로드</label> <input
								onclick="twoClk()"
								class="file" id="chooseFile2" type="file"
								onchange="dropFile2.handleFiles(this.files)"
								accept="image/png, image/jpeg, image/gif">
						</div>
					</div>
				</div>

				<div class="col-sm-1"></div>
			</div>
			<br>



			<!-- 정보적는칸 info -->
			<div class="info">

				<form>
					<fieldset>
						<legend><%=print.getName() %> (현재 추정나이 :30)</legend>


						<label for="" class="infoadd">○ 실종일자 : <%=print.getDate() %></label><br />

						<label for="" class="infoadd">○ 실종장소 : <%=print.getRegion() %> <%=print.getRegionDt() %></label><br />

						<label for="" class="infoadd">○ 신체특징 : <%=print.getFeature() %></label>
					</fieldset>
				</form>



			</div>


			<!-- <div class="tel">
            <p>제보 : 010 - 0000 - 0000</p>
            <p>물망초가 실종아동찾기에 함께합니다 </p>
            
        </div> -->




		</div>





		<div class="row2">
			<div class="row1" id="call">
				<p>제보 : <%=print.getTel() %></p>
				<p>물망초가 실종아동찾기에 함께합니다</p>
			</div>

		</div>




		<!-- 아래 버튼 -->



		<div class="row backB">

			<div class="col-m-3 print2b_btn">
				<button type="submit" class="btn btn-outline-secondary B1"
					onClick="location.href='/web/helpPrintFirst.do'">이 전</button>
			</div>

			<div class="col-m-3 print2s_btn">
				<button type="submit" class="btn btn-outline-secondary B2"
					onClick="location.href='help_print(2).html'">저 장</button>
			</div>

		</div>


		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>


		<!-- 업로드 버튼 -->
		<script>

  
function DropFile(dropAreaId, fileListId,num) {
  console.log("txt",num)
  console.log('1243',dropAreaId)
  let dropArea = document.getElementById(dropAreaId);
  let fileList = document.getElementById(fileListId);

  function preventDefaults(e) {
    e.preventDefault();
    e.stopPropagation();
  }

  function highlight(e) {
    preventDefaults(e);
    dropArea.classList.add("highlight");
  }

  function unhighlight(e) {
    preventDefaults(e);
    dropArea.classList.remove("highlight");
  }

  // 파일 업로드
  // 상자안에 파일을 드래그해서 내려놓았을때 drop 이벤트가 발생
  // 그 이벤트 객체에서 files라는 배열을 가져올수있다
  //이 배열은 선택한 여러개의 파일 데이터를 가지고 있음

  function handleDrop(e) {
    unhighlight(e);
    let dt = e.dataTransfer;
    let files = dt.files;

    handleFiles(files);

    const fileList = document.getElementById(fileListId);
    if (fileList) {
      fileList.scrollTo({ top: fileList.scrollHeight });
    }
  }

  function handleFiles(files) {
    files = [...files];
    // files.forEach(uploadFile);
    files.forEach(previewFile);
  }

  function previewFile(file) {
    console.log(file);
    renderFile(file);
  }

// 이미지 미리보기 
//renderFile :  이미지를 만들어주는 함수

  function renderFile(file) {
    let reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onloadend = function () {
      
      let img = document.getElementsByClassName("preview")[0];
      console.log("이미지1",img)
      img.src = reader.result;
      img.style.display = "block";
    };
  }

  dropArea.addEventListener("dragenter", highlight, false);
  dropArea.addEventListener("dragover", highlight, false);
  dropArea.addEventListener("dragleave", unhighlight, false);
  dropArea.addEventListener("drop", handleDrop, false);

  return {
    handleFiles
  
  };
}

function DropFile2(dropAreaId, fileListId,num) {
  
  let dropArea = document.getElementById(dropAreaId);
  let fileList = document.getElementById(fileListId);

  function preventDefaults(e) {
    e.preventDefault();
    e.stopPropagation()
    
  }

  function highlight(e) {
    preventDefaults(e);
    dropArea.classList.add("highlight");
    
  }

  function unhighlight(e) {
    preventDefaults(e);
    dropArea.classList.remove("highlight");
  }

  // 파일 업로드
  // 상자안에 파일을 드래그해서 내려놓았을때 drop 이벤트가 발생
  // 그 이벤트 객체에서 files라는 배열을 가져올수있다
  //이 배열은 선택한 여러개의 파일 데이터를 가지고 있음

  function handleDrop(e) {
    unhighlight(e);
    let dt = e.dataTransfer;
    let files = dt.files;

    handleFiles(files);

    const fileList = document.getElementById(fileListId);
    if (fileList) {
      
      fileList.scrollTo({ top: fileList.scrollHeight });
    }
  }

  function handleFiles(files) {
    files = [...files];
    // files.forEach(uploadFile);
    files.forEach(previewFile);
    
    
  }

  function previewFile(file) {
    console.log(file);
    renderFile(file);
  }

// 이미지 미리보기 
//renderFile :  이미지를 만들어주는 함수

  function renderFile(file) {
    
    let reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onloadend = function () {
      
      
      let img = document.getElementsByClassName("preview2")[0];
      console.log("이미지2",img)
      img.src = reader.result;
      img.style.display = "block";
    };
  }

  dropArea.addEventListener("dragenter", highlight, false);
  dropArea.addEventListener("dragover", highlight, false);
  dropArea.addEventListener("dragleave", unhighlight, false);
  dropArea.addEventListener("drop", handleDrop, false);

  return {
    handleFiles
  
  };
}

const dropFile = new DropFile("drop-file", "files",0);
const dropFile2 = new DropFile2("drop-file2", "files",1);



    
</script>

<%@ include file="footer.jsp" %>
</body>
</html>