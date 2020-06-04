package com.zl.recommendproject.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zl.recommendproject.entity.Film;
import com.zl.recommendproject.entity.User;
import com.zl.recommendproject.service.FilmService;

@RequestMapping("/film")
@Controller
public class FilmController {
	
	
	@Autowired
	private FilmService filmService;
	/**
	 * 电影具体显示页面
	 * @param model
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)	
	public String login(Model  model,@RequestParam(name="fid",required = true)int fid,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		 Film find = filmService.find(fid);
		 List<Film> findTopNFilms = filmService.findTopNFilms(5);
		 User attribute = (User) request.getSession().getAttribute("user");
		 if(attribute == null) {
			 response.sendRedirect("/system/login");
		 }
		 Integer uid = attribute.getUid();
		 model.addAttribute("uid",uid);
		 model.addAttribute("findfilm",find);
		 model.addAttribute("findTopNFilms",findTopNFilms);
		return "admin/system/list";
	}

}
