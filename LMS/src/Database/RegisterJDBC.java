package Database;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/RegisterJDBC")
public class RegisterJDBC extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RegisterJDBC() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"lms","lms123");
			System.out.println("Connected to database");
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO RegisterJDBC VALUES(?,?,?,?,?,?,?)");
			
			pst.setString(1, (request.getParameter("email"))); 
			
			pst.setString(2, (request.getParameter("uname"))); 
			
			pst.setString(3, (request.getParameter("firstname"))); 
			
			pst.setString(4, (request.getParameter("number"))); 
			
			pst.setString(5, (request.getParameter("pword")));
			
			pst.setString(6, (request.getParameter("gender"))); 
			
			pst.setString(7, (request.getParameter("state"))); 
			
			pst.executeUpdate();
			
			System.out.println("Inserted Values Success fully");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}