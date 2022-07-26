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

}
