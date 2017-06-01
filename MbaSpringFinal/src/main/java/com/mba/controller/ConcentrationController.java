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

import com.mba.entity.Concentration;
import com.mba.entity.ConcernAdvisor;
import com.mba.service.AdvisorService;
import com.mba.service.ConcentrationService;
import com.mba.service.ConcernAdvisorService;

@Controller
public class ConcentrationController {
	
	@Autowired
    private ConcentrationService concentrationService;
	@Autowired
	private AdvisorService advisorService;
	@Autowired
	private ConcernAdvisorService concernAdvisorService;
	private static final Logger logger = Logger.getLogger(StudentController.class);
	
	@RequestMapping("addConcentration")
    public String addConcentration(Model model) {
    	logger.info("Creating Concentration. Data: ");
    	model.addAttribute("advisor", advisorService.getAllAdvisors());
        return ("AddConcentration");
    }
	@RequestMapping("createNewConcentration")
	public ModelAndView createNewConcentration(@ModelAttribute Concentration concentration){
		concentrationService.createConcentration(concentration);
		return new ModelAndView("redirect:getAllConcentration");
		
	}
	@RequestMapping("getAllConcentration")
	public ModelAndView getAllConcentration(){
		logger.info("Getting all Concentration. Data: ");
		List<Concentration> conc=concentrationService.getAllConcentration();
		return new ModelAndView("ConcentrationList","concentrationList",conc);
		
	}
	
	@RequestMapping("editConcentration")
    public String editConcentration(@RequestParam int id, Model model) {
    	logger.info("Editing the concentration for the Id "+id);
    	
    	model.addAttribute("ConcObject",concentrationService.getConcentration(id));
    	model.addAttribute("advisorList",advisorService.getAllAdvisors());
        return ("EditConcentration");
    }
 @RequestMapping("updateConcentration")
    public ModelAndView updateConcentration(@ModelAttribute Concentration concentration) {
    	logger.info("Saving the Student. Data : "+concentration);
    	concentrationService.updateConcentration(concentration);
        return new ModelAndView("redirect:getAllConcentration");
    }
	
	@RequestMapping("deleteConcentration")
	public ModelAndView deleteConcentration(@RequestParam int id){
		logger.info("Deleting Concentration. Data: "+id);
		concentrationService.deleteConcentration(id);
		return new ModelAndView("redirect:getAllConcentration");
		
	}
	//@SuppressWarnings("null")
	@RequestMapping("addConcentrationToAdvisor")
    public String addConcentrationToAdvisor(Model model) {
    	logger.info("Assigning Concentration. Data: ");
    	
    	//List<Concentration> concentration=concentrationService.getAllConcentration();
    	//List<Advisor> advisor=advisorService.getAllAdvisors();
    	//Model model = null;
    	//HashMap<String, Object> model = new HashMap<String, Object>();
    	model.addAttribute("concentration",concentrationService.getAllConcentration());
    	model.addAttribute("advisor", advisorService.getAllAdvisors());
        return ("AssignConctoAdvisior");
    }
	@RequestMapping("saveConcenToAdvisor")
	public ModelAndView saveConcenToAdvisor(@ModelAttribute ConcernAdvisor concernAdvisor){
		concernAdvisorService.createConcernAdvisor(concernAdvisor);
		return new ModelAndView("AssignConctoAdvisior");
		
	} 
	@RequestMapping("getAllAssignConcentration")
	public ModelAndView getAllAssignConcentration(){
		
		return new ModelAndView("redirect:getAllConcernAdvisors");
	}
	
	@RequestMapping("getAllConcernAdvisors")
	public ModelAndView getAllConcernAdvisors(){
		logger.info("Getting all Concentration with Advisor. Data: ");
		List<ConcernAdvisor> concAdv=concernAdvisorService.getAllConcernAdvisors();
		return new ModelAndView("ConcAdvisorList","concAdvisorList",concAdv);
		
	}
	

}
   