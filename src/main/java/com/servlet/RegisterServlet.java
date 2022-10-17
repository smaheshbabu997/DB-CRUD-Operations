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
import com.entity.Student;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String dob=req.getParameter("dob");
		String address=req.getParameter("address");
		String qualification=req.getParameter("qualification");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		
		Student student=new Student(name,dob,address,qualification,email,pwd);
		
		StudentDAO dao=new StudentDAO(DBConnect.getConn());
		
		HttpSession session=req.getSession();
		
		boolean f=dao.addStudent(student);
		
		if(f) {
			session.setAttribute("succMsg", "Student Details submit Sucessfully");
			resp.sendRedirect("successreg.jsp");
			//System.out.println("Student details submit Sucessfully");
		}
		else {
			session.setAttribute("errorMsg", "Something wrong on surver");
			resp.sendRedirect("index.jsp");
			//System.out.println("Something wrong on surver");
		}
	}

}
