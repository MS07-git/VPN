

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DBRegistration1")
public class DBRegistration1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String regno=request.getParameter("regno");
		String name=request.getParameter("name");
		String address=request.getParameter("address");
		String doj=request.getParameter("doj");
		String phone=request.getParameter("phone");
		String mphone=request.getParameter("mphone");
		String email=request.getParameter("email");
		String coursename=request.getParameter("coursename");
		String btimings=request.getParameter("batchtimings");
		String sdate=request.getParameter("sdate");
		String duration=request.getParameter("duration");
		String regfees=request.getParameter("regfees");
		String minstall=request.getParameter("monthinstal");
		String project=request.getParameter("project");
		
		String Query="";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
			
			Query="insert into Registration values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(Query);
			st.setString(1,regno);
			st.setString(2,name);
			st.setString(3,address);
			st.setString(4,doj);
			st.setString(5,phone);
			st.setString(6,mphone);
			st.setString(7,email);
			st.setString(8,coursename);
			st.setString(9,btimings);
			st.setString(10,sdate);
			st.setString(11,duration);
			st.setString(12,regfees);
			st.setString(13,minstall);
			st.setString(14,project);
			st.executeUpdate();
			con.close();
			response.sendRedirect("Registration1.jsp?msg1=Saved");
			
		}
		catch(Exception e){
			response.sendRedirect("Error.jsp"+e.getMessage());
		}


	}

}
