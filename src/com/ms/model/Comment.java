package com.ms.model;

import java.sql.Date;

public class Comment {
	int aid;
	int cid;
	String email;
	String name;
	String content;
	int state;
	String date;
	public Comment(int aid,int cid, String email, String name, String content,String date) {
		
		this.cid = cid;
		this.aid = aid;
		this.email = email;
		this.name = name;
		this.content = content;
		this.date = date;
	}
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Comment(){}
	
	
	
}
