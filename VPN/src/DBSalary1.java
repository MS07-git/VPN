

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/DBSalary1")
public class DBSalary1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String empno=request.getParameter("empno");
		String empname=request.getParameter("empname");
		String doj=request.getParameter("date");
		String pay=request.getParameter("pay");

		String Query="";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
			
			Query="insert into salarydetails values(?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(Query);
			st.setLong(1,0);
			st.setString(2,empno);
			st.setString(3,empname);
			st.setString(4,doj);
			st.setString(5,pay);
			st.executeUpdate();
			con.close();
			response.sendRedirect("Salary.jsp?msg1=Saved");
			
		}
		catch(Exception e){
			response.sendRedirect("Error.jsp"+e.getMessage());
		}

	}

}
