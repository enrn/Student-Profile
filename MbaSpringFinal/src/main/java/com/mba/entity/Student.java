package com.mba.entity;

import java.io.Serializable;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.apache.commons.codec.digest.DigestUtils;

@Entity
@Table(name="tbl_student")
public class Student implements Serializable {
	
	private static final long serialVersionUID = -7988799579036225137L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="student_id")
	private Integer student_id;
	
	@Column
	private String first_name;
	@Column
	private String last_name;
	@Column
	private String address;
	@Column
	private Double phone;
	@Column
	private String ucmo_email;
	@Column
	private String alternate_email;
	@Column
	private String concentration;
	@Column
	private String program_entry_date;
	@Column
	private Integer gre_verbal;
	@Column
	private Integer gre_quantitative;
	@Column
	private Float gpa;
	@Column
	private String password;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = DigestUtils.md5Hex(password);
	}
	public Integer getStudent_id() {
		return student_id;
	}
	public void setStudent_id(Integer student_id) {
		this.student_id = student_id;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Double getPhone() {
		return phone;
	}
	public void setPhone(Double phone) {
		this.phone = phone;
	}
	public String getUcmo_email() {
		return ucmo_email;
	}
	public void setUcmo_email(String ucmo_email) {
		this.ucmo_email = ucmo_email;
	}
	public String getAlternate_email() {
		return alternate_email;
	}
	public void setAlternate_email(String alternate_email) {
		this.alternate_email = alternate_email;
	}
	public String getConcentration() {
		return concentration;
	}
	public void setConcentration(String concentration) {
		this.concentration = concentration;
	}
	public String getProgram_entry_date() {
		return program_entry_date;
	}
	public void setProgram_entry_date(String program_entry_date) {
		this.program_entry_date = program_entry_date;
	}
	public Integer getGre_verbal() {
		return gre_verbal;
	}
	public void setGre_verbal(Integer gre_verbal) {
		this.gre_verbal = gre_verbal;
	}
	public Integer getGre_quantitative() {
		return gre_quantitative;
	}
	public void setGre_quantitative(Integer gre_quantitative) {
		this.gre_quantitative = gre_quantitative;
	}
	public Float getGpa() {
		return gpa;
	}
	public void setGpa(Float gpa) {
		this.gpa = gpa;
	}
	
	@Override
	public String toString() {
		return "Student [student_id=" + student_id + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", address=" + address + ", phone=" + phone + ", ucmo_email=" + ucmo_email + ", alternate_email="
				+ alternate_email + ", concentration=" + concentration + ", program_entry_date=" + program_entry_date
				+ ", gre_verbal=" + gre_verbal + ", gre_quantitative=" + gre_quantitative + ", gpa=" + gpa + "]";
	}

}
