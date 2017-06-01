package com.mba.controller;

import java.util.List;

//import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mba.entity.PrereqCourses;
import com.mba.service.PrereqCoursesService;

@Controller
public class PrereqCoursesController {
	
	//private static final Logger logger = Logger.getLogger(StudentController.class);
	
	@Autowired
	private PrereqCoursesService prereqService;
	
	@RequestMapping("addPrereqForm")
	public ModelAndView createPrereqForm(){
		return new ModelAndView("AddPrereq");	
	}
	@RequestMapping("createPrereq")
	public ModelAndView createPrereq(@ModelAttribute PrereqCourses prereqCourses){
		
		prereqService.createPrereq(prereqCourses);
		return new ModelAndView("redirect:getAllPrereqCourses");	
	}
	@RequestMapping("getAllPrereqCourses")
	public ModelAndView getAllPrereqCourses(@ModelAttribute PrereqCourses prereqCourses){
		
		List<PrereqCourses> prereqList=prereqService.getAllPrereq();
		return new ModelAndView("AllPrereqList","prereqList",prereqList);	
	}
	
	@RequestMapping("editPrereq")
    public ModelAndView editPrereq(@RequestParam int id, @ModelAttribute PrereqCourses prereqCourses) {
    	prereqCourses = prereqService.getPrereq(id);
        return new ModelAndView("EditPrereq", "PrereqObject", prereqCourses);
    }
    @RequestMapping("updatePrereq")
    public ModelAndView updateStudent(@ModelAttribute PrereqCourses prereqCourses) {
    	//logger.info("Saving the Student. Data : "+student);
    	prereqService.updatePrereq(prereqCourses);
        return new ModelAndView("redirect:getAllPrereqCourses");
    }
	

}
