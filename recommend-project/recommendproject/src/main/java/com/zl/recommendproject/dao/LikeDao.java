package com.zl.recommendproject.dao;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.zl.recommendproject.entity.Like;



/**
 * like数据库操作层
 * @author www65
 *
 */
@Repository
public interface LikeDao extends JpaRepository<Like, Integer>{

	/**
	 * 根据uid找到它喜欢的film
	 * @param uid
	 * @return
	 */
	 @Query(value="select * from likes  where uid =:uid ",nativeQuery=true)
	 public ArrayList<Like> findFilmByUid(@Param("uid")Integer uid);
	 
	
}
