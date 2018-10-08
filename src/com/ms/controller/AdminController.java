package com.ms.controller;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ms.Dao.AdminDao;
import com.ms.Dao.ArticleDao;
import com.ms.Dao.CommentDao;
import com.ms.model.Article;


@Controller
@Transactional
@RequestMapping("/")
public class AdminController {
	@Autowired
	ArticleDao dao;
	@Autowired
	CommentDao cdao;
	@Autowired
	AdminDao adao;
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public ModelAndView getAll(){ 
		ModelAndView mav = new ModelAndView("/admin");
		List<Article> list = dao.getAll();
		for(int i=0;i<list.size();i++){
			int num = cdao.getNum(list.get(i).getId());
			list.get(i).setcNum(num);
		}
		mav.addObject("list",list);
		
		int ccount = cdao.getCount();
		mav.addObject("ccount",ccount);
		int mcount = adao.getCount();
		mav.addObject("mcount",mcount);
		
		int cateNum [] = {dao.getNum("algorithm"),dao.getNum("resource"),dao.getNum("development"),dao.getNum("mylife")};
		mav.addObject("cateNum",cateNum);
		int clickNum [] = {dao.getClickstNum("algorithm"),dao.getClickstNum("resource"),dao.getClickstNum("development"),dao.getClickstNum("mylife")};
		mav.addObject("clickNum",clickNum);
		return mav;
	}
	
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam int id){
		ModelAndView mav = new ModelAndView();
		dao.delete(id);
		mav.setViewName("redirect:/admin");
		return mav;
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	public ModelAndView edit(@RequestParam int id,@RequestParam String title,@RequestParam String content){
		ModelAndView mav = new ModelAndView("/edit");
		Article art = new Article();
		art.setId(id);
		art.setContent(content);
		art.setTitle(title);
		dao.update(art);
		mav.setViewName("redirect:/admin");
		return mav;
	}
	
	@RequestMapping(value="/edit",method=RequestMethod.GET)
    public ModelAndView beforeEdit(@RequestParam int id){	
		ModelAndView mav = new ModelAndView("/edit");
		Article art = dao.getArtById(id);
		mav.addObject("article",art);
		return mav;	
	}
	
	
	
}

