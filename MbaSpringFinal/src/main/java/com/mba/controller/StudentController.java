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
import com.mba.entity.Student;
import com.mba.entity.StudentAcademicCode;
import com.mba.service.ConcentrationService;
import com.mba.service.StudentForAdvisorService;
import com.mba.service.StudentService;


@Controller
public class StudentController {
	
	@Autowired
	private StudentForAdvisorService sfds;
	@Autowired
    private StudentService studentService;
	@Autowired
	private ConcentrationService concentrationService;
	
	private static final Logger logger = Logger.getLogger(StudentController.class);
	
	@RequestMapping("generateEmail")
    public ModelAndView email(@RequestParam int id, @ModelAttribute Student student) {
    	logger.info("Sending email to student for the Id "+id);
    	student = studentService.getStudent(id);
        return new ModelAndView("EmailForm", "studentObject", student);
    }
	@RequestMapping("Welcome")
	public ModelAndView welcome(){
		 return new ModelAndView("Welcome");
	}
	@RequestMapping("/")
	public ModelAndView Login(){
		 return new ModelAndView("Login");
	}
	
    @RequestMapping("StudentForm")
    public ModelAndView createStudent(@ModelAttribute Student student) {
    	logger.info("Creating Student. Data: "+student);
    	List<Concentration> conc=concentrationService.getAllConcentration();
        return new ModelAndView("StudentForm","concentrationList",conc);
    }
    
    
    @RequestMapping("AddAdvisior")
    public ModelAndView addAdvisior(@ModelAttribute Student student) {
    	logger.info("Creating Student. Data: "+student);
        return new ModelAndView("AddAdvisior");
    }
    @RequestMapping("editStudent")
    public String editStudent(@RequestParam int id, Model model) {
    	logger.info("Editing the student for the Id "+id);
    	model.addAttribute("Concentration",concentrationService.getAllConcentration());
    	model.addAttribute("studentObject",studentService.getStudent(id));
        return ("EditStudent");
    }
    @RequestMapping("updateStudent")
    public ModelAndView updateStudent(@ModelAttribute Student student) {
    	logger.info("Saving the Student. Data : "+student);
        studentService.updateStudent(student);
        return new ModelAndView("redirect:getAllStudents");
    }
    
    @RequestMapping("saveStudent")
    public ModelAndView saveStudent(@ModelAttribute Student student) {
    	logger.info("Saving the Student. Data : "+student);
        studentService.createStudent(student);
        return new ModelAndView("redirect:getAllStudents");
    }
    
    @RequestMapping("deleteStudent")
    public ModelAndView deleteStudent(@RequestParam int id) {
    	logger.info("Deleting the student. Id : "+id);
    	studentService.deleteStudent(id);
        return new ModelAndView("redirect:getAllStudents");
    }
    @RequestMapping("getAllStudentsForAdvisor")
    public ModelAndView getAllStudentsForAdvisor() {
    	logger.info("Getting the all students.");
        List<Student> studentList = sfds.studentForAdvisor();
        
        return new ModelAndView("AdvisorStudentList", "studentList", studentList);
    }
    
    @RequestMapping("getAllStudents")
    public ModelAndView getAllStudents() {
    	logger.info("Getting the all students.");
        List<Student> studentList = studentService.getAllStudents();
        return new ModelAndView("StudentList", "studentList", studentList);
    }
    
    
    @RequestMapping("submitQuestions")
    public ModelAndView studentAnswers(@ModelAttribute StudentAcademicCode studentAnswer) {
    	logger.info("Saving the Student. Data : "+studentAnswer);
        studentService.createAcademicCode(studentAnswer);
        return new ModelAndView("StudentInternalPage");
    }

}
