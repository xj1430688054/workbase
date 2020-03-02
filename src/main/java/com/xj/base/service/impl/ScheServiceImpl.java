package com.xj.base.service.impl;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xj.base.dao.IScheDao;
import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Resource;
import com.xj.base.entity.Sche;
import com.xj.base.entity.User;
import com.xj.base.service.IScheService;
import com.xj.base.service.IUserService;
import com.xj.base.service.support.impl.BaseServiceImpl;

@Service
public class ScheServiceImpl extends BaseServiceImpl<Sche, Integer> implements IScheService{
	
//	private IUserService userService;

	@Autowired
	private IScheDao scheDao;
	@Override
	public void saveOrUpdate(Sche sche, HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("users");
		if(sche.getId() != null){
			Sche dbsche = find(sche.getId());
			dbsche.setName(sche.getName());
		
			update(dbsche);
		}else{
			sche.setScheDate(new Date());
			sche.setCreateTime(new Date());
			sche.setUid(user.getId());
			save(sche);
		}
		
	}



	@Override
	public IBaseDao<Sche, Integer> getBaseDao() {
		// TODO Auto-generated method stub
		return scheDao;
	}

}
