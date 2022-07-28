package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.cj.Session;
import com.smhrd.domain.BoardReport;
import com.smhrd.domain.User;
import com.smhrd.mapper.BoardReportMapper;

@Controller
public class BoardReportController {
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	BoardReportMapper mapper;
	
	//reportList jsp로이동
	@RequestMapping("/reportList.do")
	public String reportList() {
		return "reportList";
	}
	
	// 상세페이지
	@RequestMapping("boardReportView.do/{report_seq}")
	public String boardReportView(Model model, @PathVariable int report_seq) {
		BoardReport vo = mapper.boardReportView(report_seq);

		//객체바인딩
		model.addAttribute("rptView", vo);
		return "reportView";
	}
	
	// 검색 구현
	@RequestMapping("/reportSearch.do")
	public String reportSearchList(BoardReport vo, HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println("검색한 성별 >> " + vo.getGender());
		System.out.println("검색한 지역 >> " + vo.getReport_region());
		List<BoardReport> list = mapper.boardReportSearch(vo);
		session.setAttribute("searchList", list);
		session.setAttribute("keyword", vo);
		System.out.println("검색결과 >> : " + list);
		return "redirect:/searchResult.do";

	}
	
	// 검색 결과 페이지
	@RequestMapping("/searchResult.do")
	public String searchList() {
		return "reportSearchList";
	}
	
	// reportWrite.jsp로 이동
	@RequestMapping("/reportForm.do")
	public String reportForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		if(user != null) {
			System.out.println("로그인 했음");
			return "reportWrite";

		}else {
			System.out.println("로그인 기록 없음");
			return "redirect:/userlog.do";
		}
	}
	
	// 글 작성
	@RequestMapping("/reportWrite.do")
	public String reportWrite(BoardReport vo) {
		System.out.println("글 작성 시도");
		System.out.println(vo);
		mapper.boardReportWrite(vo);
		BoardReport seq = mapper.boardReportSeq(vo);
		System.out.println(seq);
		System.out.println(seq.getReport_seq());
		return "redirect:/boardReportView.do/"+ seq.getReport_seq();
	}

}
