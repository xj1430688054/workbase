package com.xj.base.dao;


import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Dept;

@Repository
public interface IDeptDao extends IBaseDao<Dept, Integer>{

	Dept findByName(String name);
	
//	@Query(nativeQuery = true,value = "select name from tb_dept where id = ?1")
	Dept findNameById(Integer id);
	

	
}
