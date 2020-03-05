

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DBEnquiry1")
public class DBEnquiry1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		String mphone=request.getParameter("mphone");
		String email=request.getParameter("email");
		String qualification=request.getParameter("qualification");
		String regcourse=request.getParameter("regcourse");
		String timings=request.getParameter("timings");
		String reference=request.getParameter("reference");
		String Query="";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
			
			Query="insert into Enquiry values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(Query);
			int a=0;
			st.setLong(1,a);
			st.setString(2,name);
			st.setString(3,address);
			st.setString(4,phone);
			st.setString(5,mphone);
			st.setString(6,email);
			st.setString(7,qualification);
			st.setString(8,regcourse);
			st.setString(9,timings);
			st.setString(10,reference);
			st.executeUpdate();
			con.close();
			response.sendRedirect("Enquiry1.jsp?msg1=Saved");
			
		}
		catch(Exception e){
			response.sendRedirect("Error.jsp"+e.getMessage());
		}

		
	}

}
