package com.mba.dao;

import java.util.List;

import com.mba.entity.ConcernAdvisor;

public interface ConcernAdvisorDao {

	public Integer createConcernAdvisor(ConcernAdvisor concernAdvisor);
	public ConcernAdvisor updateConcernAdvisor(ConcernAdvisor concernAdvisor);
	public void deleteConcernAdvisor(Integer concernAdvisorid);
	public List<ConcernAdvisor> getAllConcernAdvisors();
	public ConcernAdvisor getConern(Integer concernAdvisorid);
}
