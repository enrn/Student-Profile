package com.mba.service;

import java.util.List;



import com.mba.entity.Student;
import com.mba.entity.StudentAcademicCode;

public interface StudentService {

	public int createStudent(Student student);
	public Student updateStudent(Student student);
	public void deleteStudent(int studentid);
	public List<Student> getAllStudents();
	public Student getStudent(int studentid);
	public int createAcademicCode(StudentAcademicCode studentAnswer);
	public StudentAcademicCode getAnswer(int studentid);
	public Student changePassword(Student student);
}
