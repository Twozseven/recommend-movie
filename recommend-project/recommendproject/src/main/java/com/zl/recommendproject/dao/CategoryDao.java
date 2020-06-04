package com.zl.recommendproject.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.zl.recommendproject.entity.Category;

public interface CategoryDao extends JpaRepository<Category,Integer>{

	/**
	 * 根据分类id找到分类
	 * @param cid
	 * @return
	 */
	 @Query("select c from Category c where cid =:cid")
		Category find(@Param("cid")int cid);
}
