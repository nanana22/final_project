	
	let Search_List = "";

		
		alert('더헉')
	    $("#child_list").hide();
		Search_List += '<c:forEach var="u" items="${list}"'
	    Search_List += '<div class="container">'
	    Search_List += '<div class="row">'
	    Search_List += '<div class="col">'
	    Search_List += '<div class="card mb-3" style="max-width: 500px;">'
	    Search_List += '<div class="row g-0">'
	    Search_List += '<div class="col-md-4">'
	    Search_List += '<a href="/web/boardReportView.do/<c:out value="${u.report_seq}"/>">'
	    Search_List += '<img src="${list[i].report_photo}" class="img-fluid rounded-start" alt="..."></a>'
	    Search_List += '</div>'
	    Search_List += '<div class="col-md-8">'
	    Search_List += '<div class="card-body">'
	    Search_List += '<h5 class="card-title">이름 : <%=br.getPerson_name()%></h5>'
	    Search_List += '<p class="card-text">특징 : <%=br.getReport_feature()%></p>'
	    Search_List += '<p class="card-text">발견 지역 : <%=br.getReport_region()%></p>'
	    Search_List += '<p class="card-text">'
	    Search_List += '<small id="date<%=br.getReport_seq()%>" class="text-muted"><%=br.getReport_date()%></small>'
	    Search_List += '</p>'
	    Search_List += '</div>'
	    Search_List += '</div>'
	    Search_List += '</div>'
	    Search_List += '</div>'
	    Search_List += '</div>'
	    Search_List += '</div>'
	    Search_List += '</div>'
		$('#search_list').html(Search_List);
		alert('더헉')


	