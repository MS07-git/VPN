<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="pink">
<form method="post" action="mainlogin">
<center>
<h3>VIRTUAL PRIVATE NETWORK </H3>
<BR>
<h2>Login Form</h2>

<br>
<table cellspacing="30">
<tr><td>Login</td><td><input type="text" name="user"></td></tr>
		</td></tr>
<tr><td>Password</td><td><input type="password" name="pass"></td></tr>
<tr><td><input type="submit" value="Submit"></td><td><input type="reset" value="Reset"><tr>
<%if(request.getParameter("msg1")!=null)
{
 out.println(request.getParameter("msg1"));
}
%>
</table>
</center>
</form>
</body>
</html>