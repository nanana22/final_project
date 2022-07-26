package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.smhrd.domain.Board;
import com.smhrd.domain.User;
import com.smhrd.mapper.UserMapper;

@Controller //어노테이션
//이 파일이 알바생(POJO) 이다
public class UserController {
	// DI(Dependency Injection) 의존성 주입
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	UserMapper mapper;
	
	
	@RequestMapping("/join.do")	
	public String userloginpg() { ////메서드와 요청url을 매핑

		return "joinForm"; 
	}
	
	@RequestMapping("/userlog.do")	
	public String userlog() { ////메서드와 요청url을 매핑

		return "loginForm"; 
	}
	
	
	// 로그인 체크
	@RequestMapping("/loginCk.do")	
	public String userLoginCk(User us, HttpServletRequest request) {
		User usif = mapper.userLoginCk(us);
		if (usif == null) {
			System.out.println("로그인실패");
			return "loginForm";
		}else {
			//잠시 테스트로 수정함 -김훈겸
	        HttpSession session = request.getSession();
	        session.setAttribute("user", usif);
			return "find_write_1"; 			
		}
	}
	
	// 로그아웃
	@RequestMapping("/logOut.do")
	public String userLogOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		return "index";
	}
	
	// 회원가입
	@RequestMapping("/userJoin.do")
	public String userJoin(User us) {
		mapper.userJoin(us);
		
		return "joinSuccess";
	}
}
