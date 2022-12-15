
<%@include file= "index.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body> 
        <script src="javascript/register.js" type="text/javascript"></script>
        <link href="css/s_register.css" rel="stylesheet" type="text/css"/>
        <form method="post" action="sRegister1.jsp" onsubmit="return registration_validation()" >
            <div class="container">
                <h1> Register</h1>
                <p>Please fill in this form to create an account.</p>
                <hr>
                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="uname" id="email" required>
                <span id="emailids" style="color: red"> </span><br>

                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="psw" id="psw" required>
                <span id="passwords" style="color: red" > </span><br>
                <label for="psw-repeat"><b>Repeat Password</b></label>
                <input type="password" placeholder="Confirm Password" name="psw-repeat" id="psw-repeat" required>
                <span id="confrmpass" style="color: red"> </span><br>
                <hr>

                <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
                <button type="submit" class="registerbtn">Register</button>
                <p>Already have an account? <a href="s_login_home.jsp">Sign in</a></p>
            </div>
        </form>

    </body>
</html>