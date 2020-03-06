package com.xj.base.service.impl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.xj.base.dao.IGroupDao;
import com.xj.base.dao.IScheDao;
import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Group;
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
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IGroupDao groupDao;
	
	@Autowired
	protected HttpServletRequest request;
	
	
	
	@Override
	public void saveOrUpdate(Sche sche, HttpServletRequest request) {
		User user = (User)request.getSession().getAttribute("users");
//		user = userService.find(user.getId());
//		 List<Group> groups = groupDao.findGroupByUid(sche.getUid());
//		 Group group = groups.iterator().next();
//		 if ("组长".equals(user.getRoles().iterator().next().getName())) {
//			if (null !=group.getLeader()) {
//				if (user.getId() != group.getLeader()) {
//					Assert.state(false, "不允许其他修改组的日报");
//				}
//			}
//		}
		
		if(sche.getId() != null){
			Sche dbsche = find(sche.getId());
			dbsche.setName(sche.getName());
			dbsche.setScheDate(sche.getScheDate());
		
			update(dbsche);
		}else{
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



	@Override
	public Page<Sche> findByUser(Pageable pageable) {
		
		User user = (User)request.getSession().getAttribute("users");
		if ("administrator".equals(user.getRoles().iterator().next().getName())) {
			return scheDao.findAll(pageable);
		}else if ("部门经理".equals(user.getRoles().iterator().next().getName())) {
			return scheDao.findByUserDept(user.getDid(), pageable);
		}else {
			Integer gid = groupDao.findGroupByUid(user.getId()).iterator().next().getId();
			return scheDao.findByGidElse(gid,pageable);
		}
		
		// TODO Auto-generated method stub
	}

}
