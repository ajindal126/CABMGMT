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
 * Servlet implementation class DriverValidation
 */
public class DriverValidation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DriverValidation() {
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
		String name=request.getParameter("name");
		String license=request.getParameter("license");
		RegModel reg=new RegModel();
		reg.setName(name);
		reg.setLicense(license);
		String sql="Select * from driverinfo where name=? and license=?";
		String msg=MakeConnection.driverValidation(sql, reg);
		if(msg.equals("success"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("UNAME",name);
			response.sendRedirect("currentlocation.jsp");
		}
		else
		{
			response.sendRedirect("registration.jsp?mes=invalid name or license");
		}
		
	}

}
