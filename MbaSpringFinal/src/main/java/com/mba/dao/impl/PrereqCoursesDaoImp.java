package com.mba.dao.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mba.dao.PreqCoursesDao;
import com.mba.entity.PrereqCourses;
import com.mba.util.HibernateUtil;

@Repository
public class PrereqCoursesDaoImp implements PreqCoursesDao {

	@Autowired
	private HibernateUtil hibernateUtil;
	@Override
	public Integer createPrereq(PrereqCourses preqCourses) {
		
		return (Integer) hibernateUtil.create(preqCourses);
	}

	@Override
	public PrereqCourses updatePrereq(PrereqCourses preqCourses) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(preqCourses);
	}

	@Override
	public void deletePrereq(Integer prereqid) {
		PrereqCourses pc=new PrereqCourses();
		pc.setPrereq_id(prereqid);
		hibernateUtil.delete(pc);
		
		
	}

	@Override
	public List<PrereqCourses> getAllPrereq() {
		return hibernateUtil.fetchAll(PrereqCourses.class);
	}

	@Override
	public PrereqCourses getPrereq(Integer prereqid) {
		
		return hibernateUtil.fetchById(prereqid,PrereqCourses.class);
	}

}
