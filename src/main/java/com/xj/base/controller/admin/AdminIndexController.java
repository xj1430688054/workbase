package com.xj.base.controller.admin;

import java.util.List;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xj.base.controller.BaseController;
import com.xj.base.entity.Group;
import com.xj.base.entity.Reim;
import com.xj.base.entity.Resource;
import com.xj.base.entity.Role;
import com.xj.base.entity.User;
import com.xj.base.service.IReimService;
import com.xj.base.service.IResourceService;
import com.xj.base.service.IRoleService;
import com.xj.base.service.specification.SimpleSpecificationBuilder;
import com.xj.base.service.specification.SpecificationOperator.Operator;

@Controller
public class AdminIndexController extends BaseController{
	
	@Autowired
	private IReimService reimService;
	
	@Autowired
	private IResourceService resourceService;
	
	
	@Autowired
	private IRoleService roleService;
	public static Integer id = 0;
	
	@RequestMapping(value ={"/admin/","/admin/index"})
	public String index(Model model){
		User user = (User)request.getSession().getAttribute("users");
		SimpleSpecificationBuilder<Reim> builder = new SimpleSpecificationBuilder<Reim>();
			builder.add("status", Operator.likeAll.name(), "0");
		int count = (int)reimService.count(builder.generateSpecification());
		
		model.addAttribute("count", count);
		String tip = "尊敬的 " + user.getNickName() + "先生， 您有" + count + "条信息需要审批";
		user = userService.find(user.getId());
		
		model.addAttribute("tip", tip);
		Set<Role> roles = user.getRoles();
		Role role = roles.iterator().next();
		
		
		role = roleService.find(role.getId());
		Set<Resource> roleResources = role.getResources();
//		SimpleSpecificationBuilder<Resource> builderresec = new SimpleSpecificationBuilder<Resource>();
//		builderresec.add("namn", Operator.eq.name(), "报销编辑");
//		List<Resource> resources = resourceService.findAll(builderresec.generateSpecification());
//		Resource resource = resources.get(0);
		String status = "0";
		for (Resource resource : roleResources) {
			
			if ("报销编辑".equals(resource.getName())) {
				status = "1";
				break;
			}
		}
		model.addAttribute("status", status);
		
		return "admin/index";
	}
	
	@RequestMapping(value = {"/admin/welcome"})
	public String welcome(Model model){
		User user = userService.find(id);
		model.addAttribute("user", user);
		String isown  = "true";
		model.addAttribute("isown", isown);
		return "admin/welcome";
	}
	
	@RequestMapping(value = {"/admin/welcome/{ids}"})
	public String welcome1(@PathVariable Integer ids,ModelMap map){
		User user = userService.find(ids);
		map.addAttribute("user", user);
		User user1 = (User)request.getSession().getAttribute("users");
		
		
		String isown  = "false";
		if (ids == user1.getId()) {
			isown = "true";
		}
		map.addAttribute("isown", isown);
//		List<Group> groups = userService.findHisUser(ids);
//		map.addAttribute("groups", groups);
		
		return "admin/welcome";
	}
}
