$(document).on('click','#toastStart',function(){


    $.ajax({
        url: '/web/messageSend.do',
        type: 'post',
        data: $('#msgForm').serialize(),
        success: function(rs){
            alert("들어옴")
            alert(rs);
        },
        error: function(e){

        }
    })
    
    
    Swal.fire({
				//    position: 'top-end',
				icon : 'success',
				title : '메세지 전송 성공',
				showConfirmButton : false,
				timer : 1500
			})

})