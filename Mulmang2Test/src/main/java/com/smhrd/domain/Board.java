package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data  //기본 메소드(Getter/ Setter/toString) 생성
@AllArgsConstructor //모든 필드를 요소로 갖는 생성자 생성
@NoArgsConstructor //기본 생성자
@RequiredArgsConstructor //필요한 필드만 요소로 갖는 생성자
// 이게 모두 lombok 때문에 가능한 일이다~~~
public class Board {
	
	
	// 약속1. VO의 필드(변수)이름 == Table의 컬럼명
	// 약속2. 반드시 기본생성자는 있어야한다.
	
	// 글번호
	private int idx;
	// 제목
	@NonNull
	private String title;
	// 작성자
	@NonNull
	private String writer;
	// 내용
	@NonNull
	private String content;
	// 작성일
	private String indate;
	// 조회수
	private int count;
	
	
	
	
}
