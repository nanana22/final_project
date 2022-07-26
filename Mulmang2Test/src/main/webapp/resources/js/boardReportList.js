//리스트
$(document).ready( () => { 

    // ajax통신, 글 데이터 가져오기(매개변수로 자바스크립트 객체를 받는다)
    $.ajax({
     url : 'boardReportList.do', // 어디로 요청을 보낼것인가?
     type : 'post', //get인지 post인지
     data : { 	//얘도 js객체형태로.. 보내줄 데이터 명시
     },
        //dataType : 'json',	// 응답받는 데이터가 어떤 형태인지명시
     success : function(res) {
        console.log(res);
        
        // table에 출력
        $('#child_list').html('');
        for(let i = 0; i < res.length; i+=2){
           tr = `
           <div class="container">
           <div class="row">
               <div class="col">
                   <div class="card mb-3" style="max-width: 500px;">
                       <div class="row g-0">
                       
                           <div class="col-md-4">
                           <a href="/web/boardReportView.do/${res[i].report_seq}">
                               <img
                                   src="${res[i].report_photo}"
                                   class="img-fluid rounded-start" alt="..."></a>
                           </div>
                           <div class="col-md-8">
                               <div class="card-body">
                                   <p class="card-text">이름 : ${res[i].person_name}</p>
                                   <p class="card-text">특징 : ${res[i].report_feature}</p>
                                   <p class="card-text">발견 지역 : ${res[i].report_region}</p>
                                   <p class="card-text">
                                       <small  id='date${res[i].report_seq}' class="text-muted">${res[i].upload_date}</small>
                                   </p>
                               </div>
                           </div>
                        
                       </div>
                   </div>
               </div>
               <div class="col">
                   <div class="card mb-3" style="max-width: 500px;">
                       <div class="row g-0">                            
                           <div class="col-md-4">
                           <a href="/web/boardReportView.do/${res[i+1].report_seq}">
                               <img
                                   src="${res[i+1].report_photo}"
                                   class="img-fluid rounded-start" alt="..."></a>
                           </div>
                           <div class="col-md-8">
                               <div class="card-body">
                                   <p class="card-text">이름 : ${res[i+1].person_name}</p>
                                   <p class="card-text">특징 : ${res[i+1].report_feature}</p>
                                   <p class="card-text">발견 지역 : ${res[i+1].report_region}</p>
                                   <p class="card-text">
                                       <small id='date${res[i+1].report_seq}' class="text-muted">${res[i+1].upload_date}</small>
                                   </p>
                               </div>
                           </div>
                           
                       </div>
                   </div>
               </div>
    
           </div>
       </div>
            `;
           
           $('#child_list').append(tr);
        }
        
        
        
     },
     error : function(e) {
                // 404, 405, 500 --> 요청 자체가 실패한 경우
                // e --> exception 어떤 에러인지가 담긴다
        alert('error');
     }
     
     
    });
    


    } )
    
    
    
    

   
   
      
       
   
   