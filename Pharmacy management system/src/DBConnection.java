import java.sql.*;
public class DBConnection {
	 static Connection con=null;
	  static	String drugTable = "drug_details";
	  static String userTable = "users";
	    public static Connection getConnection()
	    {
	        if (con != null) return con;
	        else {
	        	try
		        {
		            Class.forName("oracle.jdbc.driver.OracleDriver");
		            con=DriverManager.getConnection("jdbc:Oracle:thin:@localhost:1521:orcl","scott","tiger");
		        }
		        catch(Exception e)
		        {
		            e.printStackTrace();
		        }
	        	return con;
	        }
	    }
	} 

