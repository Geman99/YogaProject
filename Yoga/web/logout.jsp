
<%@include file= "index.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Logout</title>

</head>

<body>

<% session.invalidate(); %>
<script>
alert("You have been successfully logout");

</script>

</body>

</html>