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
var field1=form.regno;
var field2=form.name;
var field3=form.address;
var field4=form.doj;
var field5=form.phone;
var field6=form.mphone;
var field7=form.email;
var field8=form.coursename;
var field9=form.batchtimings;
var field10=form.sdate;
var field11=form.duration;
var field12=form.regfees;
var field13=form.monthinstal;
var field14=form.project;

regno=field1.value;
name=field2.value;
address=field3.value;
doj=field4.value;
phone=field5.value;
mphone=field6.value;
email=field7.value;
coursename=field8.value;
batchtimings=field9.value;
sdate=field10.value;
duration=field11.value;
regfees=field12.value;
monthinstal=field13.value;
project=field14.value;

if (regno.length==0)
{
alert("Regno cannot be blank");
field1.focus();
return false;
}
else if (name.length==0)
{
alert("Name cannot be blank");
field2.focus();
return false;
}
else if (address.length==0)
{
alert("Address cannot be blank");
field3.focus();
return false;
}
else if (doj.length==0)
{
alert("DOJ cannot be blank");
field4.focus();
return false;
}
else if (phone.length==0)
{
alert("Phone cannot be blank");
field5.focus();
return false;
}
else if (mphone.length==0)
{
alert("MobilePhone cannot be blank");
field6.focus();
return false;
}
else if (email.length==0)
{
alert("email cannot be blank");
field7.focus();
return false;
}
else if (coursename.length==0)
{
alert("Coursename cannot be blank");
field8.focus();
return false;
}
else if (batchtimings.length==0)
{
alert("Batchtimings cannot be blank");
field9.focus();
return false;
}
else if (sdate.length==0)
{
alert("StartDate cannot be blank");
field10.focus();
return false;
}
else if(duration.length==0)
{
alert("Duration cannot be blank");
field11.focus();
return false;
}
else if(regfees.length==0)
{
alert("Registration Fees cannot be blank");
field12.focus();
return false;
}
else if(monthinstal.length==0)
{
alert("MonthlyInstallments cannot be blank");
field13.focus();
return false;
}
else if(project.length==0)
{
alert("Projects cannot be blank");
field14.focus();
return false;
}
}

</SCRIPT>
<br>
<a href="Admin1.jsp">BACK</a>
<h2><center><u>Registration form</u></center></h2>


<form OnSubmit="return valid(this)" method="post" action="DBRegistration1">
<center>
<table border=0>
<tr>
<td>
	<table border=0>
	<tr>
		<td><h4>Reg.No:</h4></td><td><input type=text name="regno"></td>
	<tr>
	<tr>
			<td><h4>Name:</h4></td><td><input type=text name="name"></td>
	<tr>
	<tr>
		<td><h4>Address:</h4></td><td><textarea name="address" rows=3 cols=25></textarea></td>
	<tr>
	<tr>
			<td><h4>DOJ:</h4></td><td><input type=text name="doj"></td>
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
		<td><h4>Course Name:</h4></td><td><select name="coursename">
		<option value="J2EE">J2EE</option>
		<option value="Software Testing">Software Testing</option>
		<option value="Call Center">Call Center</option>
		<option value="Networking">Networking</option>
		</select>

	<br>
	<tr>
		<td><h4>Batch Timings:</h4></td><td><select name="batchtimings">
					        <option value="10am to 12pm">10 am to 12 pm</option>
							<option value="12pm to 2pm">12 pm to 2 pm</option>
							<option value="2pm to 4pm">2 pm to 4 pm</option>
							<option value="4pm to 6pm">4 pm to 6 pm</option>
							</select></td>

	<tr>
		<td><h4>Start Date:</h4></td><td><input type=text name="sdate"></td>
	<tr>
	<tr>
		<td><h4>Duration:</h4></td><td><select name="duration">
										<option value="3">3 months</option>
										<option value="2">2 months</option>
										</select>
										<tr>
	<tr>
		<td><h4>Reg.fees:</h4></td><td><input type=text name="regfees"></td>
	<tr>
	<tr>
		<td><h4>Monthly Installments:</h4></td><td><input type=text name="monthinstal"></td>
	<tr>
<tr>
		<td><h4>Project Name:</h4></td><td><select name="project">
		<option value="VPN">VPN</option>
		<option value="VOIP">VOIP</option>
		<option value="Doctors Desk">Doctors Desk</option>
		<option value="Firewalls">Firewalls</option>
                <option value="DSHIELD">DSHIELD</option>
		<option value="HRMS">HRMS</option>
		<option value="Intrusion detection">Intrusion Detection</option>
		</select>

	<br>
	</table>
</td>
</tr><tr><td>	<%if(request.getParameter("msg1")!=null)
{
 out.println(request.getParameter("msg1"));
}
%></td></tr>
</table>



<p>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset"></center></p>
</p>
</center>
</form>
</body>
</html>