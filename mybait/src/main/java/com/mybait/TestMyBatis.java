/**
 * @author  wencheng
 * @date: 2017年5月17日 下午4:36:12
 */
package com.mybait;

/**
 *@Copyright (c), 2012-2016,DaZhi NetWork.Co.,Ltd  
 *@package com.mybait
 *@FileName:TestMyBatis.java 
 *@Author:王文城                 
 *@Date:2017年5月17日 
 *@Description: 
 *@Vesion:1.0
 */

import javax.annotation.Resource;  

import org.apache.log4j.Logger;  
import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;  
  


import com.alibaba.fastjson.JSON;  
import com.mybait.pojo.User;
import com.mybait.service.IUserService;
  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class TestMyBatis {  
    private static Logger logger = Logger.getLogger(TestMyBatis.class);  
//  private ApplicationContext ac = null;  
    @Resource  
    private IUserService userService = null;  
  
//  @Before  
//  public void before() {  
//      ac = new ClassPathXmlApplicationContext("applicationContext.xml");  
//      userService = (IUserService) ac.getBean("userService");  
//  }  
  
    @Test  
    public void test1() {  
        User user = userService.getUserById(1);  
        // System.out.println(user.getUserName());  
        // logger.info("值："+user.getUserName());  
        logger.info(JSON.toJSONString(user));  
    }  
}  