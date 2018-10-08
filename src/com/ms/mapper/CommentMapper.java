package com.ms.mapper;

import java.util.List;

import com.ms.model.Comment;

public interface CommentMapper {

	List<Comment> getUnread();
	List<Comment> getCommentsByaId(int aid);	
	void add(Comment comment);	
	void delete(int cid);
	int getCount();
	int getNum(int id);
	void changeState();
	//int getCount();
	//only me can 尝试在页面上直接回复至对方邮件？？or 他人的回复直接回复到被回复者邮箱
	//void reply();
	
}
