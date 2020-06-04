package com.zl.recommendproject.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.recommendproject.dao.LikeDao;
import com.zl.recommendproject.entity.Like;

@Service
public class LikeService {

	
	@Autowired
	private LikeDao likeDao;
	/**
	 * 添加编辑like
	 * @param like
	 * @return
	 */
	public Like save(Like like) {
		return likeDao.save(like);
	}
	
	public ArrayList<Like> findByuid(Integer uid) {
		return likeDao.findFilmByUid(uid);
	};
}
