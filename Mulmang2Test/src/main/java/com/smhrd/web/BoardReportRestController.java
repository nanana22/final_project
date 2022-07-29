package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import com.smhrd.domain.BoardReport;
import com.smhrd.domain.Pagination;
import com.smhrd.domain.Pagination2;
import com.smhrd.mapper.BoardReportMapper;

@RestController
public class BoardReportRestController {
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	BoardReportMapper mapper;
	
	// ajax로 리스트 뽑아오기
	@RequestMapping("/boardReportList.do")
	public List<BoardReport> boardReportList(Model model , HttpServletRequest request){
		System.out.println("ajax로 보낼 컨트롤러 실행");
		HttpSession session = request.getSession();
		
		//Pagination 객체생성
		Pagination2 pagination = (Pagination2)session.getAttribute("pagination");
		System.out.println("rest paginatin >> " +pagination);
//		pagination.pageInfo(page, range, listCnt);
//		System.out.println("pagination >> " + pagination);
//		model.addAttribute("pagination", pagination);
		
		List<BoardReport> list = (List<BoardReport>)session.getAttribute("rptList");
		System.out.println("rest list >> " + list);
		
		return list;
	}
	
	
//	@RequestMapping("/boardReportSearch.do")
//	public List<BoardReport> boardReportSearch(BoardReport vo){
//		System.out.println("넘긴값: " + vo);
//		List<BoardReport> list = mapper.boardReportSearch(vo);
//		System.out.println("검색결과" + list);
//		return list;
//	}
}
