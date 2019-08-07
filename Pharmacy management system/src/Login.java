

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
      
		Connection con = DBConnection.getConnection();
        response.setContentType("text/html");  
        PrintWriter out = response.getWriter();  
        String username=request.getParameter("username");  
        String password=request.getParameter("password");
        PreparedStatement stmt;
        try {
    		stmt = con.prepareStatement("SELECT * FROM users WHERE username = ? AND password = ?");
    		stmt.setString(1, username);
    		stmt.setString(2, password);
    		ResultSet set = stmt.executeQuery();
    	    if(set.next()){
    	    	request.getSession().setAttribute("user", username);
    	    	request.setAttribute("title", "Dashboard");
    			request.getRequestDispatcher("Dashboard.jsp").forward(request, response); 
    	     }  
    	     else{
    	    	 request.setAttribute("error", "Invalid credentials.");
    	    	 request.getRequestDispatcher("Login1.jsp").forward(request, response);
    	     }  
    	    out.close();
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		System.out.println("Exception occured.");
    		System.out.println(e.getMessage());
    	}
          
    }
    public void doGet(HttpServletRequest request , HttpServletResponse response)
    	throws ServletException, IOException {
    		if(request.getSession().getAttribute("user") != null) {
    			String title = "Dashboard";
    			request.setAttribute("title",title);
    			//request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
    			request.setAttribute("title", "Dashboard");
    			request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
    			
    		}
    		else {
    	    	response.sendRedirect("Login1.jsp");
    		}
    	
    }
}
