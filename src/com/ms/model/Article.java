package com.ms.model;

import java.sql.Date;

public class Article {
	int id;
	Date date;
	String content;
	String title;
	int click;
	int cNum;
	public Article(int id, String content, String title ,Date date,int click,int cNum) {
		this.cNum = cNum;
		this.id = id;
		this.date = date;
		this.content = content;
		this.title = title;
		this.click = click;
	}
	
	public int getcNum() {
		return cNum;
	}

	public void setcNum(int cNum) {
		this.cNum = cNum;
	}

	public int getClick() {
		return click;
	}

	public void setClick(int click) {
		this.click = click;
	}

	public Article(){}
	

	public Article(int id, String title , String content) {
		
		this.id = id;
		this.content = content;
		this.title = title;
	}
	

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	
	
}
