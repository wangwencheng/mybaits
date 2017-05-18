/**
 * @author  wencheng
 * @date: 2017年5月17日 下午4:38:07
 */
package com.mybait.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mybait.dao.UserMapper;
import com.mybait.pojo.User;
import com.mybait.service.IUserService;

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
}
