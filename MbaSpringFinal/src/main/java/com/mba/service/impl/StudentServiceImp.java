package com.mba.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mba.dao.Studentdao;
import com.mba.entity.Student;
import com.mba.entity.StudentAcademicCode;
import com.mba.service.StudentService;


@Service
@Transactional
public class StudentServiceImp implements StudentService {

	
	@Autowired
	private Studentdao studentDao;
	
	@Override
	public int createStudent(Student student) {
		// TODO Auto-generated method stub
		return studentDao.createStudent(student);
	}

	@Override
	public Student updateStudent(Student student) {
		// TODO Auto-generated method stub
		return studentDao.updateStudent(student);
	}

	@Override
	public void deleteStudent(int studentid) {
		// TODO Auto-generated method stub
		studentDao.deleteStudent(studentid);
	}

	@Override
	public List<Student> getAllStudents() {
		// TODO Auto-generated method stub
		return studentDao.getAllStudents();
	}

	@Override
	public Student getStudent(int studentid) {
		// TODO Auto-generated method stub
		return studentDao.getStudent(studentid);
	}

	@Override
	public int createAcademicCode(StudentAcademicCode studentAnswer) {
		
		return studentDao.createAcademicCode(studentAnswer);
	}

	@Override
	public Student changePassword(Student student) {
		// TODO Auto-generated method stub
		return studentDao.changePassword(student);
	}

	@Override
	public StudentAcademicCode getAnswer(int studentid) {
		// TODO Auto-generated method stub
		return studentDao.getAnswer(studentid);
	}

}
