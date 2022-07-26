$(document).on('click','#onLogMsg',function(){
		
    alert( $('#sender').val())
    alert("안뇽")
    $.ajax({
        url: '/web/messageReceive.do',
        type: 'post',
        data:{
            "msg_receiver_id" : $('#sender').val()
        },
        success: function(res){
            
            alert( '들어옴')
            $('#msgList').html('');
            for(let i =0; i<res.length; i++){
                tr=`<tr>
                <th scope="row">${i+1}</th>
                                         
                <td> 
                  <p class="accordion-header" id="flush-heading${i+1}" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse${i+1}" aria-expanded="false" aria-controls="flush-collapse${i+1}">
                   
                  ${res[i].msg_title}
                
                  </p>
                  <div id="flush-collapse${i+1}" class="accordion-collapse collapse"  aria-labelledby="flush-heading${i+1}" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">${res[i].msg_content}</div>
                  
                </div></td>
                <td>${res[i].msg_sender_id}</td>
                <td>${res[i].msg_date}</td>
                
                </tr>`;
                $('#msgList').append(tr);
            } 
        },
        error: function(e){
            alert('error');
        }
    })
    
})
