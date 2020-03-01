package com.xj.base.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xj.base.controller.BaseController;
import com.xj.base.entity.User;

@Controller
public class AdminIndexController extends BaseController{
	
	public static Integer id = 0;
	
	@RequestMapping(value ={"/admin/","/admin/index"})
	public String index(){
		
		return "admin/index";
	}
	
	@RequestMapping(value = {"/admin/welcome"})
	public String welcome(Model model){
		User user = userService.find(id);
		model.addAttribute("user", user);
		return "admin/welcome";
	}
	
	@RequestMapping(value = {"/admin/welcome/{ids}"})
	public String welcome1(@PathVariable Integer ids,ModelMap map){
		User user = userService.find(ids);
		map.addAttribute("user", user);
		return "admin/welcome";
	}
}
