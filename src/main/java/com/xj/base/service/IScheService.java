package com.xj.base.service;

import javax.servlet.http.HttpServletRequest;

import com.xj.base.entity.Sche;
import com.xj.base.service.support.IBaseService;

public interface IScheService extends IBaseService<Sche, Integer>{

	void saveOrUpdate(Sche sche, HttpServletRequest request);



}
