package com.xj.base.service.impl;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import com.xj.base.dao.IRoleDao;
import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Resource;
import com.xj.base.entity.Role;
import com.xj.base.service.IResourceService;
import com.xj.base.service.IRoleService;
import com.xj.base.service.support.impl.BaseServiceImpl;

/**
 * <p>
 * 角色表  服务实现类
 * </p>
 *
 * @author xujian
 * @since 2020-02-28
 */
@Service
public class RoleServiceImpl extends BaseServiceImpl<Role, Integer> implements IRoleService {

	@Autowired
	private IRoleDao roleDao;
	@Autowired
	private IResourceService resourceService;
	
	@Override
	public IBaseDao<Role, Integer> getBaseDao() {
		return this.roleDao;
	}

	@Override
	public void saveOrUpdate(Role role) {
		if(role.getId() != null){
			Role dbRole = find(role.getId());
			dbRole.setUpdateTime(new Date());
			dbRole.setName(role.getName());
			dbRole.setDescription(role.getDescription());
			dbRole.setUpdateTime(new Date());
			dbRole.setStatus(role.getStatus());
			update(dbRole);
		}else{
			role.setCreateTime(new Date());
			role.setUpdateTime(new Date());
			save(role);
		}
	}

	
	
	@Override
	public void delete(Integer id) {
		Role role = find(id);
		Assert.state(!"administrator".equals(role.getRoleKey()),"超级管理员角色不能删除");
		super.delete(id);
	}

	@Override
	public void grant(Integer id, String[] resourceIds) {
		Role role = find(id);
		Assert.notNull(role, "角色不存在");
		
		Assert.state(!"administrator".equals(role.getRoleKey()),"超级管理员角色不能进行资源分配");
		Resource resource;
		Set<Resource> resources = new HashSet<Resource>();
		if(resourceIds != null){
			for (int i = 0; i < resourceIds.length; i++) {
				if(StringUtils.isBlank(resourceIds[i]) || "0".equals(resourceIds[i])){
					continue;
				}
				Integer rid = Integer.parseInt(resourceIds[i]);
				resource = resourceService.find(rid);
				resources.add(resource);
			}
		}
		role.setResources(resources);
		update(role);
	}
	
}
