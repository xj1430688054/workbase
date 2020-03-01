package com.xj.base.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.User;

@Repository
public interface IUserDao extends IBaseDao<User, Integer> {

	User findByUserName(String username);
	
	@Query(nativeQuery = true,value = "select a.name from tb_role a where id = (select b.role_id from tb_user_role b where b.user_id = ?1)")
	String findRoleNameById(Integer id);
	
	@Query(nativeQuery = true,value = "select a.nick_name from tb_user a where a.id = ?1")
	String findNameByid(String pid);
	
	/** 查找目前没有工作的员工*/
	@Query(nativeQuery = true,value = "select a.* from tb_user a where a.id not in (select b.uid from tb_group_role  b where b.gid  in(select c.id  from tb_group c where c.status = '0'))")
	List<User> findNOUser();

	/** 查找当前项目组的员工 */
	@Query(nativeQuery = true,value = "select a.* from tb_user a where a.id in (select b.uid from tb_group_role b where b.gid = ?1)")
	List<User> findYesUser(Integer id);

}
