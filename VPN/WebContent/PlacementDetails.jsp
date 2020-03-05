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
<a href="Marketing.jsp">back</a>
<h2><center><u>Placement Details</u></center></h2>
<form name=booksdet>
<center>
<table border=1 cellpadding=5>
<tr>
<td>S.no.</td>
<td>Name</td>
<td>Placement</td>
<td>Company</td>
<td>Phone</td>
<td>date</td>
</tr>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
	
	PreparedStatement pr=con.prepareStatement("select * from PlacementDetails");
	ResultSet rs=pr.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td>
		<%=rs.getString(1)%>
		</td>
		<td>
		<%=rs.getString(2)%>
		</td>
		<td>
		<%=rs.getString(3)%>
		</td>
		<td>
		<%=rs.getString(4)%>
		</td>
		<td>
		<%=rs.getString(5)%>
		</td>
		<td>
		<%=rs.getLong(6)%>
		</td>
		</tr>
	<%
	}
}
catch(Exception e)
	{
	out.println("error"+ e);
	}

%>

</table>
</center>
</form>
</body>
</html>