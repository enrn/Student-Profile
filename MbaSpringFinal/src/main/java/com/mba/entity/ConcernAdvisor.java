package com.mba.entity;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_concernadvisor")
public class ConcernAdvisor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ConcernAdvisor_id")
	private Integer ConcernAdvisor_id;
	@Column
	private String Advisor_id;
	@Column
	private String Concentration_id;
	
	public Integer getConcernAdvisor_id() {
		return ConcernAdvisor_id;
	}
	public void setConcernAdvisor_id(Integer concernAdvisor_id) {
		ConcernAdvisor_id = concernAdvisor_id;
	}
	public String getAdvisor_id() {
		return Advisor_id;
	}
	public void setAdvisor_id(String advisor_id) {
		Advisor_id = advisor_id;
	}
	public String getConcentration_id() {
		return Concentration_id;
	}
	public void setConcentration_id(String concentration_id) {
		Concentration_id = concentration_id;
	}
	
	
	
	
	
	

}
