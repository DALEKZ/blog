package com.ms.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ms.mapper.AdminMapper;
import com.ms.model.Admin;
import com.ms.model.Message;

@Repository
public class AdminDao {
	
	@Autowired
	AdminMapper mapper;
	public Admin getAdmin(String account){
		return mapper.getAdmin(account);
	}
	
	public List<Message> getMessage(){
		return mapper.getMessage();
	}
	
	public void changeState(){
		mapper.changeState();
	}

	public int getCount(){
		return mapper.getCount();
	}

}
