package com.mba.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mba.dao.StudentForAdvisorDao;
import com.mba.entity.Student;

import java.util.ArrayList;
import java.util.List;

@Repository
public class StudentForAdvisorDaoImp implements StudentForAdvisorDao {

	@Autowired
	DataSource dataSource;
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	@Override
	public List<Student> studentForAdvisor() {
		
		List<Student> studentList=new ArrayList<Student>();
		String query="select * from tbl_student where concentration =(select concentration_name from tbl_concentration where advisor_id=?)";
		
		try{
			PreparedStatement ps=dataSource.getConnection().prepareStatement(query);
			ps.setInt(1, 1);
			System.out.println(query);
			ResultSet rs=ps.executeQuery();
				while(rs.next())
					{
			Student s=new Student();
			String firstName=rs.getString("first_name");
			String LastName=rs.getString("last_name");
			Integer student_id=rs.getInt("student_id");
			String concentration=rs.getString("concentration");
			s.setStudent_id(student_id);
			s.setFirst_name(firstName);
			s.setLast_name(LastName);
			s.setConcentration(concentration);
			studentList.add(s);
			
					}
				return studentList;
			}
		
		catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}

}
