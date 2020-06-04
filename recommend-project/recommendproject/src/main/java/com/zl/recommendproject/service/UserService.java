package com.zl.recommendproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.zl.recommendproject.dao.UserDao;
import com.zl.recommendproject.entity.User;



@Service
public class UserService {

	
	@Autowired
	private UserDao userDao;
	/**
	 * 根据姓名查找用户
	 * @param username
	 * @return
	 */
	public User fingByUsername(String username) {
		return userDao.findByUsername(username);
	}
	/**
	 * 用户添加编辑
	 * @param user
	 * @return
	 */
	public User save(User user) {
		return userDao.save(user);
	}
	/**
	 * 获取所有用户
	 * @return
	 */
	public List<User> findAll(){
		return userDao.findAll();
	}
	/**
	 * 自定义的根据姓名查找用户方法，因为好像jpa的方法不能返回uid
	 * @param username
	 * @return
	 */
	public User findbyname(String username) {
		return userDao.findbyname(username);
	}
}
