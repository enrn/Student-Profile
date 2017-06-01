package com.mba.entity;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_concentration")
public class Concentration {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="concentration_id")
	private Integer concentration_id;
	
	@Column
	private String concentration_name;
	@Column
	private String degree_code;
	@Column
	private String status;
	@Column
	private Integer advisor_id;
	
	
	public Integer getConcentration_id() {
		return concentration_id;
	}
	public void setConcentration_id(Integer concentration_id) {
		this.concentration_id = concentration_id;
	}
	public String getConcentration_name() {
		return concentration_name;
	}
	public void setConcentration_name(String concentration_name) {
		this.concentration_name = concentration_name;
	}
	public String getDegree_code() {
		return degree_code;
	}
	public void setDegree_code(String degree_code) {
		this.degree_code = degree_code;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Integer getAdvisor_id() {
		return advisor_id;
	}
	public void setAdvisor_id(Integer advisor_id) {
		this.advisor_id = advisor_id;
	}
	
	
}
