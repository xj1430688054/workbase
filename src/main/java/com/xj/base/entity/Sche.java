package com.xj.base.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.alibaba.fastjson.annotation.JSONField;
import com.xj.base.entity.support.BaseEntity;

import lombok.Data;

@Data
@Entity
@Table(name = "tb_sche")
public class Sche extends BaseEntity{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id", nullable = false)
    private Integer id;

	private Integer uid;
	
	private String Name;
	
	/** 日程总结 */
	private String summary;
	
	/** 日程总结状态*/
	private Integer status;
	
	@JSONField(format = "yyyy-MM-dd")
	private Date scheDate;
	
	@JSONField(format = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	
	@Transient
	private String uname;
	
	@Transient
	private String coname;
}
