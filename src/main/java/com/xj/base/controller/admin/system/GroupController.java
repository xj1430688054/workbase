package com.xj.base.controller.admin.system;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xj.base.common.JsonResult;
import com.xj.base.controller.BaseController;
import com.xj.base.entity.Role;
import com.xj.base.entity.User;
import com.xj.base.entity.Group;
import com.xj.base.service.IGroupService;
import com.xj.base.service.specification.SimpleSpecificationBuilder;
import com.xj.base.service.specification.SpecificationOperator.Operator;

@Controller
@RequestMapping("/admin/group")
public class GroupController extends BaseController{
	
	@Autowired
	private IGroupService groupService;
	
	
	@RequestMapping("/index")
	public String index() {
		return "admin/group/index";
	}
	
	@RequestMapping("/indexhis")
	public String indexhis(ModelMap map) {
		return "admin/group/indexhis";
	}
	
	
	@RequestMapping("/listhis")
	@ResponseBody
	public List<Group> listhis(ModelMap map) {
		User user = (User)request.getSession().getAttribute("users");
		List<Group> groups = groupService.findHisUser(user.getId());
		for (Group group : groups) {
			if (null != group.getLeader()) {
				group.setLname(userService.findNameById(String.valueOf(group.getLeader())));
			}
		}
		return groups;
	}
	
	@RequestMapping(value = { "/list" })
	@ResponseBody
	public Page<Group> list() {
		SimpleSpecificationBuilder<Group> builder = new SimpleSpecificationBuilder<Group>();
		builder.add("validstatus", Operator.eq.name(), "1");
		String searchText = request.getParameter("searchText");
		if(StringUtils.isNotBlank(searchText)){
			builder.add("nickName", Operator.likeAll.name(), searchText);
		}
		Page<Group> page = groupService.findAll(builder.generateSpecification(), getPageRequest());
		for (Group group : page) {
			if (null != group.getLeader()) {
				group.setLname(userService.findNameById(String.valueOf(group.getLeader())));
			}
		}
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		return "admin/group/form";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		Group group = groupService.find(id);
		map.put("group", group);
		return "admin/group/form";
	}
	
	@RequestMapping(value= {"/edit"} ,method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(Group group,ModelMap map){
		try {
			groupService.saveOrUpdate(group);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			groupService.delete(id);
		} catch (Exception e) {
			Assert.state(true,"请先删除该角色分配的权限或者用户取消关联此角色");
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	@RequestMapping(value = "/grant/{id}", method = RequestMethod.GET)
	public String grant(@PathVariable Integer id, ModelMap map) {
		Group group = groupService.find(id);
		map.put("group", group);
		
		Set<User> set = group.getUsers();
		List<Integer> uid = new ArrayList<Integer>();
		for (User user : set) {
			uid.add(user.getId());
		}
		map.put("uid", uid);
		
		List<User> users = new ArrayList<>();
		List<User> user1 = userService.findNOUser();
		List<User> user2 = userService.findYesUser(id);
		users.addAll(user1);
		users.addAll(user2);
		map.put("users", users);
		return "admin/group/grant";
	}
	
	@ResponseBody
	@RequestMapping(value = "/grant/{id}", method = RequestMethod.POST)
	public JsonResult grant(@PathVariable Integer id,String[] uid, ModelMap map) {
		try {
			groupService.grant(id,uid);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	
	@RequestMapping(value = "/person/{id}", method = RequestMethod.GET)
	public String person(@PathVariable Integer id,ModelMap map) {
		Group group = groupService.find(id);
		map.put("group", group);
		return "admin/group/person";
	}
	
	@RequestMapping(value= {"/person/{id}"}, method = RequestMethod.POST)
	@ResponseBody
	public JsonResult person(Group group,ModelMap map){
		try {
			group = groupService.find(group.getId());
			map.put("group", group);
			Set<User> users = group.getUsers();
			return JsonResult.success(users);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
	}
	
	
	@RequestMapping(value = "/allo/{id}", method = RequestMethod.GET)
	public String allo(@PathVariable Integer id, ModelMap map) {
		Group group = groupService.find(id);
		map.put("group", group);
		
		List<User> users = userService.findYesUser(group.getId());
		for (User user : users) {
			if("组长".equals(user.getRoles().iterator().next().getName())) {
				Integer uid = user.getRoles().iterator().next().getId();
				map.put("uid", uid);
				
			}
		}
		
		map.put("users", users);
		return "admin/group/allo";
	}
	
	@ResponseBody
	@RequestMapping(value = "/allo/{id}", method = RequestMethod.POST)
	public JsonResult allo(@PathVariable Integer id,String uid, ModelMap map) {
		try {
			groupService.allo(id,uid );
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	

}
