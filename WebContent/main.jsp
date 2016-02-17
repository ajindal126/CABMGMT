<%@ page import="com.ibm.dao.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Main</title>
<style type="text/css">
<!--
.main2 {
	margin: 3px;
	padding: 3px;
	height: auto;
	width: auto;
	border: medium solid #000000;
}
.main2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 16px;
}
.main2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 16px;
}
.main2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 16px;
}
.main2 p {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 16px;
}
.main2 #form1 input {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 18px;
}
.style2 {
	font-size: 18px;
	font-weight: bold;
	font-style: italic;
}
.main2 p {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 18px;
	text-decoration: underline;
}
.style3 {
	font-size: 24px;
	font-style: italic;
	font-weight: bold;
}
.main2 #form2 #clocn {
	font-size: 18px;
}
-->
</style>
</head>

<body>
<div class="main2">
  <div align="left">
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
    <p align="left"><span class="style2"><a href="UpdateInfo.jsp" target="_top">Update Info </a></p>
    <p align="right"><a href="logout.jsp" target="_top" class="style3">Logout</a></p>
    
<%
String userphoneno=(String)session.getAttribute("UNAME");
String sql="select currentlocation from usertraveldata where userphoneno=?";
ResultSet rs=MakeConnection.FetchUserDataByName(sql, userphoneno);


out.println("<form method='post' action=''>");
out.println("<table>");
while(rs.next())
{
	out.println("<tr><td>Current location</td><td><input type='text' name='currentlocation' value='"+rs.getString(1)+"' readonly='readonly' /></td></tr>");	
}
out.println("</table></form>");

%>
    
    
    <p align="center">&nbsp;</p>
    <p align="center"><em><strong>ENTER TRAVEL DETAILS </strong></em></p>
    <form id="form1" name="form1" method="post" action="UserTravel">
      <table width="592" height="365" border="4" align="center" cellpadding="4" cellspacing="0">
       <tr>
          <th width="238" height="52" scope="row"><div align="left">Phone no.: </div></th>
          <td width="326"><label>
            <input name="phone" type="text" id="phone" maxlength="40" />
          </label></td>
        </tr>
        <tr>
          <th width="238" height="52" scope="row"><div align="left">Starting Location: </div></th>
          <td width="326"><label>
            <input name="slocn" type="text" id="slocn" maxlength="40" />
          </label></td>
        </tr>
        <tr>
          <th height="57" scope="row"><div align="left">Locations to travel: </div></th>
          <td><label>
            <input name="locns" type="text" id="locns" maxlength="80" />
          </label></td>
        </tr>

        <tr>
          <th scope="row"><div align="left">Date of journey: </div></th>
          <td><label>
            <input name="date" type="text" id="date" maxlength="20" />
          </label></td>
        </tr>
        <tr>
          <th scope="row"><div align="left">Car type: </div></th>
          <td><p>
            <label>
              <input type="radio" name="cartype" value="car(ac)" />
              Car(Ac)  </label>
              //15 bucks per Km
            <br />
            <label>
              <input type="radio" name="cartype" value="car(non-ac)" />
              Car(Non-Ac)</label>
            //10 bucks per Km <br />
            <label>
              <input type="radio" name="cartype" value="suv(ac)" />
              SUV(Ac)</label>
            //30 bucks per Km
            <br />
            <label>
              <input type="radio" name="cartype" value="suv(non-ac)" />
              SUV(Non-Ac)</label>
            //25 bucks per Km <br />
          </p></td>
        </tr>
        <tr>
          <th scope="row"><label>
            <div align="left">
              <input type="reset" name="Reset" value="Reset" />
              </div>
          </label></th>
          <td><label>
            <input type="submit" name="Submit" value="Submit" />
          </label></td>
        </tr>
      </table>
    </form>
    </div>
</div>
</body>
</html>