

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
      
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
              
        String username=request.getParameter("username");  
        String password=request.getParameter("password");  
        Connection con = DBConnection.getConnection();
        PreparedStatement stmt;
    	try {
    		stmt = con.prepareStatement("SELECT * FROM user_details WHERE username = ? AND password = ?");
    		stmt.setString(1, username);
    		stmt.setString(2, password);
    		ResultSet set = stmt.executeQuery();
    	    if(set.next()){
    	    	RequestDispatcher rd=request.getRequestDispatcher("Dashboard.html");
    	         rd.forward(request,response);  
    	     }  
    	     else{
    	    	RequestDispatcher rd=request.getRequestDispatcher("Login.html");
    	    	rd.include(request, response);
    	    	out.print("invalid credentials");
    	     }  
    	    out.close();
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
          
    }   
}
