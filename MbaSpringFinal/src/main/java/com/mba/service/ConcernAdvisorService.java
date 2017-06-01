package com.mba.service;

import java.util.List;

import com.mba.entity.ConcernAdvisor;

public interface ConcernAdvisorService {
	
	public Integer createConcernAdvisor(ConcernAdvisor concernAdvisor);
	public ConcernAdvisor updateConcernAdvisor(ConcernAdvisor concernAdvisor);
	public void deleteConcernAdvisor(Integer concernAdvisorid);
	public List<ConcernAdvisor> getAllConcernAdvisors();
	public ConcernAdvisor getConern(Integer concernAdvisorid);

}
