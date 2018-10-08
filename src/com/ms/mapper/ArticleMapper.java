package com.ms.mapper;

import java.util.List;

import com.ms.model.Article;

public interface ArticleMapper {
	
	List<Article> getAll();
	Article getArtById(int id);
	List<Article> getCategroy(String cag);
	void delete(int id);
	void add(Article art);
	void update(Article art);
	void addClick(int id);
	List<Article> getPopular();
	
	int getNum(String cate);
	int getClicks(String cate);
}
