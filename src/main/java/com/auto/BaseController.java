package com.auto;
import java.io.InputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BaseController {
	@RequestMapping(value = "index", method = RequestMethod.GET)
	public  ModelAndView Auto() {
		
		
		ModelAndView model = new ModelAndView("index");
		return model;
	}
	
	@RequestMapping(value = "about", method = RequestMethod.GET)
	public  ModelAndView Page() {
		
		
		ModelAndView model = new ModelAndView("about");
		return model;
	}
	
	@RequestMapping(value = "search", method = RequestMethod.GET)
	public  ModelAndView Name() {
		
		
		ModelAndView model = new ModelAndView("search");
		return model;
	}
	
	
	

	@RequestMapping(value = "submit", method = RequestMethod.POST)
	public ModelAndView Search (ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
	   	ModelAndView model = new ModelAndView("dashboard");
	   	String searchValue=request.getParameter("search");
	   	System.out.println("nani");
		return model;
	}

	

}
