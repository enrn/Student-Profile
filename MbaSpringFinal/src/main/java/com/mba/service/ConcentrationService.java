package com.mba.service;

import java.util.List;

import com.mba.entity.Concentration;

public interface ConcentrationService {
	
	public Integer createConcentration(Concentration concentration);
	public Concentration updateConcentration(Concentration concentration);
	public void deleteConcentration(Integer conc_id);
	public List<Concentration> getAllConcentration();
	public Concentration getConcentration(Integer conc_id);


}
