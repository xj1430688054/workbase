package com.xj.base.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.xj.base.dao.IReimDao;
import com.xj.base.dao.support.IBaseDao;
import com.xj.base.entity.Reim;
import com.xj.base.entity.Role;
import com.xj.base.entity.User;
import com.xj.base.service.IReimService;
import com.xj.base.service.IRoleService;
import com.xj.base.service.support.impl.BaseServiceImpl;
import com.xj.base.vo.ZtreeView;

/**
 * <p>
 * 资源表 服务实现类
 * </p>
 *
 * @author xujian
 * @since 2020-02-28
 */
@Service
public class ReimServiceImpl extends BaseServiceImpl<Reim, Integer>
		implements IReimService {

	@Autowired
	private IReimDao reimDao;

	@Autowired
	private IRoleService roleService;

	@Override
	public IBaseDao<Reim, Integer> getBaseDao() {
		return this.reimDao;
	}



	@Override
	@CacheEvict(value = "reimCache")
	public void saveOrUpdate(Reim reim, HttpServletRequest request) {
		if(reim.getId() != null){
			Reim dbReim = find(reim.getId());
			User user = (User)request.getAttribute("users");
			dbReim.setPid(String.valueOf(user.getId()));

			update(dbReim);
		}else{
			reim.setCreateTime(new Date());
			reim.setUpdateTime(new Date());
			save(reim);
		}
	}


	
}
