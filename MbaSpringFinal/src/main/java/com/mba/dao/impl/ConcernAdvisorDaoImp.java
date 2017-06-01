package com.mba.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mba.dao.ConcernAdvisorDao;
import com.mba.entity.ConcernAdvisor;
import com.mba.util.HibernateUtil;

@Repository
public class ConcernAdvisorDaoImp implements ConcernAdvisorDao {

	@Autowired
	private HibernateUtil hibernateUtil;
	@Override
	public Integer createConcernAdvisor(ConcernAdvisor concernAdvisor) {
		
		return  (Integer) hibernateUtil.create(concernAdvisor);
	}

	@Override
	public ConcernAdvisor updateConcernAdvisor(ConcernAdvisor concernAdvisor) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(concernAdvisor);
	}

	@Override
	public void deleteConcernAdvisor(Integer concernAdvisorid) {
		
		ConcernAdvisor ca=new ConcernAdvisor();
		ca.setConcernAdvisor_id(concernAdvisorid);
		hibernateUtil.delete(ca);
	}

	@Override
	public List<ConcernAdvisor> getAllConcernAdvisors() {
		
		return hibernateUtil.fetchAll(ConcernAdvisor.class);
	}

	@Override
	public ConcernAdvisor getConern(Integer concernAdvisorid) {
		
		return hibernateUtil.fetchById(concernAdvisorid,ConcernAdvisor.class);
	}

}
