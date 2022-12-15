<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException" %>
<%@page import="Database.DatabaseConnection" %>
<%
 try{
// String name = request.getParameter("name");
        String uname = request.getParameter("uname");
        String password = request.getParameter("psw");
        
        PreparedStatement pst;
       Connection con=DatabaseConnection.getCon();  
        pst = con.prepareStatement("insert into register(uname,password)" + "values(?,?)");
        
//       pst.setString(1, name);
        pst.setString(1, uname);
        pst.setString(2, password);
         pst.executeUpdate();  
        
        %>
    <script>  
        alert("Rgisteration Success");    
    </script>
    <%            
    //}
}catch(Exception e){out.println(e);}
   %>
 