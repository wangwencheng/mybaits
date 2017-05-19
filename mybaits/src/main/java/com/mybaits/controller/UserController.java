/**
 * @author  wencheng
 * @date: 2017年5月18日 上午10:42:38
 */
package com.mybaits.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.mybaits.pojo.User;
import com.mybaits.service.IUserService;


/**
 *@Copyright (c), 2012-2016,DaZhi NetWork.Co.,Ltd  
 *@package com.mybait.controller
 *@FileName:UserController.java 
 *@Author:王文城                 
 *@Date:2017年5月18日 
 *@Description: 
 *@Vesion:1.0
 */
@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private IUserService userService;
	
	@RequestMapping("/list")
	public ModelAndView list(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/user/list");
		return mav;
		
	}
	/**
	 * 查询所有数据
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/datas")
	public List<User> datas(){
	  List<User> users =userService.datas();
	  return users;
	}
	
	/**
	 * 新增页面
	 */
	@RequestMapping("/saveOrUpdate")
	public ModelAndView saveOrUpdate(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/user/saveOrUpdate");
		return mav;
	}
	@ResponseBody
	@RequestMapping("/xSaveOrUpdate")
	public JSONObject xSaveOrUpdate(User user){
		JSONObject json=new JSONObject();
		if(!"".equals(user.getId()) && null!=user.getId()){
		   userService.update(user);
		   json.put("message", "更新成功");
		}else{
		   userService.save(user);
		   json.put("message", "新增成功");
		}
		json.put("error", "false");
		return json;
	} 
}
