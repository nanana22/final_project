package com.smhrd.mapper;

import java.util.List;

import com.smhrd.domain.BoardReport;

public interface BoardReportMapper {

	// 글 목록
	public List<BoardReport> boardReportList();
	
	// 글 상세
	public BoardReport boardReportView(int report_seq);
	
	// 글 검색
	public List<BoardReport> boardReportSearch(BoardReport vo);
	
	// 글 작성
	public int boardReportWrite(BoardReport vo);
	
	// 글 번호
	public BoardReport boardReportSeq(BoardReport vo);
}
