package com.ibm.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ibm.dao.MakeConnection;
import com.ibm.models.RegModel;

/**
 * Servlet implementation class UserValidation
 */
public class UserValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserValidation() {
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
	String phone=request.getParameter("phone");
	String password=request.getParameter("password");
	RegModel obj=new RegModel();
	obj.setPhone(phone);
	obj.setPassword(password);
	String sql="select * from REGISTRATION where PHONE=? AND PASSWORD=?";
	String msg=MakeConnection.userValidation(sql, obj);
	if(msg.equals("success"))
	{
		
		HttpSession session=request.getSession();
		session.setAttribute("UNAME",phone);
		response.sendRedirect("main.jsp");
	}
	else
	{
		response.sendRedirect("registration.jsp?msg=Invalid phone or password");
	}
	}

}
