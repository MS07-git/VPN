<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="Peachpuff">
<CENTER><B><h3>Attendece of  <%=request.getParameter("number") %></H3></CENTER>
<CENTER>
<table BORDER="1" cellpadding="10">

<tr><td>Employee id</td><td>Employee Name</td><td>date</td><tr>
<%	
String empid=request.getParameter("number");
System.out.println(empid);
try
{
	Statement stat=null;
	ResultSet rs=null;
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
	//stat=con.createStatement();
 	PreparedStatement ps=con.prepareStatement("select * from staffattendence where empid=?");
 	ps.setString(1,empid);
 	rs=ps.executeQuery();
 	ResultSetMetaData rsmd=rs.getMetaData();
		
while(rs.next())
{
%>
<tr><td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td></tr>
<%
}
}
catch(Exception e)
{
out.println("error " +e);
}
%>
</table>
</body>
</html>