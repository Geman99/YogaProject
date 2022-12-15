function registration_validation(){

			var pass = document.getElementById('psw').value;
			var confirmpass = document.getElementById('psw-repeat').value;
			var emails = document.getElementById('email').value;
//                      if(emails == ""){
//				document.getElementById('emailids').innerHTML =" ** Please fill the email idx` field";
//				return false;
//			}
			if(emails.indexOf('@') <= 0 ){
				document.getElementById('emailids').innerHTML =" ** @ Invalid Position";
				return false;
			}

			if((emails.charAt(emails.length-4)!=='.') && (emails.charAt(emails.length-3)!=='.')){
				document.getElementById('emailids').innerHTML =" ** . Invalid Position";
				return false;
			}


			
//			if(pass == ""){
//				document.getElementById('passwords').innerHTML =" ** Please fill the password field";
//				return false;
//			}
			if((pass.length < 5) || (pass.length > 20)) {
				document.getElementById('passwords').innerHTML =" ** Passwords length must be between  4 and 20";
				return false;	
			}


			if(pass!==confirmpass){
				document.getElementById('confrmpass').innerHTML =" ** Password does not match the confirm password";
				return false;
			}



//			if(confirmpass == ""){
//				document.getElementById('confrmpass').innerHTML =" ** Please fill the confirmpassword field";
//				return false;
//			}


		}
