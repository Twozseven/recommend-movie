package com.zl.recommendproject.dao;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.zl.recommendproject.entity.Film;
import com.zl.recommendproject.entity.Like;



/**
 * 用户数据库操作层
 * @author www65
 *
 */
@Repository
public interface FilmDao extends JpaRepository<Film, Integer>{

	/**
	 * 根据电影id来查找数据
	 * @param fid
	 * @return
	 */
	 @Query("select f from Film f where fid =:fid")
		Film find(@Param("fid")int fid);
	 /**
	  * 根据喜欢的人数获取最被喜欢的size条电影，用来弥补推荐列表不足5篇的情况
	  * @param size
	  * @return
	  */
	 @Query(value="select * from films  order by likecnt desc limit 0,:size ",nativeQuery=true)
	 public ArrayList<Film> findTopNFilms(@Param("size")int size);
	 /**
	  * 根据Title找电影
	  * @param title
	  * @return
	  */
	 public Film findBytitle(String title);
	 
	 /**
	  * 给id为fid 的电影喜爱值+1
	  * @param fid
	  */
	 @Modifying@Query(value="update films set likecnt = likecnt + 1 where fid = :fid  ",nativeQuery=true)
	 public  void addLike(@Param("fid")int fid);
	
	 /**
	  * 根据分类id查找电影
	  * @param categoryid
	  * @return
	  */
	 @Query(value="select * from films  where categoryid =:categoryid ",nativeQuery=true)
	 public ArrayList<Film> findFilmByCategoryId(@Param("categoryid")Integer categoryid);
	 
}
