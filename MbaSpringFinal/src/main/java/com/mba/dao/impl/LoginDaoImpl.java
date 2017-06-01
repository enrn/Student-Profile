package com.mba.dao.impl;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mba.dao.LoginDao;
import com.mba.entity.Advisor;
import com.mba.entity.Student;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	DataSource dataSource;
	public DataSource getDataSource() {
		return dataSource;
	}
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	@Override
	public Student isValidUser(Integer UserId, String password){
		Student s=new Student();
		String query="select * from tbl_student where student_id=? and password=?";
		try{
		PreparedStatement ps=dataSource.getConnection().prepareStatement(query);
		ps.setInt(1, UserId);
		ps.setString(2,password);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			String firstName=rs.getString("first_name");
			Integer student_id=rs.getInt("student_id");
			s.setStudent_id(student_id);
			s.setFirst_name(firstName);
			return s;
		}
		else{
			return null;
		}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return s;
	}
	
	
	@Override
	public Advisor isValidAllUser(Integer userId, String password) throws SQLException {
		Advisor ad=new Advisor();
		String query="select * from tbl_advisior where advisor_id=? and password=? and status=?";
		try{
		PreparedStatement ps=dataSource.getConnection().prepareStatement(query);
		ps.setInt(1, userId);
		ps.setString(2,password);
		ps.setString(3,"active");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			Integer id=rs.getInt("advisor_id");
			String fname=rs.getString("first_name");
			String role=rs.getString("role");
			
			ad.setFirst_name(fname);
			ad.setAdvisor_id(id);
			ad.setRole(role);
			return ad;
		}
		else{
			return null;
		}
		}catch(SQLException e){
			e.getMessage();
		}
		return ad;
	}

}
