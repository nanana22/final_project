package com.smhrd.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.smhrd.domain.Message;
import com.smhrd.mapper.MessageMapper;

@RestController //Ajax 요청을 전담해서 처리한 컨트롤러
public class MessageRestController {
	
	@Autowired
	MessageMapper mapper;
	
	
	
	
	// 메세지 전송
	@RequestMapping("/messageSend.do")
	public int msgSend(Message vo){
		System.out.println("메시지 전송 시도");
		System.out.println(vo);
		int num = mapper.messageSend(vo);		
		return num;
	}
	
	@RequestMapping("/messageReceive.do")
	public List<Message> msgReceive(String msg_receiver_id){
		List<Message> msgList = mapper.messageReceive(msg_receiver_id);
		System.out.println("받은메세지 >>"+msgList);
		return msgList;
	}

}
