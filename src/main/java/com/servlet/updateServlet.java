package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.StudentDAO;
import com.dao.studentlistDAO;
import com.entity.Student;
import com.entity.studentlist;
@WebServlet("/updatedate")
public class updateServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
		int id=Integer.parseInt(req.getParameter("id"));
		String fullName=req.getParameter("fullName");
		String address=req.getParameter("address");

		studentlist s= new  studentlist();
		s.setId(id);
		s.setFullName(fullName);	
		
		s.setAddress(address);
		
		
		studentlistDAO dao=new studentlistDAO(DBConnect.getConn());
		
		boolean f=dao.updateStudent(s);
		
		HttpSession session=req.getSession();
		
		
		if(f) {
			session.setAttribute("succMsg", "Student Details Update Sucessfully");
			resp.sendRedirect("successreg.jsp");
		//	System.out.println("Student details submit Sucessfully");
		}
		else {
			session.setAttribute("errorMsg", "Something wrong on surver");
			resp.sendRedirect("index1.jsp");
			//System.out.println("Something wrong on surver");
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	

	}
}
