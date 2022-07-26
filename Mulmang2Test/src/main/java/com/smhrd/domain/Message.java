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
public class Message {
	private int msg_seq;
	@NonNull
	private String msg_title;
	@NonNull
	private String msg_content;
	private String msg_date;
	@NonNull
	private String msg_sender_id;
	@NonNull
	private String msg_receiver_id;
}
