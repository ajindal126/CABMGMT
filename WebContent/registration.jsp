<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ICAB</title>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script> 
<style type="text/css">
<!--
.main1 {
	padding: 6px;
	height: auto;
	width: auto;
}
.main1 {
	background-color: #FFFFFF;
	padding: 6px;
	height: 50px;
	width: auto;
	margin-top: 5px;
	border: medium solid #000000;
}
.style1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-style: italic;
	font-size: 24px;
	text-decoration: underline overline blink;
	color: #0000FF;
}
.main1 #form1 #phone {
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	margin: 2px;
	padding: 2px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-style: normal;
}
.style4 {font-family: "Times New Roman", Times, serif; font-weight: bold; font-style: italic; }
.main1 #form1 .style4 #password {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	margin: 2px;
	padding: 2px;
}
.main1 #form2 table {
	background-color: #CCFF00;
}
.main1 #form2 #firstname {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
	font-style: normal;
	width: 200px;
	height: 25px;
}
.main1 {
	margin: 3px;
	padding: 3px;
	height: auto;
	width: auto;
}
.main1 #form1 em {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 100px;
	font-style: oblique;
	font-weight: 900;
	text-decoration: line-through;
	color: #FF0066;
	vertical-align: baseline;
}
.main1 p {
}
.main1 {
	background-image: url(cab1.jpg);
	background-repeat: repeat;
}
.main1 #form3 p {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 24px;
	font-weight: bolder;
	color: #CC0000;
	text-decoration: underline overline blink;
}
-->
</style>
<link href="textfield.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style7 {
	font-size: 16px;
	font-style: italic;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #00FF00;
}
.style9 {font-size: 16px; font-style: italic; font-weight: bold; font-family: Verdana, Arial, Helvetica, sans-serif; color: #66FF00; }
.main1 #form3 table {
	background-color: #9900FF;
	border-top-width: thick;
	border-right-width: thick;
	border-bottom-width: thick;
	border-left-width: thick;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
}
.main1 #form4 table {
	background-color: #9900FF;
	border-top-width: thick;
	border-right-width: thick;
	border-bottom-width: thick;
	border-left-width: thick;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
}
-->
</style>

</head>

</head>
<body>
<div class="main1">
<%
       if(request.getParameter("mes")!=null) 
       {
    	  String msg=request.getParameter("mes");
  	   out.println("<center><h2><font color='red'>"+msg+"</font></h2></center>");
      }
   %>
<%
       if(request.getParameter("message")!=null) 
       {
    	  String msg=request.getParameter("message");
  	   out.println("<center><h2><font color='red'>"+msg+"</font></h2></center>");
      }
   %>

<%
       if(request.getParameter("msg")!=null) 
       {
    	  String msg=request.getParameter("msg");
  	   out.println("<center><h2><font color='red'>"+msg+"</font></h2></center>");
      }
   %>
  <form id="form1" name="form1" method="post" action="UserValidation">
    <p>&nbsp; </p>
    <table width="500" height="10" border="2" align="right" cellpadding="4" cellspacing="0" bordercolor="#000000" bgcolor="#FF0000">
      <tr>
        <th width="229" height="91" scope="col"><label>
          <div align="left" class="style4">Phone
            <input name="phone" type="text" class="style4" id="phone" maxlength="30" />
          </div>
        </label></th>
        <th width="229" height="91"scope="col"><label><div align="left" class="style4">
          
          Password
          <input name="password" type="password" class="style4" id="password" maxlength="20" />
          </label>
        </div></th>
        <th width="25" height="91" scope="col"><label> <br />
            <input name="Login" type="submit" class="style4" value="Submit" />
            
        </label></th>
      </tr>
    </table>
    <p align="center"><em>iCab</em></p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
  </form>
  <p align="center">&nbsp;</p>
  <p align="center" class="style1"> Create an account  </p>
  <form id="form2" name="form2" method="post" action="RegServlet">
    <table width="458" height="406" border="6" align="center" cellpadding="4" cellspacing="0">
      <tr>
        <th width="149" scope="row"><div align="left">Firstname:
        </div></th>
        <td width="285"><label>
          <input name="firstname" type="text" id="firstname" maxlength="30" />
        </label></td>
      </tr>
      <tr>
        <th scope="row"><div align="left">Lastname:
        </div></th>
        <td><label>
          <input name="lastname" type="text" id="lastname" maxlength="30" />
        </label></td>
      </tr>
      <tr>
        <th scope="row"><div align="left">Email:</div></th>
        <td><label>
          <input name="email" type="text" id="email" maxlength="30" />
        </label></td>
      </tr>
      <tr>
        <th scope="row"><div align="left">Phone:</div></th>
        <td><label>
          <input name="phone" type="text" id="phone" maxlength="15" />
        </label></td>
      </tr>
      <tr>
        <th scope="row"><div align="left">New Password:</div></th>
        <td><label>
          <input name="password" type="password" id="password" maxlength="20" />
        </label></td>
      </tr>
      <tr>
        <th height="65" scope="row"><div align="left">Sex:</div></th>
        <td><p>
          <label>
            <input type="radio" name="sex" value="Male" />
            Male</label>
          <br />
          <label>
            <input type="radio" name="sex" value="Female" />
            Female</label>
          <br />
        </p></td>
      </tr>
      <tr>
        <th height="29" scope="row"><div align="left">
          <label>
          <input name="reset" type="reset" id="reset" value="Reset" />
          </label>
        </div></th>
        <td><label>
          <input name="submit" type="submit" id="submit" value="Submit" />
        </label></td>
      </tr>
    </table>
  </form>
  <form id="form3" name="form3" method="post" action="AdminValidation">
    <p align="center"><em>ADMIN LOGIN PANEL: </em></p>
    <table width="512" border="4" align="center" cellpadding="4" cellspacing="0">
      <tr>
        <th width="168" scope="col"><label><span class="style9">Username</span>
            <input name="username" type="text" id="username" maxlength="30" />
        </label></th>
        <th width="172" scope="col"><label><span class="style7">Password
            </span>
          <input name="password" type="password" id="password" maxlength="30" />
        </label></th>
        <th width="134" scope="col"><label> <br />
          <input name="Login" type="submit" id="Submit" value="Submit" />
        </label></th>
      </tr>
    </table>
    
    </form>
    
    <form id="form4" name="form4" method="post" action="DriverValidation">
    <p align="center" ><b><em>Driver LOGIN PANEL: </em></b></p>
    <table width="512" border="4" align="center" cellpadding="4" cellspacing="0">
      <tr>
        <th width="168" scope="col"><label><span class="style9">Name</span>
            <input name="name" type="text" id="name" maxlength="30" />
        </label></th>
        <th width="172" scope="col"><label><span class="style7">License
            </span>
          <input name="license" type="password" id="license" maxlength="30" />
        </label></th>
        <th width="134" scope="col"><label> <br />
          <input name="Login" type="submit" id="Submit" value="Submit" />
        </label></th>
      </tr>
    </table>
    
    </form>
  <p>&nbsp;</p>
  <p align="center" class="style1">&nbsp;</p>
</div>
</body>
</html>