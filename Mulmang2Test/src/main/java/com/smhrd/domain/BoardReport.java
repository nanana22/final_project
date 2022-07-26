package com.smhrd.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;


@Data  //기본 메소드(Getter/ Setter/toString) 생성
@AllArgsConstructor //모든 필드를 요소로 갖는 생성자 생성
@NoArgsConstructor //기본 생성자
@RequiredArgsConstructor
public class BoardReport {
	
	private int report_seq;
	private String user_id;
	private String upload_date;
	@NonNull
	private String person_name;
	private String gender;
	private String report_date;
	private String report_region;
	@NonNull
	private String report_feature;
	private String report_look;
	@NonNull
	private String report_desc;
	private String report_photo;
}
