package com.mba.entity;

import java.io.Serializable;


import javax.persistence.Column;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tbl_advisior")
public class Advisor implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="advisor_id")
	private Integer advisor_id;
	
	@Column
	private String first_name;
	@Column
	private String last_name;
	@Column
	private String email;
	@Column
	private Long phone;
	@Column
	private String department;
	@Column
	private String status;
	@Column
	private String password;
	@Column
	private String role;
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getAdvisor_id() {
		return advisor_id;
	}
	public void setAdvisor_id(Integer advisor_id) {
		this.advisor_id = advisor_id;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getPhone() {
		return phone;
	}
	public void setPhone(Long phone) {
		this.phone = phone;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Advisor [advisor_id=" + advisor_id + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", email=" + email + ", phone=" + phone + ", department=" + department + ", status=" + status + "]";
	}
}
