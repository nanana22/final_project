<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="./resources/css/findWrite.css?ver1">
</head>
<body>
        
        <div class="container">
           <div class="row">
        <h4 class="mb-3">찾기 글쓰기</h4>
        
            <h7 class="'mb-3">1.기본 정보 입력  >  2.사진 업로드</h7>
            <hr class="my-4">
    </div>

            <div class="row">
                
                    <div class="col-sm-4">
                        <!-- 업로드 -->
                        

                        <form action="uploadFormAction" method="post" enctype="multipart/form-data">
                          <div class="contents">
                              <div class="upload-box">
                                <div id="drop-file" class="drag-file">
                                  
                                  <img src="https://img.icons8.com/pastel-glyph/2x/image-file.png" alt="파일 아이콘" class="image" >
                                  <p class="message">Drag files to upload</p>
                                  <img src="" alt="미리보기 이미지" class="preview">
                             
                              </div>
                                <label class="file-label" for="chooseFile">사진업로드</label>
                                <input class="file" id="chooseFile"  name='uploadFile' multiple type="file" onclick="getElementById('chooseFile').display = none"  onchange="dropFile.handleFiles(this.files)()" accept="image/png, image/jpeg, image/gif" > 
                              </div>
                             
                                 


                           
                            </div>
                        </form>
                      </div>
                      <div class="row">
                          <button type="button" class="btn btn-secondary" id="fnext1">이전</button>


                           <button type="button" class="btn btn-secondary" id="fnext">다음</button>

                       </div>      
          
           
        </div>



<!-- 
        <label className="input-file-button" for="input-file">
            업로드
          </label>
          <input type="file" id="input-file" style= display:"none;">
           -->


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


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
        document.getElementById("chooseFile").style.display="none";
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
        document.getElementById("chooseFile").style.display="none";
        
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
</body>
</html>