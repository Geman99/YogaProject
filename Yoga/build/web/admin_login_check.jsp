<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.lang.NullPointerException"%>
<%@page import="java.util.*"%>
<%@page import="Database.DatabaseConnection" %>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Admin Login Check</title>

</head>

<body>

<%! String userdbName;

String userdbPsw;


%>

<%

Connection con= null;

PreparedStatement ps = null;

ResultSet rs = null;

String sql = "select * from admin_login where uname=? and password=?";



String uname = request.getParameter("uname");
//out.println(uname);

String password = request.getParameter("password");

//out.println(password);


if((!(uname.equals(null) || uname.equals("")) && !(password.equals(null) || 
password.equals(""))))

{

try{

con= DatabaseConnection.getCon();  
ps = con.prepareStatement(sql);

ps.setString(1, uname);

ps.setString(2, password);

rs = ps.executeQuery();

if(rs.next())

{ 

userdbName = rs.getString("uname");

userdbPsw = rs.getString("password");


if(uname.equals(userdbName) && password.equals(userdbPsw) )

{

session.setAttribute("uname",userdbName);

response.sendRedirect("view_applicants.jsp"); 

} 

}

else{
%>
<script>
    alert("Please Write valid email! Try Again!");
</script>
<%
response.sendRedirect("index.jsp");
    }
rs.close();

ps.close(); 

}

catch(SQLException sqe)

{

out.println(sqe);

} 

}

else

{

%>

<center><p style="color:red">Fail In Login</p></center>

<% 

getServletContext().getRequestDispatcher("/index.jsp").include(request, 
response);

}
%>

</body>

</html>