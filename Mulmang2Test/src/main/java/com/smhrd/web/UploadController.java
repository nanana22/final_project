package com.smhrd.web;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.smhrd.domain.Face;
import com.smhrd.domain.User;
import com.smhrd.mapper.FaceMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j // 얘는 그냥 log 찍는 애
public class UploadController {
	 @Autowired
	 FaceMapper mapper;

	
	@GetMapping("/uploadForm")
	public void uploadForm() {
		System.out.println("1");
		log.info("upload form");
		System.out.println("2");
	}
	
	@PostMapping("/uploadFormAction")
	public String uploadFormPost(@RequestParam("uploadFile") MultipartFile multipartFile, Model model, HttpSession session) {

		// user_id 가져오기
		User user = (User)session.getAttribute("user");
		String user_id = user.getUser_id();
		
		System.out.println("3");
		// session.getServletContext() : 실제 실행되는 우리 프로젝트에 대한 정보를 가진 객체
		// .getRealPath("resources/saveImg") : 우리 프로젝트 파일 중에서 resources/saveImg 경로를 찾아서 주소를 String으로 리턴시켜줌
		String uploadFolder = session.getServletContext().getRealPath("resources/saveImg");
		log.info("-------------");
		log.info("경로 : ");
		log.info(uploadFolder);
			
		// 파일 이름과 크기 출력시키는 코드
		// log.info == System.out.println();
		log.info("-------------");
		log.info("Upload File Name: " +multipartFile.getOriginalFilename());
		log.info("Upload File Size: " +multipartFile.getSize());
		
		// 파일을 우리 폴더에 저장시키는 코드
		File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());	
		try {
			multipartFile.transferTo(saveFile);
		}	catch (Exception e) {
			log.error(e.getMessage());
		}//end catch
			
		// 파일 이름 꺼내기
		String real_face = multipartFile.getOriginalFilename();
		
		// 두 데이터를 vo로 묶기
		Face face = new Face(real_face, user_id);
		
		
		// db에 저장하는 메서드 사용
		mapper.boardFindInsert2(face);
		
		// 이것도 그냥 결과 보여줄려고 하는거니까 나중에 수정하세요
		model.addAttribute("face", face);
		
		return "test"; // 이건 결과 보여줄려고 하는거니까 나중에 수정할 것
		
		
		
	}
}
