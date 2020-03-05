

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

@WebServlet("/reg")
public class reg extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status=request.getParameter("login");
		String pass=request.getParameter("pass");
		PreparedStatement pr=null;

		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
			 pr=con.prepareStatement("select * from cert where status=? and pass=?");
			 pr.setString(1,status);
			 pr.setString(2,pass);
			 ResultSet rs=pr.executeQuery();
		 
		  if( rs.next()){
			  if(status.equalsIgnoreCase("Administrator")){
				  con.close();
				  response.sendRedirect("Admin1.jsp");
			  }
			  else if(status.equalsIgnoreCase("Marketing")){
			  con.close();
			  response.sendRedirect("Marketing.jsp");
			  }
			  else{
			  con.close();
			  response.sendRedirect("Training.jsp");
			  }
		  }
		   else{
			   con.close();
			   response.sendRedirect("login.jsp?msg1=password is incorrect");
		   }  
		  	con.close(); 
		}
		catch(Exception ae){
	//	out.println("Invalid password");
		}
	}
}
