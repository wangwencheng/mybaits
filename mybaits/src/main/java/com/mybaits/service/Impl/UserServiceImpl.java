/**
 * @author  wencheng
 * @date: 2017年5月17日 下午4:38:07
 */
package com.mybaits.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mybaits.dao.UserMapper;
import com.mybaits.pojo.User;
import com.mybaits.pojo.UserExample;
import com.mybaits.pojo.UserExample.Criteria;
import com.mybaits.service.IUserService;

/**
 *@Copyright (c), 2012-2016,DaZhi NetWork.Co.,Ltd  
 *@package com.mybait.service.Impl
 *@FileName:UserServiceImpl.java 
 *@Author:王文城                 
 *@Date:2017年5月17日 
 *@Description: 
 *@Vesion:1.0
 */
@Service("userService")  
public class UserServiceImpl implements IUserService{
	@Resource  
    private UserMapper userMapper; 
	@Override
	public User getUserById(int userId) {
		return this.userMapper.selectByPrimaryKey(userId);
	}
	/*
	 * 展示所有数据
	 */
	@Override
	public List<User> datas() {
		UserExample example=new UserExample();
		Criteria criteria=example.createCriteria();
		List<User> users= userMapper.selectByExample(example);
		return users;
	}
	@Override
	public void update(User user) {
		userMapper.updateByPrimaryKey(user);
	}
	@Override
	public void save(User user) {
		userMapper.insert(user);
	}
}
