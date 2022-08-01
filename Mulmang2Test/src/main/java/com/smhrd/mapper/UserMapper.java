package com.smhrd.mapper;

import com.smhrd.domain.User;

public interface UserMapper {
	
	public int userJoin(User us);
	
	public User userLoginCk(User us);
	
	// 아이디 중복 체크
	public Integer userIdCheck(String user_id);
}
