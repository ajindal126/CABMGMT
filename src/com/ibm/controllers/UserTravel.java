package com.ibm.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.dao.MakeConnection;
import com.ibm.models.UserTravelDetailModel;

/**
 * Servlet implementation class UserTravel
 */
public class UserTravel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserTravel() {
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
		try{
		String phone=request.getParameter("phone");
		String slocn=request.getParameter("slocn");
		String locations=request.getParameter("locns");
		String date=request.getParameter("date");
		String ctype=request.getParameter("cartype");
		UserTravelDetailModel obj=new UserTravelDetailModel();
		obj.setCtype(ctype);
		obj.setDate(date);
		obj.setLocations(locations);
		obj.setPhone(phone);
		obj.setSlocn(slocn);
		String sql="insert into USERTRAVELDATA(userphoneno,startinglocation,locationtotravel,date,cartype)values(?,?,?,?,?)";
		String msg=MakeConnection.userTravelDetails(sql, obj);
		System.out.println("hi");
		if(msg.equals("success"))
		{
			response.sendRedirect("main.jsp?msg=booking is done");
		}
		else
		{
			response.sendRedirect("main.jsp?msg=booking failed");
		}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
}
