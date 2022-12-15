<%@include file= "index.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Login Error</title>

</head>

<body>
<div style="background-color: beige; padding:50px; font-size: 25px;">
<center><p style="color:red">Sorry, your record is not available.</p></center>
<center><a href="sRegister.jsp ">Please Register </a></center>
</div>
<%

//getServletContext().getRequestDispatcher("/s_login_home.jsp").include(request, 
//response);

%>

</body>

</html>