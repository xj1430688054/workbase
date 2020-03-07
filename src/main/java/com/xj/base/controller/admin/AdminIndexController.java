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
import com.xj.base.entity.Sche;
import com.xj.base.entity.User;
import com.xj.base.service.IReimService;
import com.xj.base.service.IResourceService;
import com.xj.base.service.IRoleService;
import com.xj.base.service.IScheService;
import com.xj.base.service.specification.SimpleSpecificationBuilder;
import com.xj.base.service.specification.SpecificationOperator.Operator;

@Controller
public class AdminIndexController extends BaseController{
	
	@Autowired
	private IReimService reimService;
	
	@Autowired
	private IResourceService resourceService;
	
	@Autowired
	private IScheService scheService;
	
	
	@Autowired
	private IRoleService roleService;
	public static Integer id = 0;
	
	@RequestMapping(value ={"/admin/","/admin/index"})
	public String index(Model model){
		String status = "0";
		StringBuffer strBuff = new StringBuffer();
		String schetip = "";
		String reimtip = "";
		int count = 0;
		int reimcount = 0;
		User user = (User)request.getSession().getAttribute("users");
		
		strBuff.append( "尊敬的 " + user.getNickName() + "先生， 您有");
		user = userService.find(user.getId());
		
		Set<Role> roles = user.getRoles();
		Role role = roles.iterator().next();
		
		//查找当前还没做总结的日报
		SimpleSpecificationBuilder<Sche> scheBulider = new SimpleSpecificationBuilder<Sche>();
		scheBulider.add("uid", Operator.eq.name(), user.getId());
		scheBulider.add("status", Operator.eq.name(), 0);
		 int schecount = (int) scheService.count(scheBulider.generateSpecification());
		 if (0 != schecount) {
			 count += schecount;
			  schetip = "尊敬的 " + user.getNickName() + "您有" + schecount + "条日报未作总结";
		}
		
		role = roleService.find(role.getId());
		Set<Resource> roleResources = role.getResources();
		for (Resource resource : roleResources) {
			
			if ("报销编辑".equals(resource.getName())) {
				SimpleSpecificationBuilder<Reim> builder = new SimpleSpecificationBuilder<Reim>();
				builder.add("status", Operator.eq.name(), "0");
				 reimcount = (int)reimService.count(builder.generateSpecification());
				count += reimcount;
				if ( 0!= reimcount) {
					reimtip = "尊敬的 " + user.getNickName() + "您有" + reimcount + "条报销需要审核";
				}
				status = "1";
				break;
			}
		}
		
		model.addAttribute("schecount", String.valueOf(schecount));
		model.addAttribute("reimcount", String.valueOf(reimcount));
		model.addAttribute("count", count);
		model.addAttribute("status", status);
		model.addAttribute("schetip", schetip);
		model.addAttribute("reimtip", reimtip);
		
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
