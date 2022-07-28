
// 안경 1 구현
    var canvas = new fabric.Canvas('c');
    var imgElement = document.getElementById('my-image-1');
    var imgInstance = new fabric.Image(imgElement, {                                                                                                                             
    left: 100,
    top: 50,
    angle: 0,
    opacity: 0.85
});

// 스티커 추가
function Add() {
    var imgElement =  document.getElementById('my-image1');
    
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






//업로드 버튼 클릭후 url 주소추가


var fileInput = document.getElementById("real-input");
  //값이 변경될때 호출 되는 이벤트 리스너
    fileInput.addEventListener('change',function(e){
    console.log(e.target.files)
    var file = e.target.files[0]; //선택된 파일
    var reader = new FileReader();
    reader.readAsDataURL(file); //파일을 읽는 메서드 
    // 수정해야하는 부분
    reader.onload = function(){
    var photoFrame = document.getElementById("c");
    photoFrame.style = `background : url(${reader.result}); background-repeat : no-repeat; background-position:center; weight: 600px; height: 600px; background-size: 100%`;
    photoFrame.className = "photoFrame";
    document.getElementById("pictures").appendChild(photoFrame);
    }
})
