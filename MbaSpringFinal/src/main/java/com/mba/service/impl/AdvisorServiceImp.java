package com.mba.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mba.dao.AdvisorDao;
import com.mba.entity.Advisor;
import com.mba.entity.AdvisorNote;
import com.mba.service.AdvisorService;

@Service
@Transactional

public class AdvisorServiceImp implements AdvisorService {

	@Autowired
	private AdvisorDao advisorDao;
	@Override
	public Integer createAdvisor(Advisor advisor) {
		// TODO Auto-generated method stub
		return advisorDao.createAdvisor(advisor);
	}

	@Override
	public Advisor updateAdvisor(Advisor advisor) {
		// TODO Auto-generated method stub
		return advisorDao.updateAdvisor(advisor);
	}

	@Override
	public void deleteAdvisor(Integer advisorid) {
		advisorDao.deleteAdvisor(advisorid);
		
	}

	@Override
	public List<Advisor> getAllAdvisors() {
		// TODO Auto-generated method stub
		return advisorDao.getAllAdvisors();
	}

	@Override
	public Advisor getAdvisor(Integer advisorid) {
		// TODO Auto-generated method stub
		return advisorDao.getAdvisor(advisorid);
	}

	@Override
	public Integer createAdvisorNote(AdvisorNote advisornote) {
		
		return advisorDao.createAdvisorNote(advisornote);
	}

	@Override
	public List<AdvisorNote> getAllAdvisorsNotes() {
		// TODO Auto-generated method stub
		return advisorDao.getAllAdvisorsNotes();
	}

	@Override
	public AdvisorNote getAdvisorNote(Integer id) {
		// TODO Auto-generated method stub
		return advisorDao.getAdvisorNote(id);
	}

}
