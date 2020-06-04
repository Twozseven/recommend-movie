package com.zl.recommendproject.controller;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.zl.recommendproject.dao.FilmDao;
import com.zl.recommendproject.dao.LikeDao;
import com.zl.recommendproject.dao.UserDao;
import com.zl.recommendproject.entity.Film;
import com.zl.recommendproject.entity.Like;
import com.zl.recommendproject.entity.User;

@Controller
@RequestMapping("/itemcf")

public class itemCfController {

	@Autowired
	private UserDao userDao;
	@Autowired
	private FilmDao filmDao;
	@Autowired
	private LikeDao likeDao;
	
	private Logger log = LoggerFactory.getLogger(itemCfController.class);
	
	@RequestMapping(value="/itemcf",method=RequestMethod.GET)
	public String recommend(Model model,@RequestParam(name="uid",required = true)int uid){
		
		List<Like> likeLists ;  //其他用户喜欢的电影列表
		List<User> users = userDao.findAll();  //所有用户列表
		List<Film> films = filmDao.findAll(); //所有电影列表
		int[][] curMatrix = new int[films.size()+5][films.size()+5]; //当前矩阵
		int[][] comMatrix = new int[films.size()+5][films.size()+5];//共现矩阵
		 int[] N = new int[films.size()+5];  //喜欢每个物品的人数
		 
		 for(User e :users) {
			 if(e.getUid() == uid) continue; //当前用户则跳过
			  likeLists =  likeDao.findFilmByUid(e.getUid()); //当前用户的喜欢列表
			 
			  for(int i = 0; i < films.size(); i++)
	                for(int j = 0; j < films.size(); j++)
	                    curMatrix[i][j] = 0;  //清空矩阵
			  
			  for(int i = 0; i < likeLists.size(); i++){
	                int fid1 = likeLists.get(i).getFid();
	                ++N[fid1];
	                for(int j = i+1; j < likeLists.size(); j++){
	                    int fid2 = likeLists.get(j).getFid();
	                    ++curMatrix[fid1][fid2];
	                    ++curMatrix[fid2][fid1]; //两两加一
	                }
	            }
			  
			//累加所有矩阵, 得到共现矩阵
	            for(int i = 0; i < films.size(); i++){
	                for(int j = 0; j < films.size(); j++){
	                    int fid1 = films.get(i).getFid();
						int fid2 = films.get(j).getFid();
	                    comMatrix[fid1][fid2] += curMatrix[fid1][fid2];
	                    comMatrix[fid1][fid2] += curMatrix[fid1][fid2];
	                }
	            }        			  
		 }
		 
		 TreeSet<Film> preList = new TreeSet<Film>(new Comparator<Film>() {
			 @Override
			 public int compare(Film o1, Film o2) {
	                if(o1.getW()!=o2.getW())
	                    return (int) (o1.getW()-o2.getW())*100;
	                else
	                    return o1.getCnt()-o2.getCnt();
	            }
		}); //预处理的列表
		 
		 likeLists =   likeDao.findFilmByUid(uid)  ; //当前用户喜欢的电影列表
		 boolean[] used = new boolean[films.size()+5];//判重数组
		 for(Like like :likeLists) {
			 int Nij = 0;                         //既喜欢i又喜欢j的人数
	            double Wij;                          //相似度
	            Film tmp;                           //当前的电影
	            
	            int i = like.getFid();
	            for(Film film: films){
	                if(like.getFid() == film.getFid()) continue;
	                int j = film.getFid();

	                Nij = comMatrix[i][j];
	                Wij = (double)Nij/Math.sqrt(N[i]*N[j]); //计算余弦相似度
	                film.setW(Wij);

	                tmp = filmDao.find(film.getFid());
	                
                    
	                if(used[tmp.getFid()]) continue;
	                preList.add(tmp);
	                used[tmp.getFid()] = true;
	            }
		 }
		 
		ArrayList<Film> recomLists = new ArrayList<>();//生成的推荐结果
		for(int i = 0; preList.size()>0 && i<5; i++){
            recomLists.add(preList.pollLast());
            preList.pollLast();
        }
		ArrayList<Film> recomLists2 = new ArrayList<>();
		//最热电影
		ArrayList<Film> recomLists3 = new ArrayList<>();
		recomLists3 = filmDao.findTopNFilms(5);
		if(recomLists.size()<5){
            //推荐数量不满5个, 补足喜欢数最高的电影
			
            recomLists2 = filmDao.findTopNFilms(5-recomLists.size());
            
              recomLists.addAll(recomLists2)   ;    
                          
        }
		model.addAttribute("recomLists3", recomLists3);
		model.addAttribute("recomLists", recomLists);
		model.addAttribute("uid",uid);
		return "admin/system/index";
	}
}
