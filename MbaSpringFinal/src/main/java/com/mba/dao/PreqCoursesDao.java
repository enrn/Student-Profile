package com.mba.dao;

import java.util.List;

import com.mba.entity.PrereqCourses;

public interface PreqCoursesDao {
	
	public Integer createPrereq(PrereqCourses preqCourses);
	public PrereqCourses updatePrereq(PrereqCourses preqCourses);
	public void deletePrereq(Integer prereqid);
	public List<PrereqCourses> getAllPrereq();
	public PrereqCourses getPrereq(Integer prereqid);
	
}
