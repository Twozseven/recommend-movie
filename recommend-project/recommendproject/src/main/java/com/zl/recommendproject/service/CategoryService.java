package com.zl.recommendproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.recommendproject.dao.CategoryDao;
import com.zl.recommendproject.entity.Category;

@Service
public class CategoryService {

	
	@Autowired
	private CategoryDao categoryDao;
	
	public Category find(int cid) {
		return categoryDao.find(cid);
	}
	
	
}
