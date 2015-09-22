package controller;

import model.UserBeanProcess;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



public class LoginProcessController {
	
	private UserBeanProcess ubs;
	
	
	@RequestMapping(value="login")
	public ModelAndView showName(
			
		@RequestParam(value = "name") String u,
		@RequestParam(value = "password") String p){
		
		
		if(ubs.CheckUser(u, p)){
			
			ModelAndView mv = new ModelAndView("wel");
			mv.addObject("username", u);
			mv.addObject("password", p);
		}
			
		  
		
		return null;
	}
}
