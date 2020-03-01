package com.xj.base.service;

import com.xj.base.entity.Group;
import com.xj.base.service.support.IBaseService;

public interface IGroupService extends IBaseService<Group, Integer>{

	void saveOrUpdate(Group group);

	void grant(Integer id, String[] roleIds);

}
