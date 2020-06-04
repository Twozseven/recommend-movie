package com.zl.recommendproject.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zl.recommendproject.entity.Category;
import com.zl.recommendproject.entity.Film;
import com.zl.recommendproject.entity.User;
import com.zl.recommendproject.service.CategoryService;
import com.zl.recommendproject.service.FilmService;

@RequestMapping("/category")
@Controller
public class CategoryController {

	@Autowired
	private FilmService filmService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value="/category",method=RequestMethod.GET)	
	public String category(Model  model,@RequestParam(name="categoryid",required = true)int categoryid,HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		ArrayList<Film> findFilmByCategoryId = filmService.findFilmByCategoryId(categoryid);
		
		Category find = categoryService.find(categoryid);
		User attribute = (User) request.getSession().getAttribute("user");
		 if(attribute == null) {
			 response.sendRedirect("/system/login");
		 }
		 Integer uid = attribute.getUid();
		model.addAttribute("categorys",find);
		model.addAttribute("findFilmByCategoryIds",findFilmByCategoryId);
		model.addAttribute("uid",uid);
		return "admin/system/category";
	}
}
