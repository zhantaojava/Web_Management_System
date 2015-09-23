package controller;

import model.UserBeanProcess;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LoginProcessController {
	
	private UserBeanProcess ubs=new UserBeanProcess();
	
	
	@RequestMapping(value="login")
	public ModelAndView showName(
			
		@RequestParam(value = "username") String u,
		@RequestParam(value = "pw") String p){
		
		
		if(ubs.CheckUser(u, p)){
			
			ModelAndView mv = new ModelAndView("wel");
			mv.addObject("username", u);
			mv.addObject("password", p);
		}
			
		  
		
		return null;
	}
}
