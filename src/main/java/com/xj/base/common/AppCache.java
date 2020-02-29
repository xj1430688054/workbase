package com.xj.base.common;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.xj.base.controller.admin.LoginController;
import com.xj.base.dao.IUserDao;

//@Data
@Component
@Order(1) //指定顺序
public class AppCache implements CommandLineRunner{
	
	Logger logger = Logger.getLogger(LoginController.class);
	@Autowired
	private IUserDao userDao;
	
	public static Map<Integer, String> map2 = new HashMap<>();
	public static Map<Integer, String> map3 = new HashMap<>();
	public static Map<Integer, Integer> map4 = new HashMap<>();
	public static Map<Integer, String> map5 = new HashMap<>();
	public static Map<String, Integer> map6 = new HashMap<>();
	public static Map<Integer, String> map7 = new HashMap<>();

	@Override
	public void run(String... args) throws Exception {
		try {
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
