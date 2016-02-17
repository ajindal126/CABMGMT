<%@ page import="com.ibm.dao.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("UNAME")!=null)
{
	  String username=(String)session.getAttribute("UNAME");
	  out.println("WELCOME USER <font color='green'>"+username);
	  



String phone=(String)session.getAttribute("UNAME");
String sql="select * from registration where phone=?";
ResultSet rs=MakeConnection.FetchUserDataByName(sql, phone);


out.println("<form method='post' action='UpdateServlet'>");
out.println("<table>");
while(rs.next())
{
	out.println("<tr><td>FIRST NAME</td><td><input type='text' name='fname' value='"+rs.getString(1)+"'/></td></tr>");
	out.println("<tr><td>LAST NAME</td><td><input type='text' name='lname' value='"+rs.getString(2)+"'/></td></tr>");
	out.println("<tr><td>EMAIL</td><td><input type='text' name='email' value='"+rs.getString(3)+"' readonly='readonly'/></td></tr>");
	out.println("<tr><td>PHONE</td><td><input type='text' name='phone' value='"+rs.getString(4)+"'  /></td></tr>");
	out.println("<tr><td>PASSWORD</td><td><input type='text' name='pwd' value='"+rs.getString(5)+"'/></td></tr>");
	
	
}
out.println("</table>");
out.println("<input type='submit' value='Update'>");
}
else
{
	  response.sendRedirect("registration.jsp");
}
%>
 <p align="right"><a href="logout.jsp" target="_top" class="style3">Logout</a></p>
</body>
</html>