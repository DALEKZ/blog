package com.ms.mapper;

import java.util.List;

import com.ms.model.Admin;
import com.ms.model.Message;

public interface AdminMapper {
	public Admin getAdmin(String account);
	
	public List<Message> getMessage();
	
	public void changeState();
	
	public int getCount();

}
