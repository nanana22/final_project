package com.smhrd.mapper;

import java.util.List;

import com.smhrd.domain.BoardFind;
import com.smhrd.domain.BoardReport;
import com.smhrd.domain.Pagination;
import com.smhrd.domain.Pagination2;

public interface BoardReportMapper {

	// 글 목록
	//public List<BoardReport> boardReportList();
	
	// 글 상세
	public BoardReport boardReportView(int report_seq);
	
	// 글 검색
	public List<BoardReport> boardReportSearch(BoardReport vo);
	
	// 글 작성
	public int boardReportWrite(BoardReport vo);
	
	// 글 번호
	public BoardReport boardReportSeq(BoardReport vo);
	
	// 목록 조회
	public List<BoardReport> boardReportList(Pagination2 vo);
	
	// 총 게시글 개수 확인
	public int boardReportCnt() throws Exception;
	
	
}
