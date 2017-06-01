package com.mba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mba.dao.ConcernAdvisorDao;
import com.mba.entity.ConcernAdvisor;
import com.mba.service.ConcernAdvisorService;

@Service
@Transactional
public class ConcernAdvisorServiceImp implements ConcernAdvisorService {

	@Autowired
	private ConcernAdvisorDao concernAdvisorDao;
	@Override
	public Integer createConcernAdvisor(ConcernAdvisor concernAdvisor) {
		
		return concernAdvisorDao.createConcernAdvisor(concernAdvisor);
	}

	@Override
	public ConcernAdvisor updateConcernAdvisor(ConcernAdvisor concernAdvisor) {
		
		return concernAdvisorDao.updateConcernAdvisor(concernAdvisor);
	}

	@Override
	public void deleteConcernAdvisor(Integer concernAdvisorid) {
		
		concernAdvisorDao.deleteConcernAdvisor(concernAdvisorid);
		
	}

	@Override
	public List<ConcernAdvisor> getAllConcernAdvisors() {
		// TODO Auto-generated method stub
		return concernAdvisorDao.getAllConcernAdvisors();
	}

	@Override
	public ConcernAdvisor getConern(Integer concernAdvisorid) {
		// TODO Auto-generated method stub
		return concernAdvisorDao.getConern(concernAdvisorid);
	}

}
