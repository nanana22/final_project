package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import com.smhrd.domain.BoardReport;
import com.smhrd.mapper.BoardReportMapper;

@RestController
public class BoardReportRestController {
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	BoardReportMapper mapper;
	
	// ajax로 리스트 뽑아오기
	@RequestMapping("/boardReportList.do")
	public List<BoardReport> boardReportList(){
		
		List<BoardReport> reportList = mapper.boardReportList();
		return reportList;
	}
	
	
//	@RequestMapping("/boardReportSearch.do")
//	public List<BoardReport> boardReportSearch(BoardReport vo){
//		System.out.println("넘긴값: " + vo);
//		List<BoardReport> list = mapper.boardReportSearch(vo);
//		System.out.println("검색결과" + list);
//		return list;
//	}
}
