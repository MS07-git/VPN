<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Peachpuff">
<SCRIPT LANGUAGE="JavaScript">
function valid(form)
{
var field1=form.number;
var field2=form.ename;
number=field1.value;
ename=field2.value;
if (number.length==0)
{
alert("enumber cannot be blank");
field1.focus();
return false;
}
else if(ename.length==0)
{
alert("ename cannot be blank");
field2.focus();
return false;
}
}
</SCRIPT>
<a href="Admin1.jsp">BACK</a>
<form onsubmit="return valid(this)" method="post" action="staffattend">
<body>
<center>
<br>
<br>
<h2>Staff Attendance Form</h2>
<br>
<br>
<tr>
<tr>
<tr>
<table>
<tr><td>Employee Number</td><td><input type="text" name="number" size=20></td></tr>
<tr>
<tr>
<tr>
<tr><td>Employee Name</td><td><input type="text" name="ename" size="20"></td></tr>
<tr><tr>
<tr>

<tr>

<tr>
<tr>
<tr>
</table>
<center>
<br>

<input type="submit" value="Register">&nbsp&nbsp&nbsp&nbsp&nbsp<input type="reset" value="Reset">
</center>
</form>
</body>
</html>