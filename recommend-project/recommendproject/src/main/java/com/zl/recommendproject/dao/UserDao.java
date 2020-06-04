package com.zl.recommendproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.zl.recommendproject.entity.User;



/**
 * 用户数据库操作层
 * @author www65
 *
 */
@Repository
public interface UserDao extends JpaRepository<User, Integer>{

	/**
	 * 根据用户名查找用户,jpa自带的方法
	 * @param username
	 * @return
	 */
	public User findByUsername(String username);
	/**
	 * 
	 * @param username，自定义的方法，因为好像jpa的方法不能返回uid
	 * @return
	 */
	@Query("select u from User u where username =:username")
	User findbyname(@Param("username")String username);
}
