

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Edit
 */
public class Edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edit() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    Connection con = DBConnection.getConnection();
    PreparedStatement stmt;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("user") == null) {
			response.sendRedirect("Login1.jsp");
		}
		else {
			try {
	    		stmt = con.prepareStatement("SELECT * FROM drug_details");
	    		ResultSet set = stmt.executeQuery();
	    		request.setAttribute("resultSet", set);
	    		response.setHeader("title", "Edit");
	    		request.getRequestDispatcher("edit.jsp").forward(request,response);
			}
			catch(Exception e) {
				System.out.println(e.getMessage());
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String keyword = request.getParameter("keyword");
		try {
    		stmt = con.prepareStatement("SELECT * FROM drug_details WHERE title=?");
    		stmt.setString(1, keyword);
    		ResultSet set = stmt.executeQuery();
    		request.setAttribute("resultSet", set);
    		request.getRequestDispatcher("edit.jsp").forward(request,response);
		}
		catch(Exception e) {
			System.out.println(e.getMessage());
		}
	}

}
