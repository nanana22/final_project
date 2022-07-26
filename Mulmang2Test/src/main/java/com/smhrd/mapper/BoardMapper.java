package com.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;

import com.smhrd.domain.Board;

// 추상메소드만 가지는 interface로 구현
public interface BoardMapper{

	// 추상메소드
	// 태그에 주는 id ==메서드 이름
	public List<Board> boardList();
	
	public int boardInsert(Board vo);
	
	public Board boardContent(int idx);
	
	
	// insert / delete/ update -->int
	// xml 말고 어노테이션을 이용한 sql문 작성!!
	// 어노테이션 이름 == 사용하고자 하는 문장 이름
	
	
	// @Delete("SQL 쿼리")
	// 추상 메소드 <----mapping(일 대 일로 매칭)---> sql뭐리
	@Delete("DELETE FROM board WHERE idx = #{idx}")
	public int boardDelete(int idx);
	
	
	public int boardUpdate(Board vo);
	
	
	public int viewUpdate(Board vo);
	
	
	
}
