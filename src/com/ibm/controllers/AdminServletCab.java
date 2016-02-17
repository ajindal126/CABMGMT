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
public class AdminServletCab extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServletCab() {
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
	String carname=request.getParameter("carname");
		String cartype=request.getParameter("cartype");
		String carno=request.getParameter("carno");
		AdminModel obj=new AdminModel();
		obj.setCarname(carname);
		obj.setCartype(cartype);
		obj.setCarno(carno);
		String sql="insert into CABINFO(carname,cartype,carno)values(?,?,?)";
		String msg=MakeConnectionAdmin.insertValuesCab(sql, obj);
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
