package com.ibm.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.ibm.dao.MakeConnectionAdmin;
import com.ibm.models.AdminModel;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServletDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServletDriver() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
	String name=request.getParameter("name");
		String address=request.getParameter("address");
		String license=request.getParameter("license");
		AdminModel obj=new AdminModel();
		obj.setName(name);
		obj.setAddress(address);
		obj.setLicense(license);
		String sql="insert into DRIVERINFO(name,address,license)values(?,?,?)";
		String msg=MakeConnectionAdmin.insertValues(sql, obj);
		if(msg.equals("success"))
		{
			response.sendRedirect("adminlogin.jsp");
		}
		else
		{
			response.sendRedirect("adminlogin.jsp");
		}

		
	}

}
