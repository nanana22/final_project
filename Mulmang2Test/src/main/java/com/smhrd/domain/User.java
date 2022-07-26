package com.smhrd.domain;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data  //기본 메소드(Getter/ Setter/toString) 생성
@AllArgsConstructor //모든 필드를 요소로 갖는 생성자 생성
@NoArgsConstructor //기본 생성자
public class User {
	private String user_nick;
	private String user_id;
	private String user_pw;
	private Timestamp user_date;
	private String user_tel;
	private int user_type;
}
