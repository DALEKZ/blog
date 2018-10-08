package com.ms.test;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;

import com.ms.Dao.CommentDao;
import com.ms.model.Article;
import com.ms.model.Comment;
import com.ms.util.ParseMD5;


public class testMB {
	@Autowired
	static
	CommentDao dao;
	public static void main(String args[]){
		
	}
}
