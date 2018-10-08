package com.ms.model;

public class Message {
	int id;
	int state;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	String email;
	String name;
	String content;
	String date;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Message(int id, int state, String email, String name, String content, String date) {
		super();
		this.id = id;
		this.state = state;
		this.email = email;
		this.name = name;
		this.content = content;
		this.date = date;
	}
	public Message(){}
}
