package com.dzh.ssm;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dzh.ssm.service.UserService;

public class TestMyBatis {
	private static Logger logger = Logger.getLogger(TestMyBatis.class);
	private ApplicationContext ac = null;
	@Resource
	private UserService userService;

	@Before
	public void before() {
		ac = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		userService = (UserService) ac.getBean("userService");
	}

	@Test
	public void test1() {
		userService.saveUser("李四w");
		// System.out.println(user.getUserName());
		// logger.info("值："+user.getUserName());
	}
}
