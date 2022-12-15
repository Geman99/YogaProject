<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException" %>
<%@page import="Database.DatabaseConnection" %>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@include file= "payment.jsp" %>
<%
 try{   int age=0;
        String name = request.getParameter("fname");
        
        String lname = request.getParameter("lname");
        String  gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String uname = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String schedule = request.getParameter("schedule");
       
        LocalDate birthDate = LocalDate.parse(dob); 
        LocalDate currentDate = LocalDate.now(); 
        String schedule_date= currentDate.toString();
        
        //calculate the time period between your date of birth and current date
        //by using between() method of ChronoUnit enum
         if ((birthDate != null) && (currentDate != null))   
        {  
            age = (int)ChronoUnit.YEARS.between(birthDate, currentDate);  
            
        } 
        
        PreparedStatement pst;
       Connection con=DatabaseConnection.getCon();  
        pst = con.prepareStatement("insert into admission(fname,lname,gender,dob,age,email,mobile,schedule,choosen_date)" + "values(?,?,?,?,?,?,?,?,?)");
        
        pst.setString(1, name);
        pst.setString(2, lname);
        pst.setString(3, gender);
        pst.setString(4, dob);
        pst.setInt(5, age);
        pst.setString(6, uname);
        pst.setString(7, mobile);
        pst.setString(8, schedule);
        pst.setString(9, schedule_date);
         pst.executeUpdate();  
        
        %>
    <script>  
        alert("You need to pay INR 500/- for admission");    
    </script>
    <%            
    //}
}catch(Exception e){out.println(e);}
   %>
 