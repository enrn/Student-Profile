package com.mba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mba.dao.ConcentrationDao;
import com.mba.entity.Concentration;
import com.mba.service.ConcentrationService;

@Service
@Transactional
public class ConcentrationServiceImp implements ConcentrationService {

	@Autowired
	private ConcentrationDao concentrationDao;
	@Override
	public Integer createConcentration(Concentration concentration) {
		// TODO Auto-generated method stub
		return concentrationDao.createConcentration(concentration);
	}

	@Override
	public Concentration updateConcentration(Concentration concentration) {
		// TODO Auto-generated method stub
		return concentrationDao.updateConcentration(concentration);
	}

	@Override
	public void deleteConcentration(Integer conc_id) {
		
		concentrationDao.deleteConcentration(conc_id);
		
	}

	@Override
	public List<Concentration> getAllConcentration() {
		// TODO Auto-generated method stub
		return concentrationDao.getAllConcentration();
	}

	@Override
	public Concentration getConcentration(Integer conc_id) {
		// TODO Auto-generated method stub
		return concentrationDao.getConcentration(conc_id);
	}

}
