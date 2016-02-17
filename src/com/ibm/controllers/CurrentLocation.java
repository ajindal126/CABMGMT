package com.ibm.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.MakeConnection;
import com.ibm.dao.MakeConnectionAdmin;
import com.ibm.models.UpdateModel;

/**
 * Servlet implementation class CurrentLocation
 */
public class CurrentLocation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CurrentLocation() {
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
		String clocn=request.getParameter("clocn");
		String phone=request.getParameter("phone");
		UpdateModel obj=new UpdateModel();
		obj.setClocn(clocn);
		obj.setPhone(phone);
		String sql="update usertraveldata SET(userphoneno,currentlocation)=(?,?) where userphoneno=?";
		String msg=MakeConnection.userCurrentLocation(sql, obj);
		if(msg.equals("success"))
		{
			response.sendRedirect("currentlocation.jsp?msg=Updated");
		}
		else
		{
			response.sendRedirect("currentlocation.jsp?msg=Updation cancelled");
		}
	}

}
