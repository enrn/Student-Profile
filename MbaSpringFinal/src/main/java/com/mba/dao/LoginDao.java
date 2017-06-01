package com.mba.dao;

import java.sql.SQLException;

import com.mba.entity.Advisor;
import com.mba.entity.Student;

public interface LoginDao {
	
	public Student isValidUser(Integer userId, String password) throws SQLException;
	public Advisor isValidAllUser(Integer userId, String password) throws SQLException;

}
