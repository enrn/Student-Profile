package com.mba.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_Academic_conduct")
public class StudentAcademicCode {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="academic_code_id")
	private Integer academic_code_id;
	
	private Integer Student_id;
	private String Academic_code_read;
	private String Answer1;
	private String Answer2;
	private String Answer3;
	
	public Integer getAcademic_code_id() {
		return academic_code_id;
	}
	public void setAcademic_code_id(Integer academic_code_id) {
		this.academic_code_id = academic_code_id;
	}
	public Integer getStudent_id() {
		return Student_id;
	}
	public void setStudent_id(Integer student_id) {
		Student_id = student_id;
	}
	public String getAcademic_code_read() {
		return Academic_code_read;
	}
	public void setAcademic_code_read(String academic_code_read) {
		Academic_code_read = academic_code_read;
	}
	public String getAnswer1() {
		return Answer1;
	}
	public void setAnswer1(String answer1) {
		Answer1 = answer1;
	}
	public String getAnswer2() {
		return Answer2;
	}
	public void setAnswer2(String answer2) {
		Answer2 = answer2;
	}
	public String getAnswer3() {
		return Answer3;
	}
	public void setAnswer3(String answer3) {
		Answer3 = answer3;
	}
	
	@Override
	public String toString() {
		return "StudentAcademicCode [academic_code_id=" + academic_code_id + ", Student_id=" + Student_id
				+ ", Academic_code_read=" + Academic_code_read + ", Answer1=" + Answer1 + ", Answer2=" + Answer2
				+ ", Answer3=" + Answer3 + "]";
	}

}
