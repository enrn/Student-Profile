package com.mba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mba.dao.StudentForAdvisorDao;
import com.mba.entity.Student;
import com.mba.service.StudentForAdvisorService;

@Service
@Transactional
public class StudentForAdvisorServiceImp implements StudentForAdvisorService {

	@Autowired
	private StudentForAdvisorDao sfd;
	@Override
	public List<Student> studentForAdvisor() {
		// TODO Auto-generated method stub
		return sfd.studentForAdvisor();
	}

}
