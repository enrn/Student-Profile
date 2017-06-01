package com.mba.service;

import java.util.List;

import com.mba.entity.Advisor;
import com.mba.entity.AdvisorNote;

public interface AdvisorService {

	public Integer createAdvisor(Advisor advisor);
	public Advisor updateAdvisor(Advisor advisor);
	public void deleteAdvisor(Integer advisorid);
	public List<Advisor> getAllAdvisors();
	public Advisor getAdvisor(Integer advisorid);
	
	public Integer createAdvisorNote(AdvisorNote advisornote);
	public List<AdvisorNote> getAllAdvisorsNotes();
	public AdvisorNote getAdvisorNote(Integer id);
}
