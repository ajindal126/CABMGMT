package com.ibm.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ibm.models.RegModel;
import com.ibm.models.UpdateModel;
import com.ibm.models.UserTravelDetailModel;


public class MakeConnection {
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
	public static String insertValues(String sql,RegModel obj)
	{
		try{
			
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getFirstname());//same firstname,lastname... will be attributes of table reg
			ps.setString(2,obj.getLastname());
			ps.setString(3,obj.getEmail());
			ps.setString(4,obj.getPhone());
			ps.setString(5,obj.getPassword());
			ps.setString(6,obj.getSex());
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
	
	public static String userValidation(String sql,RegModel obj)
	{
		try
		{
			ps=con.prepareStatement(sql);
			ps.setString(1,obj.getPhone());
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
	
public static ResultSet FetchUserDataByName(String sql,String uname)
{
	
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,uname);
		rs=ps.executeQuery();
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	return rs;
}
public static String updateValues(String sql,UpdateModel obj)
{
	try{
		
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getFname());//same firstname,lastname... will be attributes of table reg
		ps.setString(2,obj.getLname());
		ps.setString(3,obj.getEmail());
		ps.setString(4,obj.getPhone());
		ps.setString(5,obj.getPwd());
	    ps.setString(6,obj.getPhone());
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
public static String userTravelDetails(String sql,UserTravelDetailModel obj)
{
	try{
		
		ps=con.prepareStatement(sql);
	ps.setString(1,obj.getPhone());
	ps.setString(2, obj.getSlocn());
	ps.setString(3,obj.getLocations());
	ps.setString(4,obj.getDate());
	ps.setString(5,obj.getCtype());
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




public static String userCurrentLocation(String sql,UpdateModel obj)
{
	try{
		
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getPhone());
		ps.setString(2,obj.getClocn());
		ps.setString(3,obj.getPhone());
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

public static String driverValidation(String sql,RegModel obj)
{
	try
	{
		ps=con.prepareStatement(sql);
		ps.setString(1,obj.getName());
		ps.setString(2,obj.getLicense());
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
