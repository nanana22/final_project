package com.smhrd.mapper;

import java.util.List;

import com.smhrd.domain.Message;

public interface MessageMapper {
	
	
	public int messageSend(Message vo);
	
	public List<Message> messageReceive(String msg_sender_id);

}
