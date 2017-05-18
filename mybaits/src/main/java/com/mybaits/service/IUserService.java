/**
 * @author  wencheng
 * @date: 2017年5月17日 下午4:37:33
 */
package com.mybaits.service;

import java.util.List;

import com.mybaits.pojo.User;

/**
 *@Copyright (c), 2012-2016,DaZhi NetWork.Co.,Ltd  
 *@package com.mybait.service
 *@FileName:IUserService.java 
 *@Author:王文城                 
 *@Date:2017年5月17日 
 *@Description: 
 *@Vesion:1.0
 */

public interface IUserService {

	/**
	 * @param i
	 * @return
	 */
	User getUserById(int i);

	/**
	 * @return
	 */
	List<User> datas();

}
