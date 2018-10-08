package com.ms.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ms.mapper.ArticleMapper;
import com.ms.model.Article;
@Repository
public class ArticleDao {

	@Autowired
	 ArticleMapper mapper;
	
	public List<Article> getAll(){
		return mapper.getAll();
	}
	
	public Article getArtById(int id){
		return mapper.getArtById(id);
	}
	
	public void add(Article art){
		mapper.add(art);
	}
	
	public void delete(int id){
		mapper.delete(id);
	}
	
	public void update(Article art){
		mapper.update(art);
	}
	
	public List<Article> getCategroy(String cag){
		return mapper.getCategroy(cag);
	}
	
	public void addClick(int id){
		mapper.addClick(id);
	}
	
	public List<Article> getPopular(){
		return mapper.getPopular();
	}
	
	public int getNum(String cate){
		return mapper.getNum(cate);
	}
	
	public int getClickstNum(String cate){
		return mapper.getClicks(cate);
	}
}
