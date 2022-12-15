
package Database;

import java.sql.*; 

  
// This class can be used to initialize the database connection 
public class DatabaseConnection { 
    public static Connection getCon() 
        throws SQLException, ClassNotFoundException 
    { 
        // Initialize all the information regarding 
        // Database Connection
        String dbURL = "jdbc:mysql://localhost:3306/"; 
        String dbName = "yoga"; 
        String dbUsername = "root"; 
        String dbPassword = ""; 
  
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection con = DriverManager.getConnection(dbURL+dbName,dbUsername,dbPassword); 
        return con; 
    } 
} 

