package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import com.entity.*;
public class studentlistDAO {

	private Connection conn;

	public studentlistDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public List<studentlist> getAllStudent1()
	{
		List<studentlist> list=new ArrayList<studentlist>();
	
		try {
			String sql="select * from studentlist";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			        
			while(rs.next()) {
				studentlist s= new  studentlist();
				s.setId(rs.getInt(1));
				s.setFullName(rs.getString(2));
				s.setAddress(rs.getString(3));
				list.add(s);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	//add student in insert servlet***************
	
	public boolean addStudent(studentlist studentlist) {
		boolean f= false;
		try {
			String sql="insert into studentlist(fullName,address) values(?,?)";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, studentlist.getFullName());
			ps.setString(2, studentlist.getAddress());		
			
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
	
	/*Delete data from the table*****************/
	
	
	public boolean deleteStudent(int id) {
		boolean f=false;
		
		try {
			
			String sql="delete from studentlist where id=?";
			
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

	
	/* update data into the table */
	
	public boolean updateStudent(studentlist student) {
		boolean f= false;
		try {
			String sql="update studentlist set fullName=?,address=? where id=?";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, student.getFullName());
			
			ps.setString(2, student.getAddress());
			ps.setInt(3, student.getId());
			
				
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
	
	//***************Student data getbyid*****************
	
		public studentlist getDetailsById(int id) {
			studentlist s=null;
			try {
				String sql="select * from studentlist where id=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1, id);
				

				ResultSet rs=ps.executeQuery();
				
				while(rs.next()) {
					s=new studentlist();
					s.setId(rs.getInt(1));
					s.setFullName(rs.getString(2));
					
					s.setAddress(rs.getString(3));
					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return s;
		}

}
