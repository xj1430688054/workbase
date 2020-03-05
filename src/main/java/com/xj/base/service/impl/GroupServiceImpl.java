package com.xj.base.service.impl;

import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.xj.base.common.utils.MD5Utils;
import com.xj.base.dao.IGroupDao;
import com.xj.base.dao.IUserDao;
import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Group;
import com.xj.base.entity.Role;
import com.xj.base.entity.User;
import com.xj.base.service.IGroupService;
import com.xj.base.service.IRoleService;
import com.xj.base.service.IUserService;
import com.xj.base.service.support.impl.BaseServiceImpl;


@Service
public class GroupServiceImpl extends BaseServiceImpl<Group, Integer> implements IGroupService{
	
	
	@Autowired
	private IGroupDao groupDao;
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IRoleService roleService;

	@Override
	public IBaseDao<Group, Integer> getBaseDao() {
		// TODO Auto-generated method stub
		return groupDao;
	}

	@Override
	public void saveOrUpdate(Group group) {
		if(group.getId() != null){
			Group dbGroup = find(group.getId());
			dbGroup.setName(group.getName());
			dbGroup.setStatus(group.getStatus());
			dbGroup.setUpdateTime(new Date());
			if (group.getStatus() != dbGroup.getStatus()) {
				if (null != group.getLeader()) {
					Set<Role> roless = new HashSet<Role>();
					User user = userService.find(group.getLeader());
				}
			}
			update(dbGroup);
		}else{
			group.setValidstatus(1);
			group.setStatus(0);
			group.setCreateTime(new Date());
			save(group);
		}
		
	}

	@Override
	public void grant(Integer id, String[] uids) {
		Group group = find(id);
		Assert.notNull(group, "项目不存在");
		Assert.state(1 != group.getStatus(),"已完结的项目不允许修改项目成员");
		User user;
		Set<User> users = new HashSet<User>();
		if(uids != null){
			for (int i = 0; i < uids.length; i++) {
				Integer rid = 0;
				List<Role> roles = roleService.findAll();
				Set<Role> roless = new HashSet<Role>();
				for (Role role : roles) {
					if ("组员".equals(role.getName())) {
						roless.add(role);
					}
				}
				Integer uid = Integer.parseInt(uids[i]);
				user = userService.find(uid);
				user.setRoles(roless);
				userService.update(user);
				
			}
		}
		group.setUsers(users);
		update(group);
		
	}
	
	@Override
	public List<Group> findHisUser(Integer id) {
		// TODO Auto-generated method stub
		return groupDao.findHisUser(id);
	}

	@Override
	public void allo(Integer id, String uid) {
		Group group = find(id);
		Assert.notNull(group, "项目不存在");
		Assert.state(1 != group.getStatus(),"已完结的项目不允许修改修改组长");
		List<Role> roles = roleService.findAll();
		Integer uuid = group.getLeader();
		for (Role role : roles) {
			if (null != uuid) {
				if ("组员".equals(role.getName())) {
					Set<Role> roless = new HashSet<Role>();
					User user = userService.find(Integer.valueOf(uuid));
					roless.add(role);
					user.setRoles(roless);
					userService.update(user);
				} 
			}
			if("组长".equals(role.getName())) {
				Set<Role> roless = new HashSet<Role>();
				User user = userService.find(Integer.valueOf(uid));
				roless.add(role);
				user.setRoles(roless);
				userService.update(user);
			}
		}
		group.setLeader(Integer.valueOf(uid));
		
	}

	@Override
	public List<Group> findGroupByUid(Integer id) {
		// TODO Auto-generated method stub
		return findGroupByUid(id);
	}

}
