package com.mba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mba.dao.PreqCoursesDao;
import com.mba.entity.PrereqCourses;
import com.mba.service.PrereqCoursesService;

@Service
@Transactional
public class PrereqCoursesServiceImp implements PrereqCoursesService {

	@Autowired
	private PreqCoursesDao preqCoursesDao;
	@Override
	public Integer createPrereq(PrereqCourses preqCourses) {
		// TODO Auto-generated method stub
		return preqCoursesDao.createPrereq(preqCourses);
	}

	@Override
	public PrereqCourses updatePrereq(PrereqCourses preqCourses) {
		// TODO Auto-generated method stub
		return preqCoursesDao.updatePrereq(preqCourses);
	}

	@Override
	public void deletePrereq(Integer prereqid) {
		
		PrereqCourses pqc=new PrereqCourses();
		pqc.setPrereq_id(prereqid);
		preqCoursesDao.updatePrereq(pqc);
		
	}

	@Override
	public List<PrereqCourses> getAllPrereq() {
		// TODO Auto-generated method stub
		return preqCoursesDao.getAllPrereq();
	}

	@Override
	public PrereqCourses getPrereq(Integer prereqid) {
		// TODO Auto-generated method stub
		return preqCoursesDao.getPrereq(prereqid);
	}

	
}
