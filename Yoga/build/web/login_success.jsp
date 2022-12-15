

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="css/nav1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


    </head>

    <body>

        <div style="background-color: burlywood; text-align: center; display: block;height: 120px;font-size: 140%;">


            <img src="images/nitLogo.jpg" alt="_blank" width="100px" height="100px" 
                 style="float: left; margin: 0px; padding: 0px;">

            <div style="padding-top: 30px;">
                <h2 style="color:#335c67;">

                    <p ><center>Welcome, <%=session.getAttribute("uname")%></center> You have been logged in successfully</p>
                </h2>
            </div>   

            <div id="menu">
                <ul>
                    <li><a href="index.jsp" style="color: white;">HOME<i class="fa fa-institution"></i></a></li>

                    <li><a href="yogaForm.jsp" style="color: white">Admission<i class='fab fa-elementor'></i></a></li>
                    <li><a href="payment.jsp" style="color: white">Payment</a></li>
                    <li><a  href="" style="color: white">View Form</a></li>
                                      
                    <li><a  href="schedule_html.jsp" style="color: white">Change Schedule<i class="fa fa-edit"></i></a></li>

                    <li><a href="index.jsp" style="color: white">Logout <i class='fas fa-share-square'></i></a></li>
                </ul> 

            </div>
    </body>

</html>