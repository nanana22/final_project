$(document).ready( () => {
    $.ajax({
        url : 'boardFindList.do', 
        type : 'post',
        dataType : 'json',
        success : function(res) {
            
            // table에 출력
            $('#child_list').html('');
            for(let i = 0; i < res.length; i++){
            tr = `    <div class="row">
            
            
            <div class="col-sm-4"><a href="/web/boardFindView.do/${res[i].find_seq}">
                <img src="${res[i].real_face}" class="card-img-top" alt="..."></a>
            </div>
            <div class="col-sm-4"><a href="/web/boardFindView.do/${res[i].find_seq}">
                <img src="${res[i].deep_result}" class="card-img-top" alt="..."></a>
            </div>
            
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body text-center" style="height: 400px;">
                        <br>
                        <br>
                        <h5 class="card-title">${res[i].find_name}</h5>
                        <br>
                        <h6 class="card-subtitle mb-2 text-muted">실종일자 : ${res[i].missing_date}</h6>
        
                        <h6 class="card-subtitle mb-2 text-muted">실종지역 : ${res[i].missing_region}</h6>
        
        
        
                    </div>
                </div>
            </div>
        </div>
        <br> <br>
        `;
            
            $('#child_list').append(tr);
            }
            
            
            
        },
        error : function(e) {
            alert('error');
        }
        
        
    });
    


    } )












