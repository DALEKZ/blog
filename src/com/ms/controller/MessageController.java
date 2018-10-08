package com.ms.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ms.Dao.AdminDao;
import com.ms.Dao.CommentDao;
import com.ms.Dao.MessageDao;
import com.ms.model.Comment;
import com.ms.model.Message;

@Controller
@Transactional
@RequestMapping("/")

public class MessageController {

	@Autowired
	CommentDao dao;
	@Autowired
	AdminDao adao;
	@Autowired
	MessageDao mdao;
	@RequestMapping(value="/message",method=RequestMethod.GET)
	public ModelAndView getMessage(){
		ModelAndView mav = new ModelAndView("/unread");
		List<Comment> list = dao.getUnread();
		mav.addObject("list",list);
		dao.changeState();
		
		List<Message> mlist = adao.getMessage();
		mav.addObject("mlist",mlist);
		adao.changeState();
		return mav;
	}
	
	@RequestMapping(value="board",method=RequestMethod.POST)
	public ModelAndView leaveMessage(@RequestParam String message,@RequestParam String email,@RequestParam String name){ 
		ModelAndView mav = new ModelAndView();	
		SimpleDateFormat df = new SimpleDateFormat("HH:mm , yyyy/MM/dd ");
        String now = df.format(new Date());
		Message msg = new Message();
		msg.setContent(message);
		msg.setEmail(email);
		msg.setName(name);
		msg.setDate(now);
		mdao.addMessage(msg);
		mav.setViewName("redirect:/home");

		
		return mav;
	}
	

	
}
