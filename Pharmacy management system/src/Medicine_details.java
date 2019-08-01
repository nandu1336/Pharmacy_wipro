import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Medicine_details {
	public static void main(String args[]) {
		Connection con = DBConnection.getConnection();
	    Statement stmt;
	    Statement stmt2;
		try {
			
			stmt=con.createStatement();
			stmt2 = con.createStatement();
			stmt.execute("CREATE TABLE drug_details(medicine_ID number(6),title varchar(20),quantity number(5),unit_price number(5))");
			stmt2.execute("CREATE TABLE users (username varchar(25),password varchar(25))");
			
		    if(stmt.getUpdateCount()>0)
		    {
		    	System.out.println("table created");
		    }
		    else {
		    	System.out.println("could not create the tables");
		    }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	}         
}
