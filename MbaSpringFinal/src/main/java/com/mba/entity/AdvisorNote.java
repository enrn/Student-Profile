package com.mba.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_advisor_note")
public class AdvisorNote implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="advisorNote_id")
	private Integer advisorNote_id;
	
	private Integer Student_id;
	private String prereq_met;
	private String mark_date;
	private String notes;
	
	public Integer getAdvisorNote_id() {
		return advisorNote_id;
	}
	public void setAdvisorNote_id(Integer advisorNote_id) {
		this.advisorNote_id = advisorNote_id;
	}
	public Integer getStudent_id() {
		return Student_id;
	}
	public void setStudent_id(Integer student_id) {
		Student_id = student_id;
	}
	public String getPrereq_met() {
		return prereq_met;
	}
	public void setPrereq_met(String prereq_met) {
		this.prereq_met = prereq_met;
	}
	public String getMark_date() {
		return mark_date;
	}
	public void setMark_date(String mark_date) {
		this.mark_date = mark_date;
	}
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
}
