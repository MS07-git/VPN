<%@page import="java.sql.*"%>
<html>
<body bgcolor="Peachpuff">
<CENTER><B><h3> SOFTWARE TESTING BATCH III  STUDENT LIST  </H3>
<H4>TIME 2.PM TO 4.PM </H4></B></CENTER>
<CENTER>
<table BORDER="1" cellpadding="10">

<tr><td>RegNo</td><td>Name</td><td>Course</td><tr>
<%	
try
{
	Statement stat=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
	stat=con.createStatement();
 	rs=stat.executeQuery("select regno,name,coursename from Registration where coursename='Software Testing' and btiming='2pm to 4pm'");
		
while(rs.next())
{
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td></tr>
<%
}
}
catch(Exception e)
{
out.println("error");
}
%>
</table>
</body>
</html>