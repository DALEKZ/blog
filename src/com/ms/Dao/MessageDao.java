package com.ms.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ms.mapper.AdminMapper;
import com.ms.mapper.MessageMapper;
import com.ms.model.Message;

@Repository
public class MessageDao {
	@Autowired
	MessageMapper mapper;
	
	public void addMessage(Message msg){
		mapper.addMessage(msg);
	}
}
