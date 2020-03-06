package com.xj.base.service;

import java.util.Date;

import com.xj.base.entity.Dept;
import com.xj.base.entity.User;
import com.xj.base.service.support.IBaseService;

/**
 * <p>
 * 部门服务类
 * </p>
 *
 * @author xj
 * @since 2019-03-15
 */
public interface IDeptService extends IBaseService<Dept, Integer>{
	
	/**
	 * 根据部门名字查找部门
	 * @param username
	 * @return
	 */

	void saveOrUpdate(Dept dept);

	Dept findNameById(Integer id);
	



}
