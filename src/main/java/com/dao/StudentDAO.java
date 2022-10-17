package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import com.entity.*;

public class StudentDAO {

	
	private Connection conn;

	public StudentDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	
	public boolean addStudent(Student student) {
		boolean f= false;
		try {
			String sql="insert into std_register(name,dob,address,qualification,email,pwd) values(?,?,?,?,?,?)";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, student.getFullName());
			ps.setString(2,student.getDob());
			ps.setString(3, student.getAddress());
			ps.setString(4, student.getQualification());
			ps.setString(5, student.getEmail());
			ps.setString(6, student.getPwd());
			
			
			
			
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	//Get student details from database--------------------------********
	
	public List<Student> getAllStudent()
	{
		List<Student> list=new ArrayList<Student>();
	
		try {
			String sql="select * from std_register";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			        
			while(rs.next()) {
				Student s= new  Student();
				s.setId(rs.getInt(1));
				s.setFullName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setAddress(rs.getString(4));
				s.setQualification(rs.getString(5));
				s.setEmail(rs.getString(6));
				s.setPwd(rs.getString(7));
				list.add(s);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
	//***************Update student details************************
	
	
	public boolean updateStudent(Student student) {
		boolean f= false;
		try {
			String sql="update student set name=?,dob=?,address=?,qualification=?,email=?,pwd=? where id=?";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, student.getFullName());
			ps.setString(2,student.getDob());
			ps.setString(3, student.getAddress());
			ps.setString(4, student.getQualification());
			ps.setString(5, student.getEmail());
			ps.setString(6, student.getPwd());
			ps.setInt(7, student.getId());
			
			
			
			
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
//***************Delete student details***************
	
	public boolean deleteStudent(int id) {
		boolean f=false;
		
		try {
			
			String sql="delete from std_register where id=?";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			
              ps.setInt(1, id);		
			int i=ps.executeUpdate();
			
			if(i==1) {
				f=true;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}


//***************user Login***********************

public Student login(String em,String psw) {
	Student s=null;
	try {
		
		String sql="select * from std_register where email=? and pwd=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, em);
		ps.setString(2, psw);
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			s=new Student();
			s.setId(rs.getInt(1));
			s.setFullName(rs.getString(2));
			s.setDob(rs.getString(3));
			s.setAddress(rs.getString(4));
			s.setQualification(rs.getString(5));
			s.setEmail(rs.getString(6));
			s.setPwd(rs.getString(7));
		}
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return s;
}
}