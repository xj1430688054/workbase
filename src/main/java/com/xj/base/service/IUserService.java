package com.xj.base.service;

import java.util.List;

import com.xj.base.entity.Group;
import com.xj.base.entity.User;
import com.xj.base.service.support.IBaseService;

/**
 * <p>
 * 用户服务类
 * </p>
 *
 * @author xujian
 * @since 2020-02-28
 */
public interface IUserService extends IBaseService<User, Integer> {

	/**
	 * 根据用户名查找用户
	 * @param username
	 * @return
	 */
	User findByUserName(String username);

	/**
	 * 增加或者修改用户
	 * @param user
	 */
	void saveOrUpdate(User user);

	/**
	 * 给用户分配角色
	 * @param id 用户ID
	 * @param roleIds 角色Ids
	 */
	void grant(Integer id, String[] roleIds);

	String findRoleNameById(Integer id);

	String findNameById(String pid);

	/**查找现在无没有分配的员工 */
	List<User> findNOUser();

	/** 查找现在已经分配的员工 
	 * @param id */
	List<User> findYesUser(Integer id);
	
	/** 查找当前员工所属于的项目组*/
	String findGroupName (Integer id);
	



}
