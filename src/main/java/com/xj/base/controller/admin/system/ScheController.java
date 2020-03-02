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
import com.xj.base.entity.Sche;
import com.xj.base.service.IScheService;
import com.xj.base.service.specification.SimpleSpecificationBuilder;
import com.xj.base.service.specification.SpecificationOperator.Operator;
import com.xj.base.vo.ZtreeView;

@Controller
@RequestMapping("/admin/sche")
public class ScheController extends BaseController{
	
	@Autowired
	private IScheService scheService;
	

	
	@RequestMapping("/index")
	public String index() {
		return "admin/sche/index";
	}

	@RequestMapping("/list")
	@ResponseBody
	public Page<Sche> list() {
		SimpleSpecificationBuilder<Sche> builder = new SimpleSpecificationBuilder<Sche>();
		String searchText = request.getParameter("searchText");
		if(StringUtils.isNotBlank(searchText)){
			builder.add("name", Operator.likeAll.name(), searchText);
		}
		Page<Sche> page = scheService.findAll(builder.generateSpecification(),getPageRequest());
		for (Sche sche : page) {
			sche.setUname(userService.findNameById(String.valueOf(sche.getUid())));
		}
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		List<Sche> list = scheService.findAll();
		map.put("list", list);
		return "admin/sche/form";
	}
	

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		Sche sche = scheService.find(id);
		map.put("sche", sche);
		
		List<Sche> list = scheService.findAll();
		map.put("list", list);
		return "admin/sche/form";
	}
	
	@RequestMapping(value= {"/edit"}, method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(Sche sche,ModelMap map){
		try {
			scheService.saveOrUpdate(sche, request);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			scheService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}

}
