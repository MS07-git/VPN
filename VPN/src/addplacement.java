

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/addplacement")
public class addplacement extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String name=request.getParameter("name");
		  String placement=request.getParameter("placement");
		  String company=request.getParameter("company");
		  String person=request.getParameter("person");
		  String date=request.getParameter("date");
		  String Query="";

			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/richamam?user=root&password=atmas");
				
				Query="insert into PlacementDetails values(?,?,?,?,?,?)";
				PreparedStatement st=con.prepareStatement(Query);
				st.setLong(1,0);
				st.setString(2,name);
				st.setString(3,placement);
				st.setString(4,company);
				st.setString(5,person);
				st.setString(6,date);
				st.executeUpdate();
				con.close();
				response.sendRedirect("Placement.jsp?msg1=Saved");
				
			}
			catch(Exception e){
				response.sendRedirect("Error.jsp"+e.getMessage());
			}



	}

}
