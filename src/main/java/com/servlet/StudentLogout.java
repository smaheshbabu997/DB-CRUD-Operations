package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/studentLogout")
public class StudentLogout extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			HttpSession session=req.getSession();
		session.removeAttribute("studentObj");
		session.setAttribute("succMsg", "Student Logout Successfully");
		resp.sendRedirect("index.jsp");
	}
	

}
