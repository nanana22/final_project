package com.smhrd.mapper;

import java.util.List;

import com.smhrd.domain.BoardReport;

public interface BoardReportMapper {

	public List<BoardReport> boardReportList();
	
	public BoardReport boardReportView(int report_seq);
	
	public List<BoardReport> boardReportSearch(BoardReport vo);
	
}
