package com.mba.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_prereq")
public class PrereqCourses {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="prereq_id")
	private Integer prereq_id;
	private String prereq_name;
	private String prereq_number;
	private String prereq_prefix;
	private String status;
	
	public Integer getPrereq_id() {
		return prereq_id;
	}
	public void setPrereq_id(Integer prereq_id) {
		this.prereq_id = prereq_id;
	}
	public String getPrereq_name() {
		return prereq_name;
	}
	public void setPrereq_name(String prereq_name) {
		this.prereq_name = prereq_name;
	}
	public String getPrereq_number() {
		return prereq_number;
	}
	public void setPrereq_number(String prereq_number) {
		this.prereq_number = prereq_number;
	}
	public String getPrereq_prefix() {
		return prereq_prefix;
	}
	public void setPrereq_prefix(String prereq_prefix) {
		this.prereq_prefix = prereq_prefix;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	

}
