package com.dzh.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dzh.ssm.service.UserService;



@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserContrller {

	private static Logger log = LoggerFactory.getLogger(UserContrller.class);
	@Autowired
	private UserService UserService;



	/**
	 * 使用 ModelAndView 来收发参数
	 * 
	 * @param name
	 * @param password
	 * @return
	 */
	@RequestMapping(value = "/save", method = RequestMethod.GET, produces = "text/html;charset=UTF-8")
	public ModelAndView save(String name, String password,HttpServletRequest request) {
		System.out.println("接收到的用户信息：" + request.getParameter("name"));

		ModelAndView mov = new ModelAndView();
		mov.setViewName("home");
		mov.addObject("msg", "保存成功 name :" + name);
		log.debug("保存成功");
		UserService.saveUser(name);
		return mov;
	}

	

}
