package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data  //기본 메소드(Getter/ Setter/toString) 생성
@AllArgsConstructor //모든 필드를 요소로 갖는 생성자 생성
@NoArgsConstructor //기본 생성자
public class Deep {

	private String deep_seq;
	private int find_seq;
	private String deep_result;
	private String deep_date;
}
