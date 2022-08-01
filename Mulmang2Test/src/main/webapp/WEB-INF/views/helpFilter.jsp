<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스티커 사진</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet" href="/web/resources/css/helpFilter.css?ver3">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/521/fabric.min.js"></script>




</head>
<body>
 	

	<div class="container" >
		<div class="row" id="headFIL">
		<h3><a id="HOMEB" href="/web/">HOME</a>   >   인상착의변환</h3>
			

			<h7 class="'mb-3">안경과 마스크를 추가해 다양한모습을 예측할수있게 해줍니다</h7>
			<!-- <h7 class="'mb-3">1. 파일 선택 > 2. 스티커 선택</h7> -->
			<hr class="my-4">
		</div>

		<div class="row row1">

			<!-- 여기에 캔버스 -->

			<div class="img_upload">
				<input type="file" id="real-input" class="input-btn" accept="img/*"
					required multiple>
			</div>
			<canvas id="c" width="600" height="600"
				style="border: 1px solid #999"></canvas>



		</div>

		<div class="row row2">
			<div class="tabb">
				<!-- <label class="file-label" for="chooseFile">사진업로드</label>
            <input class="file" id="chooseFile" type="file" multiple> -->

				
				<button  type="submit" class="btn btn-secondary bts2"
					onClick="location.href='/web/helpPrintFirst.do'">
					<p>전단지 제작</p>
				</button>
			</div>
		</div>

		<!-- <div class="col-sm-4">
            <div class="div filterA" >
                <p>스티커를 통해 인상착의를 변환시키고 저장해보세요 </p>
                <p> < 사용방법 ></p>
                <p>1. 파일을 업로드 한다</p>
                <p>2. 스티커를 찾아서 붙인다</p>
        
            </div> 
        </div>
         -->


		<nav class="tab tt">
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<button class="nav-link active" id="nav-home-tab"
					data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
					role="tab" aria-controls="nav-home" aria-selected="true">마스크스티커</button>
				<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
					data-bs-target="#nav-profile" type="button" role="tab"
					aria-controls="nav-profile" aria-selected="false">안경과 모자</button>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab">
				<div class="mask">
					<img class="g1" src="/web/resources/img/helpFilter/마스크2.jpg" id="mmy-image1"> <img
						class="g1" src="/web/resources/img/helpFilter/마스크3.png" id="mmy-image2" > <img
						class="g1" src="/web/resources/img/helpFilter/마스크444.png" id="mmy-image3" onclick="Add3()"> <img
						class="g1" src="/web/resources/img/helpFilter/마스크5.jfif" id="mmy-image4" > <img
						class="g1" src="/web/resources/img/helpFilter/마스크66.png" id="mmy-image5" > <img
						class="g1" src="/web/resources/img/helpFilter/마스크7.jpg" id="mmy-image6"> <img
						class="g1" src="/web/resources/img/helpFilter/마스크8.jpg" id="mmy-image7"> <img
						class="g1" src="/web/resources/img/helpFilter/마스크9.jpg" id="mmy-image8">
				</div>
			</div>


			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab">


				<div class="cap">
					<img src="/web/resources/img/helpFilter/안경2.png" id="my-image1" onclick="Add()"> <img
						src="/web/resources/img/helpFilter/안경2.webp" id="my-image2" onclick="Add2()"> <img src="/web/resources/img/helpFilter/안경4.png"
						id="my-image3"> <img src="/web/resources/img/helpFilter/모자.jpg" id="my-image4">
					<img src="/web/resources/img/helpFilter/모자2.webp" id="my-image5"> <img
						src="/web/resources/img/helpFilter/모자3.jpg" id="my-image6">
				</div>
			</div>
		</div>
	</div>













	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>



	<!-- 이게 머냐?  캔버스관련임 -->

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<script type="text/javascript" src="resources/js/helpFilter.js"></script>
<script>	
	
// 안경 2 구현

function Add2() {
    var imgElement =  document.getElementById('mmy-image3');
    
    var imgInstance = new fabric.Image(imgElement, {                                                                                                                             
    left: 100,
    top: 50,
    angle: 0,
    opacity: 0.85
})


    canvas.add(imgInstance);
    canvas.setActiveObject(imgInstance);
}

canvas.add(imgInstance);


// 마스크 스티커 추가
function Add3() {
    var imgElement =  document.getElementById('mmy-image3');
    
    var imgInstance = new fabric.Image(imgElement, {                                                                                                                             
    left: 100,
    top: 50,
    angle: 0,
    opacity: 0.85
})


    canvas.add(imgInstance);
    canvas.setActiveObject(imgInstance);
}

canvas.add(imgInstance);

</script>
	
</body>
</html>