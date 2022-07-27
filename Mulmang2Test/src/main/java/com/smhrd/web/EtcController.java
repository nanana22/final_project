package com.smhrd.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.domain.Print;

@Controller
public class EtcController {
	
	
	
	
	// 스티커 게시판으로 이동
	@RequestMapping("/helpFilter.do")
	public String helpFilter() {
		return "helpFilter";
	}
	
	
	// 전단지 1단계
	@RequestMapping("/helpPrintFirst.do")
	public String helpPrintFirst() {
		return "helpPrint_1";
	}
	
	// 전단지 2단계
	@RequestMapping("/helpPrintSecond.do")
	public String helpPrintSecond(Print vo, Model model) {
		System.out.println("들어왔음");
		model.addAttribute("print", vo);
		System.out.println(vo.getDate());
		return "helpPrint_2";
	}
	
	

}
