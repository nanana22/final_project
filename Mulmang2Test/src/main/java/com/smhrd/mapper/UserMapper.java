package com.smhrd.mapper;

import com.smhrd.domain.User;

public interface UserMapper {
	
	public int userJoin(User us);
	
	public User userLoginCk(User us);
}
