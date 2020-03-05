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
var field1=form.company;
var field2=form.address;
var field3=form.phone;
var field4=form.mail;
var field5=form.person;
company=field1.value;
address=field2.value;
phone=field3.value;
mail=field4.value;
person=field5.value;
if (company.length==0)
{
alert("Company cannot be blank");
field1.focus();
return false;
}
else if(address.length==0)
{
alert("Address cannot be blank");
field2.focus();
return false;
}
else if(phone.length==0)
{
alert("Phone cannot be blank");
field3.focus();
 return false;
}
else if(mail.length==0)
{
alert("Mail cannot be blank");
field4.focus();
return false;
}
else if(person.length==0)
{
alert("Person cannot be blank");
field5.focus();
return false;
}
}
</SCRIPT>
<a href="Marketing.jsp">BACK</a>
<form onsubmit="return valid(this)" method="post" action="addclient">
<h2><center>Add Client</center></h2>
<center>
<table cellspacing="20">
<tr>
<td>Enter the Company Name</td>
<td><input type="text" name="company"></td>
</tr>
<tr>
<td>Enter the Address</td>
<td><input type="text" name="address"></td>
</tr>
<tr>
<td>Enter the Phone Number</td>
<td><input type="text" name="phone"></td>
</tr>
<tr>
<td>Enter the MailId</td>
<td><input type="text" name="mail"></td>
</tr>
<tr>
<td>Enter the Contact Person</td>
<td><input type="text" name="person"></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
<td><input type="reset" value="reset"></td>
</tr>
</table>
</center>
</form>
</body>
</html>