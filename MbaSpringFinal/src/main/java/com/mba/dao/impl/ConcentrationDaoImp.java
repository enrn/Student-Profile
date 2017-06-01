package com.mba.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mba.dao.ConcentrationDao;
import com.mba.entity.Concentration;
import com.mba.util.HibernateUtil;

@Repository
public class ConcentrationDaoImp implements ConcentrationDao {

	@Autowired
	private HibernateUtil hibernateUtil;
	@Override
	public Integer createConcentration(Concentration concentration) {
	
		return (Integer) hibernateUtil.create(concentration);
	}

	@Override
	public Concentration updateConcentration(Concentration concentration) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(concentration);
	}

	@Override
	public void deleteConcentration(Integer conc_id) {
		
		Concentration conc=new Concentration();
		conc.setConcentration_id(conc_id);
		hibernateUtil.delete(conc);
		
	}

	@Override
	public List<Concentration> getAllConcentration() {
		
		return hibernateUtil.fetchAll(Concentration.class);
	}

	@Override
	public Concentration getConcentration(Integer conc_id) {
		
		return hibernateUtil.fetchById(conc_id,Concentration.class);
	}

}
