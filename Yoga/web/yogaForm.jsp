<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Yoga Admission Form</title>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link href="css/yogaForm.css" rel="stylesheet" type="text/css"/>
    <script>
      function ageCalculator() {
        var userinput = document.getElementById("DOB").value;
        var dob = new Date(userinput);
        if (userinput === null || userinput === "") {
          document.getElementById("message").innerHTML =
            "**Choose a date please!";
          return false;
        } else {
          var month_diff = Date.now() - dob.getTime();
          var age_dt = new Date(month_diff);
          var year = age_dt.getUTCFullYear();
          var age = Math.abs(year - 1970);
          if (age >= 18 && age <= 65){
            document.getElementById("result").innerHTML = "Age is: " + age;
            return true;
          }
          else {
            alert(
              ("Age is: " + age + " years.So you can't enroll. ")
            );
            return false;
          }
        }
      }
    </script>
  </head>

  <body>
    <div class="wrapper">
      <h2>Yoga Admission Form</h2>
      <form onsubmit="return ageCalculator()" method="post" action="yogaFormStore.jsp" >
        <h4>Personal Detail</h4>
        <div class="input-group">
          <div class="input-box">
            <input type="text" placeholder="First Name" name="fname" required class="name" />
            <i class="fa fa-user icon"></i>
          </div>
          <div class="input-box">
            <input type="text" placeholder="Last Name" name="lname" required class="name" />
            <i class="fa fa-user icon"></i>
          </div>
        </div>
        
        <div class="input-group">
          <div class="input-box">
            <h4>Gender</h4>
           Male <input type="radio" name="gender" value="Male" />
Female <input type="radio" name="gender" value="Female" />
Other <input type="radio" name="gender" value="Other" />

            
          </div>
        </div>
        <h4>Date of Birth:</h4>
        <div class="input-group">
          <div class="input-group">
            
            <input type="date" id="DOB" name="dob"  style="color: black; background-color: whitesmoke;"  required/>

            <button
              type="button"
              onclick="ageCalculator()"
              style="max-width: 150px; background-color: black;"
            >
              Calculate age
            </button>
            <br /><br />
            <h3 style="color: black" id="result" align="center"></h3>
            <span id="message" style="color: red"> </span> <br /><br />
          </div>
        </div>
        <h4>Contact Detail</h4>
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
            <input
              type="number"
              placeholder="Mobile Number" name="mobile"
              required
              class="name"
            />
            <i class="fa fa-phone icon"></i>
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
        </div>
      </form>
    </div>
  </body>
</html>
