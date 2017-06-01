package com.mba.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mba.dao.AdvisorDao;
import com.mba.entity.Advisor;
import com.mba.entity.AdvisorNote;
import com.mba.util.HibernateUtil;

@Repository
public class AdvisorDaoImp implements AdvisorDao {

	@Autowired
	private HibernateUtil hibernateUtil;
	
	@Override
	public Integer createAdvisor(Advisor advisor) {
		// TODO Auto-generated method stub
		return (Integer) hibernateUtil.create(advisor);
	}

	@Override
	public Advisor updateAdvisor(Advisor advisor) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(advisor);
	}

	@Override
	public void deleteAdvisor(Integer advisorid) {
		Advisor advisor=new Advisor();
		advisor.setAdvisor_id(advisorid);
		hibernateUtil.delete(advisor);
		
	}

	@Override
	public List<Advisor> getAllAdvisors() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(Advisor.class);
	}

	@Override
	public Advisor getAdvisor(Integer advisorid) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(advisorid,Advisor.class);
	}

	@Override
	public Integer createAdvisorNote(AdvisorNote advisornote) {
		// TODO Auto-generated method stub
		return (Integer) hibernateUtil.create(advisornote);
	}

	@Override
	public List<AdvisorNote> getAllAdvisorsNotes() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(AdvisorNote.class);
	}

	@Override
	public AdvisorNote getAdvisorNote(Integer id) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(id,AdvisorNote.class);
	}

}
