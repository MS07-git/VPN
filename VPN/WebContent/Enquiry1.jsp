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
var field1=form.name;
var field2=form.address;
var field3=form.phone;
var field4=form.mphone;
var field5=form.email;
var field6=form.qualification;
var field7=form.regcourse;
var field8=form.timings;
var field9=form.reference;
name=field1.value;
address=field2.value;
phone=field3.value;
mphone=field4.value;
email=field5.value;
qualification=field6.value;
regcourse=field7.value;
timings=field8.value;
reference=field9.value;
alert("hai1");
if(name.length==0)
{
alert("Name cannot be blank");
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
else if(mphone.length==0)
{
alert("MobilePhone cannot be blank");
field4.focus();
return false;
}
else if(email.length==0)
{
alert("email cannot be blank");
field5.focus();
return false;
}
else if(qualification.length==0)
{
alert("qualification cannot be blank");
field6.focus();
return false;
}
else if(regcourse.length==0)
{
alert("regcourse cannot be blank");
field7.focus();
return false;
}
else if(timings.length==0)
{
alert("timings cannot be blank");
field8.focus();
return false;
}
else if(reference.length==0)
{
alert("reference cannot be blank");
field9.focus();
return false;
}
}
</SCRIPT>
<a href="Admin1.jsp">BACK</a>
<form onsubmit="return valid(this)" method="post" action="DBEnquiry1">
<center>
<h2><center><u>Enquiry form</u></center></h2>

<table border=0>
<tr>
<td>
	<table border=0>
	<tr>
		<td><h4>Name:</h4></td><td><input type=text name="name"></td>
	<tr>
	<tr>
		<td><h4>Address:</h4></td><td><textarea name="address" rows=3 cols=25></textarea></td>
	<tr>
	<tr>
		<td><h4>Phone:</h4></td><td><input type=text name="phone"></td>
	<tr>
	<tr>
		<td><h4>Mobile Phone:</h4></td><td><input type=text name="mphone"></td>
	<tr>
	<tr>
		<td><h4>EMail:</h4></td><td><input type=text name="email"></td>
	<tr>
	</table>
</td>
<td valign=top>
	<table border=0>
	<tr>
		<td><h4>Qualification:</h4></td><td><input type=text name="qualification"></td>
	<tr>
	<tr>
		<td><h4>Course :</h4></td><td><select name="regcourse">
		<option value="J2EE">J2EE</option>
		<option value="Software Testing">Software Testing</option>
		<option value="Call Center">Call Center</option>
		<option value="Networking">Networking</option>
		</select> </td>
	<tr>
	<tr>
		<td><h4>Timings:</h4></td><td><select name="timings">
					        <option value="10 AM to 12 AM">10 am to 12 am</option>
							<option value="1 PM to 3 PM">1 pm to 3 pm</option>
							<option value="3 PM to 5 PM">3 pm to 5 pm</option>
							<option value="5 PM to 7 PM">5 pm to 7 pm</option>
							</select></td>
	<tr>
	<tr>
		<td><h4>Reference:</h4></td><td><input type=text name="reference"></td>
	<tr>
	<tr><td>	<%if(request.getParameter("msg1")!=null)
{
 out.println(request.getParameter("msg1"));
}
%></td></tr>
	</table>
</td>
</tr>
</table>
</center>
<p><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset"></center></p>
</p>

</form>
</body>
</html>