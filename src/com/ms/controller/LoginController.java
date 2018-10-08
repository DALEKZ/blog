package com.ms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ms.Dao.AdminDao;
import com.ms.model.Admin;
import com.ms.util.ParseMD5;


@Controller
public class LoginController {

	@Autowired private AdminDao dao;
	
	@RequestMapping("/login")
	public ModelAndView get(){
		ModelAndView mav = new ModelAndView("/login");
		return mav;
	}

	@RequestMapping(method=RequestMethod.POST)
	public ModelAndView post(HttpSession session,HttpServletRequest req,@RequestParam String account,@RequestParam String password,
							@RequestParam(required = false) String returnUrl){
		String pas = ParseMD5.parseStrToMd5L32(password);
		ModelAndView mav = new ModelAndView("/login");
		Admin admin = dao.getAdmin(account);
		if (admin!=null && pas.equals(admin.getPassword())) {
			session.setAttribute("account", account);
			
			if (returnUrl != null){		
				//System.out.println("redirect:" + returnUrl);
				return new ModelAndView("redirect:" + returnUrl.replace(req.getContextPath(), ""));			
			}
			else{
				
				ModelAndView mav1 = new ModelAndView();
				mav1.setViewName("redirect:/admin");
				return mav1;
			}
		} else {
			mav.addObject("error", "忘记密码？没关系！后门都开着");
			return mav;
		}
	}
}
