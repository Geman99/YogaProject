
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Form</title>
    <link href="css/yogaForm.css" rel="stylesheet" type="text/css"/>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <script>
        function paymentAlert(){
            confirm("Payment Success");
        }
    </script>
</head>

<body>
    <div class="wrapper">
        <h2>Payment 500/- Rs INR</h2>
        <form  action="login_success.jsp" onsubmit="paymentAlert()">
            <h4>Account Holder Name</h4>
            <div class="input-group">
                <div class="input-box">
                   
                    <input type="text" placeholder="Full Name" required class="name">
                    <i class="fa fa-user icon"></i>
                </div>
               
            </div>
           
            <div class="input-group">
                <div class="input-box">
                    <h4> Bank Name</h4>
                    <input type="radio" id="b1" name="gendar" checked class="radio">
                    <label for="b1">SBI</label>
                    <input type="radio" id="b2" name="gendar" class="radio">
                    <label for="b2">BOB</label>
                    <input type="radio" id="b3" name="gendar" class="radio">
                    <label for="b3">PNB</label>
                    <input type="radio" id="b4" name="gendar" class="radio">
                    <label for="b4">Union</label>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <h4>Payment Type</h4>
                    <input type="radio" name="pay" id="bc1" checked class="radio">
                    <label for="bc1"><span><i class="fa fa-cc-visa"></i> Credit Card</span></label>
                    <input type="radio" name="pay" id="bc3" checked class="radio">
                    <label for="bc3"><span><i class="fa fa-cc-visa"></i> Debit Card</span></label>
                    <input type="radio" name="pay" id="bc2" class="radio">
                    <label for="bc2"><span><i class="fa fa-cc-paypal"></i> Paypal</span></label>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="number" placeholder="Card Number" required class="name">
                    <i class="fa fa-credit-card icon"></i>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <input type="number" placeholder="cvv-number" required class="name">
                    <i class="fa fa-user icon"></i>
                </div>
                <span><b style="color:#7ed321;">Expiry Date </b></span>
                <div class="input-box">
                    
                    <select>
                        <option> jan</option>
                        <option> Feb</option>
                        <option> march</option>
                        <option> Apr</option>
                        <option> May</option>
                        <option> june</option>
                        <option> july</option>
                        <option> Aug</option>
                        <option> Sep</option>
                        <option> Oct</option>
                        <option> Nov</option>
                        <option> Dec</option>
                    </select>
                    <select>
                        <option>2023</option>
                        <option>2024</option>
                        <option>2025</option>
                    </select>
                </div>
            </div>
            <div class="input-group">
                <div class="input-box">
                    <button type="submit">PAY NOW</button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>