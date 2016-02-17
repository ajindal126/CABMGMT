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
       if(request.getParameter("msg")!=null) 
       {
    	  String msg=request.getParameter("msg");
  	   out.println("<center><h2><font color='red'>"+msg+"</font></h2></center>");
      }
   %>
   <%
  if(session.getAttribute("UNAME")!=null)
  {
	  String username=(String)session.getAttribute("UNAME");
	  out.println("WELCOME USER <font color='green'>"+username);
	  
  }
  else
  {
	  response.sendRedirect("registration.jsp");
  }
  
  %>
 <p align="right"><a href="logout.jsp" target="_top" class="style3">Logout</a></p>
<form method='post' action='CurrentLocation'>
<table>
<tr><td>User phone no.<input type='text' name='phone'/></td><td>Current Location<input type='text' name='clocn'/></td>
<td><input type='submit' value='Update'></td></tr>
</table>
</form>


</body>
</html>