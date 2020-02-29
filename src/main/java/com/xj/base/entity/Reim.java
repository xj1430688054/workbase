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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.xj.base.entity.support.BaseEntity;

import lombok.Data;

@Data
@Entity
@Table(name = "tb_reim")
public class Reim extends BaseEntity{
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
	private Integer id;
	
	/** 附件url*/
	private String url;
	
	/** 审批名称*/
	private String name;
	
	/** 状态0表示未审批，1表示审批同意 2表示不同意 */
	private String status;
	
	/** 金额*/
	private String amount;
	
	/** 申请人id*/
	private String uid;

	/** 审批人id*/
	private String pid;

	/** 申请时间*/
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	
	/** 审批时间*/
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
	private Date updateTime;
	
	@Transient
	private String uname;
	@Transient
	private String pname;



	

	
}