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
}
