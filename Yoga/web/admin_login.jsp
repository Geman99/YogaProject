<%--<%@include file= "index.jsp" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Home</title>

</head>

<body>
<link href="css/login.css" rel="stylesheet" type="text/css"/>

<div id="login_home">
    
<form method="post" action="admin_login_check.jsp" >
    
<h2>Admin Login</h2>

<table align="center">

<tr align="center">

<!--<td>Email :</td>-->

<td><input type="text" placeholder="Enter Email" name="uname"/></td>

</tr>

<tr align="center">

<!--<td>Password :</td>-->

<td><input type="password" placeholder="Enter Password" name="password"/></td>

</tr>





<tr align="center">

<!--    <td colspan="2" ><input type="submit" class="registerbtn" value="submit"/></td>-->
    <td><input type="submit" value="submit"/></td>
</tr>
<tr align="center">


</tr>
</table>

</form>
</div>
</body>

</html>