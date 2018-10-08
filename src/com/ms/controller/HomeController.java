package com.ms.controller;

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
import com.ms.model.Article;
import com.ms.model.Comment;
import com.ms.model.Message;

@Controller
@Transactional

public class HomeController {
	@Autowired
	ArticleDao dao;
	@Autowired
	CommentDao cdao;
	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public ModelAndView getAll(){ 
		ModelAndView mav = new ModelAndView("/Home");
		List<Article> list = dao.getAll();
		for(int i=0;i<list.size();i++){
			int num = cdao.getNum(list.get(i).getId());
			list.get(i).setcNum(num);
		}
		mav.addObject("list",list);	
		int[] count = {dao.getCategroy("algorithm").size(),dao.getCategroy("resource").size(),dao.getCategroy("development").size()
					,dao.getCategroy("mylife").size()};
		mav.addObject("count",count);
		
		List<Article> popular = getPopular();
		mav.addObject("popular",popular);
		return mav;
	}
	
	@RequestMapping(value="Article/{id}",method=RequestMethod.GET)
	public ModelAndView getArticle(@PathVariable int id){
		ModelAndView mav = new ModelAndView("/Article");
		dao.addClick(id);
		Article art = dao.getArtById(id);
		mav.addObject("article", art);
		List<Comment> list = cdao.getCommentsByAid(id);
		mav.addObject("list",list);		
		int[] count = {dao.getCategroy("algorithm").size(),dao.getCategroy("resource").size(),dao.getCategroy("development").size()
				,dao.getCategroy("mylife").size()};
		mav.addObject("count",count);
		List<Article> popular = getPopular();
		mav.addObject("popular",popular);
		
		return mav;
	}
	
	public List<Article> getPopular(){
		List<Article> list = dao.getPopular();
		return list;
	}
	
	
	
	@RequestMapping(value="/board",method=RequestMethod.GET)
	public ModelAndView leaveMessagePage(){ 
		ModelAndView mav = new ModelAndView("/MessageBoard");					
		return mav;
	}
	
	
	
	
	/*RequestMapping(method=RequestMethod.POST)
	public ModelAndView add(){
		
	}*/
}
