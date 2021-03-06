package com.xj.base.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.xj.base.entity.support.BaseEntity;

import lombok.Data;

@Data
@Entity
@Table(name = "tb_group")
public class Group extends BaseEntity{
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 角色id
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Integer id;

	/**
	 * 项目名字
	 */
	private String name;
	
	/** 项目描述 */
	private String detail;
	
	/** 项目状态 0 未完结 1 完结*/
	private Integer status;
	
	/** 有效状态 */
	private Integer validstatus;
	
	
	@JsonIgnoreProperties(value = {"roles"})
	@JSONField(serialize = false)
	@ManyToMany(cascade = { CascadeType.REFRESH }, fetch = FetchType.LAZY)
	@JoinTable(name = "tb_group_user", joinColumns = { @JoinColumn(name = "gid") }, inverseJoinColumns = { @JoinColumn(name = "uid") })
	private java.util.Set<User> users;

	
	/**
	 * 创建时间
	 */
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;

	/**
	 * 更新时间
	 */
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
	private Date updateTime;
	
	/** 组长id */
	private Integer leader;
	
	/** 组长名字*/
	private String lname;

	


//	public void setUsers(java.util.Set<User> users) {
//		this.users = users;
//	}
	
	
  
	
	


}
