package com.mba.controller;

import java.sql.SQLException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.mba.entity.Advisor;
import com.mba.entity.Student;
import com.mba.service.LoginService;
//import com.mba.service.StudentService;

@Controller
@SessionAttributes("adObject")
public class LoginController {

	@Autowired
	private LoginService loginService;
	//private StudentService studentService;
	//private static final Logger logger = Logger.getLogger(StudentController.class);
	
	@RequestMapping("StudentLoginForm")
	public ModelAndView StudentLoginForm(@ModelAttribute Student student){
	
		return new ModelAndView("StudentLogin");
	}
	@RequestMapping("LoginForm")
	public ModelAndView LoginForm(@ModelAttribute Advisor advisor){
	
		return new ModelAndView("Login");
	}
	
	@RequestMapping("LoginSuccess")
    public ModelAndView AdvisorLogin(HttpServletRequest request,@ModelAttribute Advisor advisor) throws SQLException {
		
		 advisor = loginService.isValidAllUser(advisor.getAdvisor_id(), advisor.getPassword());
		 
		if(advisor.getRole().equals("advisor")){
			//Integer id=Integer.parseInt(request.getParameter("student_id"));
			System.out.println("Login successfull");
			//student=studentService.getStudent(id);
			
			return new ModelAndView("WelcomeAdvisor", "adObject", advisor);
		}
		else if(advisor.getRole().equals("director")){
		
			return new ModelAndView("redirect:getAllStudents");
		}
		
		else{
			return new ModelAndView("Login", "message", "Invalid Userid or password");
		}
        
    }
	
	@RequestMapping("validStudentLogin")
    public ModelAndView studentLogin(HttpServletRequest request,@ModelAttribute Student student) throws SQLException {
		
		 student = loginService.isValidUser(student.getStudent_id(), student.getPassword());
		if(student != null){
			//Integer id=Integer.parseInt(request.getParameter("student_id"));
			System.out.println("Login successfull");
			//student=studentService.getStudent(id);
			return new ModelAndView("WelcomeStudent", "studentObject", student);
		}
		else{
			return new ModelAndView("StudentLogin", "message", "Invalid Userid or password");
		}
        
    }
	
	@RequestMapping("StudentLogout")
	public String studentLogout(){
		
		return "StudentLogin";
		
	}
	@RequestMapping("Logout")
	public String Logout(HttpServletRequest request){
		 HttpSession session=request.getSession();  
		  session.invalidate(); 
		return "Login";
		
	}
}
