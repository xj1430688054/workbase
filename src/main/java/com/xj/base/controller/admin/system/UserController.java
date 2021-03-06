package com.xj.base.controller.admin.system;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.xj.base.common.JsonResult;
import com.xj.base.config.WebMvcConfig;
import com.xj.base.controller.BaseController;
import com.xj.base.entity.Dept;
import com.xj.base.entity.Reim;
import com.xj.base.entity.Role;
import com.xj.base.entity.User;
import com.xj.base.service.IDeptService;
import com.xj.base.service.IRoleService;
import com.xj.base.service.IUserService;
import com.xj.base.service.specification.SimpleSpecificationBuilder;
import com.xj.base.service.specification.SpecificationOperator.Operator;

@Controller
@RequestMapping("/admin/user")
public class UserController extends BaseController {

	@Autowired
	private IUserService userService;
	@Autowired
	private IRoleService roleService;
	@Autowired
	private IDeptService deptService;

	@RequestMapping(value = { "/", "/index" })
	public String index() {
		return "admin/user/index";
	}

	@RequestMapping(value = { "/list" })
	@ResponseBody
	public Page<User> list() {
		SimpleSpecificationBuilder<User> builder = new SimpleSpecificationBuilder<User>();
		String searchText = request.getParameter("searchText");
		if(StringUtils.isNotBlank(searchText)){
			builder.add("nickName", Operator.likeAll.name(), searchText);
		}
		Page<User> page = userService.findAll(builder.generateSpecification(), getPageRequest());
		for (User user : page) {
			user.setRoleName(userService.findRoleNameById(user.getId()));
			user.setGroupName(userService.findGroupName(user.getId()));
			user.setDname(deptService.findNameById(user.getDid()).getName());
		}
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		List<Dept> depts = deptService.findAll();
		map.put("depts", depts);
		return "admin/user/form";
	}

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		User user = userService.find(id);
		List<Dept> depts = deptService.findAll();
		map.put("depts", depts);
		map.put("user", user);
		return "admin/user/form";
	}
	
	@RequestMapping(value= {"/edit"} ,method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(User user,ModelMap map){
		try {
			userService.saveOrUpdate(user);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			userService.delete(id);
		} catch (Exception e) {
			Assert.state(true,"请先删除该角色分配的权限或者用户取消关联此角色");
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	@RequestMapping(value = "/grant/{id}", method = RequestMethod.GET)
	public String grant(@PathVariable Integer id, ModelMap map) {
		User user = userService.find(id);
		map.put("user", user);
		
		Set<Role> set = user.getRoles();
		List<Integer> roleIds = new ArrayList<Integer>();
		for (Role role : set) {
			roleIds.add(role.getId());
		}
		map.put("roleIds", roleIds);
		
		List<Role> roles = roleService.findAll();
		map.put("roles", roles);
		return "admin/user/grant";
	}
	
	@ResponseBody
	@RequestMapping(value = "/grant/{id}", method = RequestMethod.POST)
	public JsonResult grant(@PathVariable Integer id,String[] roleIds, ModelMap map) {
		try {
			userService.grant(id,roleIds);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	
	@PostMapping("/upload")
	public String  upload(@RequestParam("file") MultipartFile file, Model model, User user) {
		if (file.isEmpty()) {
		}
		String fileName = file.getOriginalFilename();
		String fileF = fileName.substring(fileName.lastIndexOf("."), fileName.length());// 文件后缀
		fileName = new Date().getTime() + "_" + new Random().nextInt(1000) + fileF;// 新的文件名

		File dest = null;
		String os = System.getProperty("os.name");
		System.out.println(os);
		String path = (WebMvcConfig.URL).replaceAll("file:", "");
		System.out.println(path);
		dest = new File(path + fileName);

		model.addAttribute("src", "img/" + fileName);
		try {
			file.transferTo(dest);
			if (null != user.getId()) {
				user = userService.find(user.getId());
			}
			user.setUrl("img/" + fileName);
			userService.save(user);
			model.addAttribute("user", user);
			return "admin/welcome";
		} catch (IOException e) {
			e.printStackTrace();
			return null;

		}
		
	}
}
