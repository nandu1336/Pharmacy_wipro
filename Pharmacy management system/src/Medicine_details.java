import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class Medicine_details {
	public static void main(String args[]) {
		Connection con = DBConnection.getConnection();
		String drugTable = DBConnection.drugTable;
		String userTable = DBConnection.userTable;
	    Statement stmt;
	    Statement stmt2;
		try {
			stmt=con.createStatement();
			stmt2 = con.createStatement();
			stmt.execute("CREATE TABLE "+drugTable+"(medicine_ID number(6),title varchar(20),quantity number(5),unit_price number(5))");
			System.out.println("drug_details tabels successfully created.");
			stmt2.execute("CREATE TABLE "+userTable+" (username varchar(25),password varchar(25))");
			System.out.println("users table successfully created.");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	    
	}         
}
