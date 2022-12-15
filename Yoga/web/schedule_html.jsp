<%--<%@include file="index.jsp" %>--%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Change Schedule</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/yogaForm.css" rel="stylesheet" type="text/css"/>
    
  </head>

  <body>
    <div class="wrapper">
      <h2>Change Schedule</h2>
      <form method="post" action="schedule_month_check.jsp" >
          <div class="input-group">
          <div class="input-box">
            <input
              type="email"
              placeholder="Email Adress" name="email"
              required
              class="name"
            />
            <i class="fa fa-envelope icon"></i>
          </div>
        </div>
        
        <div class="input-group">
          <div class="input-box">
            <h4>Select Schedule</h4>
            6-7 AM<input type="radio" value="6-7am" name="schedule"  />
            
            7-8 AM<input type="radio" value="7-8am" name="schedule" />
            
            8-9 AM<input type="radio" value="8-9am" name="schedule"  />
            
           5-6 PM <input type="radio" value="5-6pm" name="schedule"  />
            
          </div>
        </div>
          
        <div class="input-group">
          <div class="input-box">
            <input type="submit" class="submit" name="submit" value="Submit" />
          </div>
            <a href="index.jsp">Home</a>
        </div>
      </form>
    </div>
  </body>
</html>
