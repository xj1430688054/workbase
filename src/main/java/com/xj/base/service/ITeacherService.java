package com.xj.base.service;

import com.xj.base.entity.Reim;
import com.xj.base.service.support.IBaseService;

public interface ITeacherService extends IBaseService<Reim, Integer>{

	String saveOrUpdate(Reim reim);

	void grant(Integer id, String[] roleIds);

}
