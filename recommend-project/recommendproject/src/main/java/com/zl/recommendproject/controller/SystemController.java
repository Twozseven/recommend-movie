package com.zl.recommendproject.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zl.recommendproject.entity.Film;
import com.zl.recommendproject.entity.Like;
import com.zl.recommendproject.entity.User;
import com.zl.recommendproject.service.FilmService;
import com.zl.recommendproject.service.LikeService;
import com.zl.recommendproject.service.UserService;




/**
 * 推荐系统控制器
 * @author www65
 *
 */
@RequestMapping("/system")
@Controller
public class SystemController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private LikeService likeService;
	
	@Autowired
	private FilmService filmservice;
	
	/**
	 * 登录页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)	
	public String login(Model  model) {
		
		return "admin/system/login";
	}
	/**
	 * 登录提交表单
	 * @param user
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/loginsub",method=RequestMethod.POST)	
	@ResponseBody
	public Map<String,String> loginAct(User user,HttpServletRequest request,Model model){
		Map<String,String> ret = new HashMap<String,String>();
		if(user==null) {
			ret.put("type", "error");
			ret.put("msg", "请填写用户信息！");
			return ret;
		}
		
		User findByUsername=userService.findbyname(user.getUsername());
		if(findByUsername==null) {
			ret.put("type", "error");
			ret.put("msg", "该用户不存在！");		
			return ret;
		}
		if(!user.getPassword().equals(findByUsername.getPassword())) {
			ret.put("type", "error");
			ret.put("msg", "密码错误！");			
			return ret;
		}
		
		//把角色信息放到session中
		request.getSession().setAttribute("user", findByUsername);
		//把用户id，用response传到前台去，再在前台里转回int
		Integer uid =findByUsername.getUid();
		String uid1 = uid.toString();
			
		ret.put("type", "success");
		ret.put("msg", "登录成功！");
		ret.put("uid", uid1);
		return ret;
	}
	
	/**
	 * 注册页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register",method=RequestMethod.GET)	
	public String register(Model  model) {
		
		return "admin/system/register";
	}
	
	/**
	 * 注册提交表单
	 * @param user
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register",method=RequestMethod.POST)	
	@ResponseBody
	public Map<String,String> register(User user,HttpServletRequest request,Model model){
		Map<String,String> ret = new HashMap<String,String>();
		if(user==null) {
			ret.put("type", "error");
			ret.put("msg", "请填写用户信息！");
			return ret;
		}
		
		User findByUsername=userService.fingByUsername(user.getUsername());
		if(findByUsername!=null) {
			ret.put("type", "error");
			ret.put("msg", "该用户名已存在！");		
			return ret;
		}
		
		if(userService.save(user)==null) {
			ret.put("type", "error");
			ret.put("msg", "注册失败请联系管理员！");			
			return ret;
		}
		//把角色信息放到session中
		request.getSession().setAttribute("user", user);
		model.addAttribute("user", user);
		ret.put("type", "success");
		ret.put("msg", "登录成功！");
		
		return ret;
	}
	/**
	 * 主页面的喜爱方法
	 * @param like
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/like",method=RequestMethod.GET)	
	@ResponseBody
	public void like(Like like,HttpServletResponse response) throws IOException{
		likeService.save(like);	
		filmservice.addLike(like.getFid());
		response.sendRedirect("/itemcf/itemcf?uid="+like.getUid());
	}
	/**
	 * 电影具体列表页面的喜爱方法
	 * @param like
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/like1",method=RequestMethod.GET)	
	@ResponseBody
	public void like1(Like like,HttpServletResponse response) throws IOException{
		likeService.save(like);	
		filmservice.addLike(like.getFid());
		response.sendRedirect("/film/list?fid="+like.getFid());
	}
	/**
	 * 分类列表里的显示页面
	 * @param like
	 * @param response
	 * @throws IOException
	 */
	@RequestMapping(value="/like2",method=RequestMethod.GET)	
	@ResponseBody
	public void like2(Like like,HttpServletResponse response) throws IOException{
		likeService.save(like);	
		filmservice.addLike(like.getFid());
		int fid = like.getFid();
		Film find = filmservice.find(fid);
		response.sendRedirect("/category/category?categoryid="+find.getCategoryId());
	}
	
	
}
