

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DBCourse1")
public class DBCourse1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String courseno=request.getParameter("courseno");
		String coursename=request.getParameter("coursename");
		String amount=request.getParameter("amount");
		String duration=request.getParameter("duration");
		String Query="";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
			
			Query="insert into coursedetails values(?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(Query);
			int i=0;
			st.setLong(1,i);
			st.setString(2,courseno);
			st.setString(3,coursename);
			st.setString(4,amount);
			st.setString(5,duration);
			st.executeUpdate();
			con.close();
			response.sendRedirect("Course1.jsp?msg1=Saved");
			
		}
		catch(Exception e){
			response.sendRedirect("Error.jsp"+e.getMessage());
		}



	}

}
