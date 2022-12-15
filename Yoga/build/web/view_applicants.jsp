<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException" %>
<%@page import="Database.DatabaseConnection" %>
<%@page import="java.time.*"%>
<%@page import="java.time.temporal.ChronoUnit"%>

<HTML>
       <HEAD>
       <TITLE>Select Data From a Database</TITLE>
       </HEAD>
       <BODY BGCOLOR="cyan">
           <H4 style="float: left;"><a href="index.jsp">Home</a></H4>
           
            <H1>View details of Applicants</H1>
            <%
                Connection  connection=DatabaseConnection.getCon(); 
                Statement statement = connection.createStatement() ;
                ResultSet resultset =
                statement.executeQuery("select * from admission") ;
            %>
                <TABLE BORDER="1">
           <TR>
                 
                 <TH>Name</TH>
                 <TH>Gender</TH>
                 <TH>Age</TH>
                 <TH>Email</TH>
                 <TH>Mobile</TH>
                 <TH>Schedule</TH>
          </TR>
           <% while(resultset.next()){ %>
           <TR>
                <TD> <%= resultset.getString(1) %></td>
               <TD> <%= resultset.getString(3) %></TD>
               <TD> <%= resultset.getString(5) %></TD>
               <TD> <%= resultset.getString(6) %></TD>
               <TD> <%= resultset.getString(7) %></TD>
               <TD> <%= resultset.getString(8) %></TD>
          </TR>
           <% } %>
               </TABLE>
         </BODY>
</HTML>