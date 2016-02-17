package com.ibm.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.MakeConnectionAdmin;
import com.ibm.models.AdminModel;

/**
 * Servlet implementation class AdminValidation
 */
public class AdminValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminValidation() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		AdminModel obj=new AdminModel();
		obj.setUsername(username);
		obj.setPassword(password);
		String sql="select * from ADMININFO where USERNAME=? AND PASSWORD=?";
		String msg=MakeConnectionAdmin.adminValidation(sql, obj);
		if(msg.equals("success"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("UNAME",username);
			response.sendRedirect("adminlogin.jsp");
		}
		else
		{
			response.sendRedirect("registration.jsp?message=Invalid username or password");
		}

	}

}
