package com.smhrd.domain;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
@Data	// 기본 메서드(Getter/Setter/toString) 생성
@AllArgsConstructor  //모든 필드를 요소로 갖는 생성자 생성
@NoArgsConstructor // 기본생성자
@RequiredArgsConstructor // 필요한 필드만 요소로 갖는 생성자 생성
public class BoardFind {

	// 약속 1. VO의 필드(변수)이름 == Table의 컬럼명 
	// 약속 2. 반! 드! 시! 기본생성자는 있어야 한다.
	
	// 글번호	
	private int find_seq;
	// 작성자
	@NonNull
	private String user_id;
	// 작성날짜
	@NonNull
	private String upload_date;
	// 이름
	@NonNull
	private String find_name;
	// 생년월일
	@NonNull
	private String find_birthdate;
	// 성별
	@NonNull
	private String find_gender;
	// 장애여부
	@NonNull
	private String find_handicaped;
	// 실종일자
	@NonNull
	private String missing_date;
	// 실종지역
	@NonNull
	private String missing_region;
	// 특징
	@NonNull
	private String find_feature;
	// 인상착의
	@NonNull
	private String find_look;
	// 설명
	@NonNull
	private String find_desc;
	private String real_face;
	private String deep_result;
	
	
	private int listSize = 3;
	//초기값으로 목록개수를 3으로 셋팅	
	private int rangeSize = 3;
	//초기값으로 페이지범위를 10으로 셋팅	
	private int page;	
	private int range;	
	private int listCnt;	
	private int pageCnt;	
	private int startPage;	
	private int startList;	
	private int endPage;	
	private boolean prev;	
	private boolean next;
	
	public void pageInfo(int page, int range, int listCnt) {
		this.page = page;		
		this.range = range;		
		this.listCnt = listCnt;				
		//전체 페이지수 		
		this.pageCnt = (int) Math.ceil(listCnt/listSize);				
		//시작 페이지		
		this.startPage = (range - 1) * rangeSize + 1 ;				
		//끝 페이지		
		this.endPage = range * rangeSize;						
		//게시판 시작번호		
		this.startList = (page - 1) * listSize;				
		//이전 버튼 상태		
		this.prev = range == 1 ? false : true;				
		//다음 버튼 상태		
		this.next = endPage > pageCnt ? false : true;		
		if (this.endPage > this.pageCnt) {			
			this.endPage = this.pageCnt;			
			this.next = false;		
			}	
		}
	



}
