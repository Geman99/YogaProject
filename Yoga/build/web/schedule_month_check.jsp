<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException" %>
<%@page import="Database.DatabaseConnection" %>
<%@page import="java.time.*"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.util.*" %>


<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

        <title>checking update</title>

    </head>

    <body>
        <div style="background-color: beige; padding:50px; font-size: 25px;">
            <a href="login_success.jsp">Go Back</a>
            <%!
                String userdbName;

            %>

            <%
                String email = (String)session.getAttribute("uname");
                String schedule = request.getParameter("schedule");
                Connection con = null;

                PreparedStatement ps = null;

                ResultSet rs = null;
                int day = 0;
                Month month = null;
                int year = 0;
                int day1 = 0;
                Month month1 = null;
                int year1 = 0;

                String sql = "select * from admission where email= '" + email + "'";
//                String sql1 = "select * from admission where email= ?";

                if ((!(email.equals(null) || email.equals("")))) {

                    try {

                        con = DatabaseConnection.getCon();
                        ps = con.prepareStatement(sql);

                        rs = ps.executeQuery();

                        if (rs.next()) {

                            userdbName = rs.getString("email");

                            if (email.equals(userdbName)) {

                                session.setAttribute("email", userdbName);
                                String schedule_choosen = rs.getString("choosen_date");

                                LocalDate schedule_choosen1 = LocalDate.parse(schedule_choosen);

                                // Get day from date
                                day = schedule_choosen1.getDayOfMonth();

                                // Get month from date
                                month = schedule_choosen1.getMonth();

                                // Get year from date
                                year = schedule_choosen1.getYear();

                                LocalDate currentDate = LocalDate.now();

                                 month1 = currentDate.getMonth();
                                year1 = currentDate.getYear();
                                 day1 = currentDate.getDayOfMonth();
//       out.println(month1);
 
                    if (year == year1) {
                            if (month != month1) {
//                                response.sendRedirect("shedule_update.jsp");
ps = con.prepareStatement("update admission set schedule = ? where email = ?");
        
        ps.setString(1, schedule);
        ps.setString(2, email);
        ps.executeUpdate();  
        
        %>
        
        <script>  
            alert("Record Updated");          
       </script>
    <%  
      

                            } else {

            %>
            <script>
                alert("you can't change schedule in same month! please wait till next month");
            </script>

            <p>Your Previous chosen date was: <%=schedule_choosen1%></p><br>
            
            <%

                    }
                } else {

//                    response.sendRedirect("shedule_update.jsp");
ps = con.prepareStatement("update admission set schedule = ? where email = ?");
        
        ps.setString(1, schedule);
        ps.setString(2, email);
        ps.executeUpdate();  
%>
        
        <script>  
            alert("Record Updated");          
       </script>
    <%  
     

        
                }

            %>

            <!--                
                        </table> 
            <%                        }

                    } else

                        out.println("Invalid Email");

                    rs.close();

                    ps.close();

                } catch (SQLException sqe) {

                    out.println(sqe);

                }

            } else {

            %>

            <center><p style="color:red">Invalid Email</p></center>

            <%        getServletContext().getRequestDispatcher("/index.jsp").include(request,
                            response);

                }
            %>
        </div>
    </body>

</html>
