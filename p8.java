import java.sql.*;
import java.util.*;

public class p8 {

	
	public static void main(String[] args) throws Exception  {
		// TODO Auto-generated method stub

		Class.forName("com.mysql.cj.jdbc.Driver");

	      // variables
	      final String url = "jdbc:mysql:///DBMSLC";
	      final String user = "root";
	      final String password = "root";
	      	      // establish the connection
	      Connection con = DriverManager.getConnection(url, user, password);

	      // display status message
	      if (con == null) {
	         System.out.println("JDBC connection is not established");
	         return;
	      } else
	         System.out.println("Congratulations," + 
	              " JDBC connection is established successfully.\n");

	}

}