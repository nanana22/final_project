		// 페이지가 열릴때, 실행
		// $(document).ready( function(){})
		// (x) => lamda식이라고 불러 -> function(x)
   $(document).ready( () => { 
      
      // ajax통신, 글 데이터 가져오기(매개변수로 자바스크립트 객체를 받는다)
      $.ajax({
         url : 'boardList.do', // 어디로 요청을 보낼것인가?
         type : 'post', //get인지 post인지
         data : { 	//얘도 js객체형태로.. 보내줄 데이터 명시
					// key(input태그의 name) : value 
					// key는 문자열형태로 ''안에 넣는게 좋다! 이유 -> 구분하려고!
         },
        	//dataType : 'json',	// 응답받는 데이터가 어떤 형태인지명시
         success : function(res) {
					// 요청이 성공했을 때 실행되는 Call back 함수
					// 이때 여기에 들어갈 res(response, 매개변수)값이 정말 중요하다!!
					// res => 응답받는 데이터가 담기는 변수
            console.log(res);
            
            // table에 출력
            // 출력 대상 선택
            // $('선택자').html('코드') : 안에 있는 코드 덮어쓰끼
            // $('선택자').after('코드') : 태그 바로 뒤에
            // $('선택자').before('코드') : 태그 바로 앞에
            // $('선택자').append('코드') : 태그 안에 누적
            $('#tbody').html('');
            for(let i = 0; i < res.length; i++){
               // `` 따옴표 내에서 EL표기법을 사용할 수 있으나 jsp의 el표기법과 겹쳐서 jsp에서는 사용하면 안된다(thymeleaf)
               tr = `
               <tr>
                  <td>${res[i].idx}</td>
                  <td id='title${res[i].idx}open'><a href='javascript:open(${res[i].idx})'>${res[i].title}</a></td>
                  <td>${res[i].writer}</td>
                  <td>${res[i].indate}</td>
                  <td id="count${res[i].idx}">${res[i].count}</td>      
                </tr>
                
                <tr id="board${res[i].idx}" style="display: none;">
                	<td colspan="5">
                		<textarea rows="5" class="form-control">${res[i].content}</textarea>
                	</td>
                </tr>
                `;
               
               $('#tbody').append(tr);
            }
            
            
            
         },
         error : function(e) {
					// 404, 405, 500 --> 요청 자체가 실패한 경우
					// e --> exception 어떤 에러인지가 담긴다
            alert('error');
         }
         
         
      });
      
   } )
   
   // =====================ajax===============================


  
   //res 는 못써 왜냐??? 지역변수임 ㅋㅋ
   function open(idx){
      // 조회수 업데이트 하기
      // 태그 안에 있는 값을 꺼내오기
      // .html() : 닫는 태그가 있는 경우 사용
      // .val() : 닫는 태그가 없는 경우 사용

      let count = Number($('#count'+idx).html());
      $.ajax({
         url: 'viewUpdate.do',
         type: 'post',
         data: {
            'idx': idx,
            'count': count + 1
         },
         success: function(res){
            // 기존에 있던 조회수를 바꿔줘야함
            $('#count' + idx).html(count+1)
         },
         error: function(e){ alert('error!')}


      });






      // $('선택자').css('스타일이름') : 해당하는 스타일 값을 리턴
      // $('선택자').css('스타일이름','적용값')  : css옵션을 수정시켜주는 함수
      $('#board' + idx).css('display', 'table-row');
      $('#title' + idx +'open').prop('id','#title' + idx +'close');
      $('#title' + idx +'open').prop('href','javascript:close'+idx);
   }

   function close(idx){
      $('#board' + idx).css('display', 'none');
      $('#title' + idx +'open').prop('id','#title' + idx +'open');
      
   }
  