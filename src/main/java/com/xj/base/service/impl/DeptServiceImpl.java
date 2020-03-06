package com.xj.base.service.impl;


import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xj.base.common.utils.MD5Utils;
import com.xj.base.dao.IDeptDao;
import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Dept;
import com.xj.base.entity.User;
import com.xj.base.service.IDeptService;
import com.xj.base.service.support.impl.BaseServiceImpl;


@Service
public class DeptServiceImpl extends BaseServiceImpl<Dept, Integer>implements IDeptService{
	
	@Autowired
	private IDeptDao deptDao;;

	

	@Override
	public IBaseDao<Dept, Integer> getBaseDao() {
		// TODO Auto-generated method stub
		return this.deptDao;
	}

	@Override
	public void saveOrUpdate(Dept dept) {
		if(dept.getId() != null){
			Dept dbdepartment = find(dept.getId());
			dbdepartment.setName(dept.getName());
			dbdepartment.setUpdateTime(new Date());
			update(dbdepartment);
		}else{
			dept.setCreateTime(new Date());
			dept.setUpdateTime(new Date());
			save(dept);
		}
		
	}

	@Override
	public Dept findNameById(Integer id) {
		// TODO Auto-generated method stub
		return  deptDao.findNameById(id);
	}




	

	

}
