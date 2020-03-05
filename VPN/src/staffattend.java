

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/staffattend")
public class staffattend extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empid=request.getParameter("number");
		String name=request.getParameter("ename");
		String Query="";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
			java.util.Date date = new java.util.Date();
		    SimpleDateFormat ft = new SimpleDateFormat ("E dd.MM.yyyy 'at' hh:mm:ss a zzz");
		      
			Query="insert into StaffAttendence values(?,?,?,?)";
			PreparedStatement st=con.prepareStatement(Query);
			String d=ft.format(date);
			st.setLong(1,0);
			st.setString(2,empid);
			st.setString(3,name);
			st.setString(4, d);
			st.executeUpdate();
			con.close();
			response.sendRedirect("staffattendance.jsp?msg1=Saved");
			
		}
		catch(Exception e){
			response.sendRedirect("Error.jsp"+e.getMessage());
		}

	}

}
