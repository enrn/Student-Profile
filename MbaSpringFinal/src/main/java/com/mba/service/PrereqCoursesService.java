package com.mba.service;

import java.util.List;

import com.mba.entity.PrereqCourses;

public interface PrereqCoursesService {

	public Integer createPrereq(PrereqCourses preqCourses);
	public PrereqCourses updatePrereq(PrereqCourses preqCourses);
	public void deletePrereq(Integer prereqid);
	public List<PrereqCourses> getAllPrereq();
	public PrereqCourses getPrereq(Integer prereqid);
	
}
