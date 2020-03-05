
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/mainlogin")
public class mainlogin extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		String pass=request.getParameter("pass");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
			
			String query="select * from developer where user=? and pass=?";
			PreparedStatement st=cn.prepareStatement(query);
			st.setString(1,user);
			st.setString(2,pass);

			ResultSet rs=st.executeQuery();
			
			if(rs.next()){
				
				cn.close();
//				HttpSession hs=request.getSession();
//				hs.setAttribute("user", request.getParameter("user"));
				response.sendRedirect("login.jsp");
			
			}
			else {
				cn.close();
				response.sendRedirect("main.jsp?msg1=Either username or password is incorrect");
			}
		}
		catch(Exception e){
			response.sendRedirect("Error.jsp"+e.getMessage());
		}
		
	}

}
