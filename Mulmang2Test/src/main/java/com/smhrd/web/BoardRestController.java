package com.smhrd.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.domain.Board;
import com.smhrd.mapper.BoardMapper;

@RestController //Ajax 요청을 전담해서 처리한 컨트롤러
public class BoardRestController {
	// RestController에서는 @ResponseBody 를 안붙여도 된다
	
	// DI(Dependency Injection) 의존성 주입
	@Autowired // 메모리에 있는 객체를 끌어다가 집어넣어라
	BoardMapper mapper;
	
	// ajax 요청을 받아서 글데이터를 응답
	@RequestMapping("/boardList.do")
	public List<Board> boardList(){
		//@ResponseBody -> 이데이터를 응답해주겠다 라는뜻
		// 페이지 이동이 일어나지 않는다
		// 리턴해주는 데이터를 그대로 응답
		
		// 글 데이터 가져오기 (sql문 사용하는 거까진 기존과 다를게 없다)
		List<Board> list = mapper.boardList();
		
		// 기존에는 이걸 객체바인딩 했어야하는데 지금은 필요없어 왜? ajax는 특정한 응답만 돌려받으면 되기 때문!
		// 여기서 그 응답은 list!!
		// 엥 근데 보드리스트로 이동하려고 하는데여? -> 마즘 return 해주는 이유는 '페이지이동'이기때문~
		// ajax는 서버랑 데이터만 주고받음 -> 페이지이동을 받아들이면 에러가 난다.

		
		// jackson databind 라이브러리로 인해
		// 객체를 리턴 --> json데이터로 변환
		return list;
	}
	
	
	
	
	// ajax 요청을 받는 Controller
	@RequestMapping("/viewUpdate.do")
	public int viewUpdate(Board vo) {
		
		// 조회수 수정
		int cnt = mapper.viewUpdate(vo);
		
		// 성공 or 실패 리턴
		return cnt;
	}

}
