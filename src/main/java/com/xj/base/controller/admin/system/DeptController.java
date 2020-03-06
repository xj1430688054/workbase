package com.xj.base.controller.admin.system;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xj.base.common.JsonResult;
import com.xj.base.controller.BaseController;
import com.xj.base.entity.Dept;
import com.xj.base.service.IDeptService;
import com.xj.base.service.specification.SimpleSpecificationBuilder;
import com.xj.base.service.specification.SpecificationOperator.Operator;
import com.xj.base.vo.ZtreeView;

@Controller
@RequestMapping("/admin/dept")
public class DeptController extends BaseController {
	@Autowired
	private IDeptService deptService;
	

	
	@RequestMapping("/index")
	public String index() {
		return "admin/dept/index";
	}

	@RequestMapping("/list")
	@ResponseBody
	public Page<Dept> list() {
		SimpleSpecificationBuilder<Dept> builder = new SimpleSpecificationBuilder<Dept>();
		String searchText = request.getParameter("searchText");
		if(StringUtils.isNotBlank(searchText)){
			builder.add("name", Operator.likeAll.name(), searchText);
		}
		Page<Dept> page = deptService.findAll(builder.generateSpecification(),getPageRequest());
		for (Dept dept : page) {
		}
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		List<Dept> list = deptService.findAll();
		map.put("list", list);
		return "admin/dept/form";
	}
	

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		Dept dept = deptService.find(id);
		map.put("dept", dept);
		
		List<Dept> list = deptService.findAll();
		map.put("list", list);
		return "admin/dept/form";
	}
	
	@RequestMapping(value= {"/edit"}, method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(Dept dept,ModelMap map){
		try {
			deptService.saveOrUpdate(dept);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			deptService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
}
