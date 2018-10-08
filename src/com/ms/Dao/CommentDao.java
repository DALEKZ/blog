package com.ms.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ms.mapper.CommentMapper;
import com.ms.model.Comment;

@Repository
public class CommentDao {

	@Autowired
	CommentMapper mapper;
	
	public List<Comment> getCommentsByAid(int aid){
		return mapper.getCommentsByaId(aid);	
	}
	
	public void add(Comment comment){
	    mapper.add(comment);
	}
	
	public int getCount(){
		return mapper.getCount();
	}
	
	public List<Comment> getUnread(){
		return mapper.getUnread();
	}
	
	public void changeState(){
		mapper.changeState();
	}
	
	public int getNum(int id){
		return mapper.getNum(id);
	}
}
