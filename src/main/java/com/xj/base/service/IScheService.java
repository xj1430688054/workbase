package com.xj.base.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;

import com.xj.base.entity.Sche;
import com.xj.base.service.support.IBaseService;

public interface IScheService extends IBaseService<Sche, Integer>{

	void saveOrUpdate(Sche sche, HttpServletRequest request);

	Page<Sche> findByUser(Pageable pageable);



}
