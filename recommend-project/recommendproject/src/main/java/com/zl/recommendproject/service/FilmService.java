package com.zl.recommendproject.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.recommendproject.dao.FilmDao;
import com.zl.recommendproject.entity.Film;

@Service
@Transactional
public class FilmService {

	
	@Autowired
	private FilmDao filmDao;
	/**
	 * 根据title查找电影
	 * @param title
	 * @return
	 */
	public Film findByTitle(String title) {
		return filmDao.findBytitle(title);
	}
	/**
	 * 电影添加编辑
	 * @param paper
	 * @return
	 */
	public Film save(Film film) {
		return filmDao.save(film);
	}
	/**
	 * 根据喜欢的人数获取最被喜欢的size条电影，用来弥补推荐列表不足5篇的情况
	 * @param size
	 * @return
	 */
	public List<Film> findTopNFilms(int size){
		return filmDao.findTopNFilms(size);
	}
	/**
	 * 获取所有的film
	 * @return
	 */
	public List<Film>findAll(){
		return filmDao.findAll();
	}
	/**
	 * 给id位fid的电影喜爱值加1
	 * @param fid
	 */
	 public  void addLike(int fid) {
		  filmDao.addLike(fid);
	 }
	 /**
	  * 根据id找film
	  * @param fid
	  * @return
	  */
	 public Film find(int fid) {
		 return filmDao.find(fid);
	 }
	 
	 public ArrayList<Film>findFilmByCategoryId(Integer categoryid){
		 return filmDao.findFilmByCategoryId(categoryid);
	 }
}
