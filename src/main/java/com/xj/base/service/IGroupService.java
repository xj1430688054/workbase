package com.xj.base.service;

import java.util.List;

import com.xj.base.entity.Group;
import com.xj.base.service.support.IBaseService;

public interface IGroupService extends IBaseService<Group, Integer>{

	void saveOrUpdate(Group group);

	void grant(Integer id, String[] roleIds);
	
	/** 查找个人项目历史 */
	List<Group> findHisUser(Integer id);

	void allo(Integer id, String uid);
	
	/** 根据用户id 查找当前项目组 */
	List<Group> findGroupByUid (Integer id);

	

}
