<%@ page import="com.ibm.dao.*" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DATA ENTRY PAGE</title>
<style type="text/css">
<!--
.main2 {
	margin: 3px;
	padding: 3px;
	height: auto;
	width: auto;
	border: medium solid #FF0000;
	
}
.main2 #form1 p {
	font-family: "Times New Roman", Times, serif;
	font-size: 14px;
	font-weight: lighter;
	color: #000000;
}
.main2 #form1 em {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 24px;
	color: #0000FF;
	text-decoration: underline;
}
.main2 p {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 24px;
	color: #33FF00;
	text-decoration: underline;
}
.main2 #form1 input {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
.main2 #form2 #Reset {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-size: 14px;
}
.main2 #form2 #Submit {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
.main2 #form2 #Reset {
	font-family: "Times New Roman", Times, serif;
	font-size: 16px;
}
.main2 #form2 #Reset {
	font-size: 16px;
	font-family: "Times New Roman", Times, serif;
}
-->
</style>
<link href="textfieldadmin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-size: 14}
.style3 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
</head>

<body>
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
<div align="left"></div>
<div class="main2">
 <p align="right"><a href="logout.jsp" target="_top" class="style3">Logout</a></p>
  <form id="form1" name="form1" method="post" action="AdminServletCab">
    <p align="center"><strong><em>CAB ENTRY FORM </em></strong></p>
    <table width="393" height="255" border="3" align="center" cellpadding="4" cellspacing="0">
      <tr>
        <th width="189" height="52" scope="row"><div align="left">Car Name: </div></th>
        <td width="178"><label>
          <input name="carname" type="text" id="carname" maxlength="30" />
        </label></td>
      </tr>
      <tr>
        <th height="94" scope="row"><div align="left">Car Type: </div></th>
        <td><p class="style1">
          <label>
            <input type="radio" name="cartype" value="AC" />
            <span class="style3">AC</span></label>
          <br />
          <label>
            <input type="radio" name="cartype" value="NON-AC" />
            <span class="style3">NON-AC</span></label>
          <br />
        </p>          
        <label></label></td>
      </tr>
      <tr>
        <th height="45" scope="row"><div align="left">Car No. </div></th>
        <td><label>
          <input name="carno" type="text" id="carno" />
        </label></td>
      </tr>
      <tr>
        <th height="58" scope="row"><label>
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
  <p>&nbsp;</p>
  <p align="center"><em><strong>DRIVER ENTRY FORM </strong></em></p>
  <form id="form2" name="form2" method="post" action="AdminServletDriver">
    <table width="419" height="241" border="3" align="center" cellpadding="4" cellspacing="0">
      <tr>
        <th width="197" scope="row"><div align="left">Name:</div></th>
        <td width="196"><label>
          <input name="name" type="text" id="name" maxlength="30" />
        </label></td>
      </tr>
      <tr>
        <th scope="row"><div align="left">Address:</div></th>
        <td><label>
          <input name="address" type="text" id="address" maxlength="30" />
        </label></td>
      </tr>
      <tr>
        <th scope="row"><div align="left">License no.: </div></th>
        <td><label>
          <input name="license" type="text" id="license" maxlength="30" />
        </label></td>
      </tr>
      <tr>
        <th scope="row"><label>
          <div align="left">
            <input name="Reset" type="reset" id="Reset" value="Reset" />
          </div>
        </label></th>
        <td><label>
          <input name="Submit" type="submit" id="Submit" value="Submit" />
        </label></td>
      </tr>
    </table>
  </form>
  <p align="center">&nbsp;</p>
  <p>&nbsp;</p>
</div>
</body>
</html>
