

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/addclient")
public class addclient extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String company=request.getParameter("company");
		  String address=request.getParameter("address");
		  String phone=request.getParameter("phone");
		  String mail=request.getParameter("mail");
		  String person=request.getParameter("person");
		  String Query="";

			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
				
				Query="insert into ClientDetails values(?,?,?,?,?,?)";
				PreparedStatement st=con.prepareStatement(Query);
				st.setLong(1,0);
				st.setString(2,company);
				st.setString(3,address);
				st.setString(4,phone);
				st.setString(5,mail);
				st.setString(6,person);
				st.executeUpdate();
				con.close();
				response.sendRedirect("AddClient.jsp?msg1=Saved");
				
			}
			catch(Exception e){
				response.sendRedirect("Error.jsp"+e.getMessage());
			}

	}

}
