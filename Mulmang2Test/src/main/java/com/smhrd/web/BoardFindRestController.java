package com.smhrd.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.domain.BoardFind;
import com.smhrd.mapper.BoardFindMapper;

@RestController
public class BoardFindRestController {

	
	@Autowired
	BoardFindMapper mapper;
	
	//리스트
	@RequestMapping("/boardFindList.do")
	public List<BoardFind> boardFindList() {
		System.out.println("컨트롤러 들옴!");
		List<BoardFind> findList = mapper.boardFindList();
		System.out.println(findList);
		return findList;
	}
	
}
