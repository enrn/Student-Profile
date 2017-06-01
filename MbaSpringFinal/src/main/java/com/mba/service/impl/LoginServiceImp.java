package com.mba.service.impl;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mba.dao.LoginDao;
import com.mba.entity.Advisor;
import com.mba.entity.Student;
import com.mba.service.LoginService;

@Service
@Transactional
public class LoginServiceImp implements LoginService{

	@Autowired
	private LoginDao loginDao;
	@Override
	public Student isValidUser(Integer userId, String password) throws SQLException {
		
		return loginDao.isValidUser(userId,password);
	}
	
	@Override
	public Advisor isValidAllUser(Integer userId, String password) throws SQLException {
		
		return loginDao.isValidAllUser(userId,password);
	}

}
