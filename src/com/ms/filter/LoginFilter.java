package com.ms.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebFilter("/*")
public class LoginFilter implements Filter {

    
    public LoginFilter() {
    		
    }

	
	public void destroy() {
	}

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		HttpSession session = req.getSession();
		
        String uri = req.getRequestURI();
        if (!uri.endsWith("/admin")) {
			chain.doFilter(req, res);
			return;
		}
        else{
			boolean loggedIn = session.getAttribute("account") != null;
			boolean resourceRequest = req.getRequestURI().startsWith(req.getContextPath()+"/resources/");
			
			String loginURL = req.getContextPath() + "/login";
			boolean loginRequest =req.getRequestURI().equals(loginURL);
	
			String registerUrl = req.getContextPath() + "/register";
			boolean registerRequest = req.getContextPath().equals(registerUrl);
			
			if(loggedIn || resourceRequest || loginRequest ||registerRequest){
				if(!resourceRequest){
					res.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
					res.setHeader("Pragma", "no-cache");
					res.setDateHeader("Expires", 0);
				}
			}
			else{
				String returnUrl = req.getRequestURI();
				res.sendRedirect(loginURL);
			}
			chain.doFilter(req, res);
			
        }
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
