package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.domain.Board;
import com.smhrd.mapper.BoardMapper;

@Controller //어노테이션
// 이 파일이 알바생(POJO) 이다
public class BoardController {

	// DI(Dependency Injection) 의존성 주입
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	BoardMapper mapper;
	
	//base jsp로이동
//	@RequestMapping("/")
//	public String base() {
//		return "base";
//	}
	

}
