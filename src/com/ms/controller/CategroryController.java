package com.ms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ms.Dao.ArticleDao;
import com.ms.Dao.CommentDao;
import com.ms.model.Article;

@Controller
@Transactional
public class CategroryController {
	
	@Autowired
	ArticleDao dao;
	@Autowired
	CommentDao cdao;
	
	@RequestMapping(value="/{categroy}",method=RequestMethod.GET)
	public ModelAndView getCate(@PathVariable String categroy){ 
		ModelAndView mav = new ModelAndView("/Home");
		List<Article> list = dao.getCategroy(categroy);
		
		mav.addObject("list",list);	
		int[] count = {dao.getCategroy("algorithm").size(),dao.getCategroy("resource").size(),dao.getCategroy("development").size()
				,dao.getCategroy("mylife").size()};
		mav.addObject("count",count);
		List<Article> popular = dao.getPopular();
		mav.addObject("popular",popular);
		return mav;
	}

}
