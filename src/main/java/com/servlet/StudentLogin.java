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
@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
	
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			HttpSession session=req.getSession();
			
			StudentDAO dao=new StudentDAO(DBConnect.getConn());
			
		Student student=dao.login(email, password);
			
			if(student!=null) {
				session.setAttribute("studentObj",student);
				
				session.setAttribute("succMsg", "Student Login Sucessfully");
				resp.sendRedirect("dashboard.jsp");
				//System.out.println("Registration Successful");
			}
			else {
				session.setAttribute("errorMsg", "Invalid email & Password");
				resp.sendRedirect("login.jsp");
				//System.out.println("Something wrong on surver");
			}
			
			
	
	}

}
