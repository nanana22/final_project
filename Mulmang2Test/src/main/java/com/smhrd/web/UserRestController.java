package com.smhrd.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.mapper.UserMapper;

@RestController
public class UserRestController {
	
	@Autowired
	UserMapper mapper;
	
	
	@RequestMapping("/joinIdCheck")
	public boolean joinIdCheck(String user_id) {
		System.out.println("아이디체크");
		System.out.println(user_id);
		int cnt = mapper.userIdCheck(user_id);
		System.out.println(cnt);
		if(cnt != 0) {
			System.out.println("중복됨");
			boolean result = false;
			return result;
		}else {
			System.out.println("중복안됨");
			boolean result = true;
			return result;
		}
		
	}
}
