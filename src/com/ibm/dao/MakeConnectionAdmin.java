package com.ibm.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ibm.models.AdminModel;
import com.ibm.models.RegModel;



public class MakeConnectionAdmin {
	public static String username="Akshit";
	public static String password="akshit";
	public static String driver="com.ibm.db2.jcc.DB2Driver";
	public static String url="jdbc:db2://localhost:50000/CABMGMT";
	public static Connection con=null;
	public static PreparedStatement ps=null;
	public static ResultSet rs=null;
	static            
	{         //whenever a progarm is made run,,,,always class is first loaded....in static block all connections r made because it is made at d time of loading of class even before main is run
		try
		{
			Class.forName(driver);
			con=DriverManager.getConnection(url, username, password);
			System.out.println("connection successfull with cabmgmt db");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public static String insertValues(String sql,AdminModel obj)
	{
		try{
			
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getName());//same firstname,lastname... will be attributes of table reg
			ps.setString(2,obj.getAddress());
			ps.setString(3,obj.getLicense());
			int i=ps.executeUpdate();
			if(i>=1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	public static String insertValuesCab(String sql,AdminModel obj)
	{
		try{
			
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getCarname());//same firstname,lastname... will be attributes of table reg
			ps.setString(2,obj.getCartype());
			ps.setString(3,obj.getCarno());
			int i=ps.executeUpdate();
			if(i>=1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "";
	}
	
	public static String adminValidation(String sql,AdminModel obj)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getUsername());
			ps.setString(2,obj.getPassword());
			rs=ps.executeQuery();
			int i=0;
			while(rs.next())
			{
				i++;
			}
			if(i>=1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	return "";
	}
	


	
public static void main(String[] args) {
		

	}

}

