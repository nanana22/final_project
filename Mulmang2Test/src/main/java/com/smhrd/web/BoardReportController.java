package com.smhrd.web;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.domain.BoardReport;
import com.smhrd.domain.Pagination2;
import com.smhrd.domain.User;
import com.smhrd.mapper.BoardReportMapper;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class BoardReportController {
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	BoardReportMapper mapper;
	
	//reportList jsp로이동
//	@RequestMapping("/reportList.do")
//	public String reportList() {
//		return "reportList";
//	}
	
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
	@PostMapping("/reportWrite.do")
//	@RequestMapping("/reportWrite.do")
	public String reportWrite( 
			@RequestParam("reportPhoto") MultipartFile multipartFile, HttpSession session, 
			HttpServletRequest request, Model model) {
		System.out.println("글 작성 시도");
		
		String user_id = (String)request.getParameter("user_id");
		System.out.println(user_id);
		String person_name = (String)request.getParameter("person_name");
		System.out.println(person_name);
		String gender = (String)request.getParameter("gender");
		System.out.println(gender);
		String report_date = (String)request.getParameter("report_date");
		System.out.println(report_date);
		String report_region = (String)request.getParameter("report_region");
		System.out.println(report_region);
		String report_feature = (String)request.getParameter("report_feature");
		System.out.println(report_feature);
		String report_look = (String)request.getParameter("report_look");
		System.out.println(report_look);
		String report_desc = (String)request.getParameter("report_desc");
		System.out.println(report_desc);
		
		
//		String uploadFolder = session.getServletContext().getRealPath("resources/saveImg");
		String uploadFolder = ("C:\\Users\\smhrd\\git\\final_project\\Mulmang2Test\\src\\main\\webapp\\resources\\saveImg");
		
		log.info("-------------");
		log.info("경로 : ");
		log.info(uploadFolder);
			
		// 파일 이름과 크기 출력시키는 코드
		// log.info == System.out.println();
		log.info("-------------");
		log.info("Upload File Name: " +multipartFile.getOriginalFilename());
		log.info("Upload File Size: " +multipartFile.getSize());
		
		File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
		try {
			multipartFile.transferTo(saveFile);
		}	catch (Exception e) {
			log.error(e.getMessage());
		}
		
		String report_photo = "./resources/saveImg/";
		report_photo += multipartFile.getOriginalFilename();
		//String report_photo = multipartFile.getOriginalFilename();
		System.out.println(report_photo);
		
		BoardReport vo = new BoardReport(user_id, person_name, gender, report_date, report_region, report_feature, report_look, report_desc, report_photo);

		
		System.out.println("저장될 데이터 >> " + vo);
		System.out.println("사진 주소 >> " + report_photo);
		
		mapper.boardReportWrite(vo);
		BoardReport seq = mapper.boardReportSeq(vo);
		
//		model.addAttribute("aa", seq.getReport_seq());
		
		return "redirect:/boardReportView.do/"+ seq.getReport_seq();
		//return "redirect:/reportImage";
	}
	
	
	
//	// 이미지 업로드
//	@RequestMapping("/reportImage")
//	public String reportImage(HttpServletRequest request) {
//		System.out.println("새로고침 들어옴");
//		int seq = (int) request.getAttribute("aa");
//		System.out.println("seq >> " + seq);
//		return "redirect:/boardReportView.do/"+ seq;
//	}
//	
	
	//민지 페이징
	@RequestMapping("/reportList.do")
	public String getBoardList(Model model , HttpServletRequest request,
			@RequestParam(required = false, defaultValue = "1") int page, 
			@RequestParam(required = false, defaultValue = "1") int range) throws Exception{
		HttpSession session = request.getSession();
		
		//전체 게시글 개수		
		int listCnt = mapper.boardReportCnt();
		
		//Pagination 객체생성
		Pagination2 pagination = new Pagination2();
		pagination.pageInfo(page, range, listCnt);
		System.out.println("con pagination >> " + pagination);
		session.setAttribute("pagination", pagination);
		
		List<BoardReport> rptList = mapper.boardReportList(pagination);
		session.setAttribute("rptList", rptList);			
		System.out.println("con >> " + rptList);
		
		return "reportList";
	}

}
