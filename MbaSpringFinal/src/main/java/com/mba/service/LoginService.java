package com.mba.service;

import java.sql.SQLException;

import com.mba.entity.Advisor;
import com.mba.entity.Student;

public interface LoginService {

	
	public Student isValidUser(Integer Userid, String password) throws SQLException;
	public Advisor isValidAllUser(Integer userId, String password) throws SQLException;

}
