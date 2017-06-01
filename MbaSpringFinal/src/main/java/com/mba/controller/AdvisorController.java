package com.mba.controller;

import java.util.List;



import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mba.entity.Advisor;
import com.mba.entity.AdvisorNote;
import com.mba.service.AdvisorService;
import com.mba.service.PrereqCoursesService;
import com.mba.service.StudentService;

@Controller
public class AdvisorController {
	
	@Autowired
	private AdvisorService advisorService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private PrereqCoursesService prereqService;
	private static final Logger logger = Logger.getLogger(AdvisorController.class);
	
	 @RequestMapping("addAdvisior")
	    public ModelAndView addAdvisior(@ModelAttribute Advisor advisor) {
	    	logger.info("Creating Advisor. Data: "+advisor);
	        return new ModelAndView("AddAdvisior");
	    }
	 @RequestMapping("saveAdvisor")
	    public ModelAndView saveAdvisor(@ModelAttribute Advisor advisor) {
	    	logger.info("Saving the Advisor. Data : "+advisor);
	    	advisorService.createAdvisor(advisor);
	        return new ModelAndView("redirect:getAllAdvisors");
	    }

	 @RequestMapping("editAdvisor")
	    public ModelAndView editAdvisor(@RequestParam int id, @ModelAttribute Advisor advisor) {
	    	logger.info("Editing the Advisor for the Id "+id);
	    	advisor = advisorService.getAdvisor(id);
	        return new ModelAndView("EditAdvisor", "advisorObject", advisor);
	    }
	 @RequestMapping("updateAdvisor")
	    public ModelAndView updateAdvisor(@ModelAttribute Advisor advisor) {
	    	logger.info("Saving the Student. Data : "+advisor);
	    	advisorService.updateAdvisor(advisor);
	        return new ModelAndView("redirect:getAllAdvisors");
	    }
	 
	 @RequestMapping("deleteAdvisor")
	    public ModelAndView deleteAdvisor(@RequestParam int id) {
	    	logger.info("Deleting the Advisor. Id : "+id);
	    	advisorService.deleteAdvisor(id);
	        return new ModelAndView("redirect:getAllAdvisors");
	    }
	    @RequestMapping("getAllAdvisors")
	    public ModelAndView getAllAdvisor() {
	    	logger.info("Getting the all Advisors.");
	        List<Advisor> advisorList = advisorService.getAllAdvisors();
	        return new ModelAndView("AdvisorList", "advisorList", advisorList);
	    }
	    
	    @RequestMapping("reviewProfile")
	    public String reviewProfile(@RequestParam Integer id,Model model) {
	    	logger.info("Getting the all Student Details.");
	    	model.addAttribute("student",studentService.getStudent(id));
	    	model.addAttribute("answer",studentService.getAnswer(id));
	    	model.addAttribute("prereq",prereqService.getAllPrereq());
	       // List<Advisor> advisorList = advisorService.getAllAdvisors();
	        return ("ReviewProfileByAdvisor");
	    }	    
	    @RequestMapping("saveAdvisorNote")
	    public ModelAndView saveAdvisorNote(@ModelAttribute AdvisorNote advisornote) {
	    	logger.info("Saving the Advisor. Data : "+advisornote);
	    	advisorService.createAdvisorNote(advisornote);
	        return new ModelAndView("redirect:getAllAdvisorsNote");
	    }
	    @RequestMapping("getAllAdvisorsNote")
	    public ModelAndView getAllAdvisorsNote() {
	    	logger.info("Getting the all Advisors notes.");
	        List<AdvisorNote> advisorNoteList = advisorService.getAllAdvisorsNotes();
	        return new ModelAndView("AdvisorNoteList", "noteList", advisorNoteList);
	    }
	    //changing password for advisor
	    @RequestMapping("changePasswordByAdvisor")
	    public ModelAndView changePasswordByAdvisor(@ModelAttribute Advisor advisor) {
	    	logger.info("Creating Advisor. Data: "+advisor);
	        return new ModelAndView("ChangePassword");
	    }
	    @RequestMapping("updateChangePasswordByAdvisor")
	    public ModelAndView updateChangePasswordByAdvisor(@ModelAttribute Advisor advisor) {
	    	logger.info("Saving the Student. Data : "+advisor);
	    	advisorService.updateAdvisor(advisor);
	        return new ModelAndView("WelcomeAdvisor","message","successfully updated");
	    }
}
