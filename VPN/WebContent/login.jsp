<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Peachpuff" background="i:\vpn\sky.jpg">

<form method="post" action="reg">
<center>
<h3>CENTRALIZED MANAGEMENT SYSTEM </H3>
<BR>
<h2>Login Form</h2>

<br>
<table cellspacing="30">
<tr><td>Login</td><td><select name="login">
		<option value="Administrator">Administrator</option>
		<option value="Marketing">Marketing</option>
		<option value="Faculty">Faculty</option>
		</select></td></tr>
<tr><td>Password</td><td><input type="password" name="pass"></td></tr>
<tr><td><input type="submit" value="Submit"></td><td><input type="reset" value="Reset"><tr>
<%if(request.getParameter("msg1")!=null)
{
 out.println(request.getParameter("msg1"));
}
%>
</table>
</center>
</body>
</html>