package com.xj.base.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Sche;

@Repository
public interface IScheDao extends IBaseDao<Sche, Integer>{


	/** 查找部门经历可以看的日报*/
	@Query(nativeQuery = true, value = "select b.* from tb_sche b where b.uid in (select c.id from tb_user c where did = ?1)  order by  ?#{#pageable}" ,
			countQuery = "select b.* from tb_sche b where b.uid in (select c.id from tb_user c where did = ?1) order by  ?#{#pageable}")
//	@Query(nativeQuery = true, value = "select * from tb_sche b where b.uid in (select c.id from tb_user c where did = ?1) and order by  ?#{#pageable}")
//	@Query(nativeQuery = true, value = "select * from tb_sche b where 1=1 and order by  ?#{#pageable}" ,countQuery = "select count(*) from tb_sche b where 1=1 " )
	Page<Sche> findByUserDept(Integer did, Pageable pageable);

	/** 查找员工和组长可以看的日报*/
//	@Query(nativeQuery = true, value = "select * from tb_sche b where b.uid in (select d.uid from tb_group_user  d where gid = ?1) and order by  ?#{#pageable}")
	@Query(nativeQuery = true, value = "select b.* from tb_sche b where b.uid in (select d.uid from tb_group_user  d where gid = ?1)  order by  ?#{#pageable}"
			,countQuery = "select b.* from tb_sche b where b.uid in (select d.uid from tb_group_user  d where gid = ?1) order by  ?#{#pageable}")
//	@Query(nativeQuery = true, value = "select * from tb_sche b where 1=1 and order by  ?#{#pageable}" ,countQuery = "select count(*) from tb_sche b where 1=1")

	Page<Sche> findByGidElse(Integer gid, Pageable pageable);

	
	

}
