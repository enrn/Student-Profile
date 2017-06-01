package com.mba.dao.impl;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mba.dao.Studentdao;
import com.mba.entity.Student;
import com.mba.entity.StudentAcademicCode;
import com.mba.util.HibernateUtil;

@Repository
public class StudentDaoImp implements Studentdao {

	public StudentDaoImp(){
		System.out.println("studentDAOImp");
	}
	@Autowired
	private HibernateUtil hibernateUtil;
	
	@Override
	public int createStudent(Student student) {
		// TODO Auto-generated method stub
		return (int) hibernateUtil.create(student);
	}

	@Override
	public Student updateStudent(Student student) {
		// TODO Auto-generated method stub
		return hibernateUtil.update(student);
	}

	@Override
	public void deleteStudent(int studentid) {
		// TODO Auto-generated method stub
		Student student=new Student();
		student.setStudent_id(studentid);
		hibernateUtil.delete(student);
		
	}

	@Override
	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchAll(Student.class);
	}

	@Override
	public Student getStudent(int studentid) {
		// TODO Auto-generated method stub
		return hibernateUtil.fetchById(studentid,Student.class);
	}

	@Override
	public int createAcademicCode(StudentAcademicCode studentAnswer) {
		
		return (int) hibernateUtil.create(studentAnswer);
	}

	@Override
	public Student changePassword(Student student) {
		return hibernateUtil.update(student);
	}

	@Override
	public StudentAcademicCode getAnswer(int studentid) {
		
		return hibernateUtil.fetchById(studentid, StudentAcademicCode.class);
	}
	
	
	

}
