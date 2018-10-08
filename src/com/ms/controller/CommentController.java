package com.ms.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ms.Dao.ArticleDao;
import com.ms.Dao.CommentDao;
import com.ms.model.Comment;

@Controller
@Transactional
public class CommentController {
	@Autowired
	 CommentDao dao;
	
	@RequestMapping(value="Article/{id}",method=RequestMethod.POST)
	public ModelAndView add(@PathVariable int id,@RequestParam String name,
			@RequestParam String email,@RequestParam String content){

		ModelAndView mav = new ModelAndView();
		Comment comment = new Comment();
		SimpleDateFormat df = new SimpleDateFormat("HH:mm , yyyy/MM/dd ");
        String now = df.format(new Date());
		comment.setAid(id);
		comment.setDate(now);
		comment.setContent(content);
		comment.setEmail(email);
		comment.setName(name);
		dao.add(comment);
		mav.setViewName("redirect:/Article/{id}");
		
		return mav;
	}

}
