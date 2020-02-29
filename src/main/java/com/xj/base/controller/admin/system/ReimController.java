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
import com.xj.base.entity.Reim;
import com.xj.base.service.IReimService;
import com.xj.base.service.specification.SimpleSpecificationBuilder;
import com.xj.base.service.specification.SpecificationOperator.Operator;
import com.xj.base.vo.ZtreeView;

@Controller
@RequestMapping("/admin/reim")
public class ReimController extends BaseController {
	@Autowired
	private IReimService reimService;
	
	
	@RequestMapping("/index")
	public String index() {
		return "admin/reim/index";
	}

	@RequestMapping("/list")
	@ResponseBody
	public Page<Reim> list() {
		SimpleSpecificationBuilder<Reim> builder = new SimpleSpecificationBuilder<Reim>();
		String searchText = request.getParameter("searchText");
		if(StringUtils.isNotBlank(searchText)){
			builder.add("name", Operator.likeAll.name(), searchText);
		}
		Page<Reim> page = reimService.findAll(builder.generateSpecification(),getPageRequest());
		for (Reim reim : page) {
			//给批改人赋值
			if(null != reim.getPid()) {
				reim.setPid(userService.findNameById(reim.getPid()));
			}
			//给申请人赋值
			if(null != reim.getUid()) {
				reim.setUname(userService.findNameById(reim.getUid()));
			}
		}
		return page;
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add(ModelMap map) {
		List<Reim> list = reimService.findAll();
		map.put("list", list);
		return "admin/reim/form";
	}
	

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable Integer id,ModelMap map) {
		Reim reim = reimService.find(id);
		map.put("reim", reim);
		
		List<Reim> list = reimService.findAll();
		map.put("list", list);
		return "admin/reim/form";
	}
	
	@RequestMapping(value= {"/edit"}, method = RequestMethod.POST)
	@ResponseBody
	public JsonResult edit(Reim reim,ModelMap map){
		
		try {
			reimService.saveOrUpdate(reim, request);
		} catch (Exception e) {
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	@ResponseBody
	public JsonResult delete(@PathVariable Integer id,ModelMap map) {
		try {
			reimService.delete(id);
		} catch (Exception e) {
			e.printStackTrace();
			return JsonResult.failure(e.getMessage());
		}
		return JsonResult.success();
	}
}
