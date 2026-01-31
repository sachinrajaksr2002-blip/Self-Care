<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">
<script> 
   function validation()
       {   
            
            var regexp=/^[2-9]{1}[0-9]{3}\s{1}[0-9]{4}\s{1}[0-9]{4}$/;
 var x = document.forms["myForm"]["adc"].value;

           
           
           if(regexp.test(x))
               {
                   
			return true;
                   
               }
        else{ 

		window.alert("Invalid Aadhar no.");
		return false;
              }

}
   </script>  
<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
 div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  



</head>  
<body>  
<form method="POST" action="process_register.php" onsubmit="return validation();" name="myForm">  
  <div class="container">  
  <center>  <h1>Vaccine Registration Form</h1> </center> 
<button type="submit" class="registerbtn"> <a  href="login/vaccinelogin.php" style="align:right" class="registerbtn" >Already Register</a>  </button>  
  <hr>  
  <label> Firstname </label>   
<input type="text" name="firstname" placeholder= "Firstname" size="15" required />   
  
<label> Lastname: </label>    
<input type="text" name="lastname" placeholder="Lastname" size="15"required />   
<div>  
<label>   
City :  
</label>   
  
<select type="city" name="city">  
<option value="Course">--Select--</option>  
<option value="Saugor">Saugor</option>  
<option value="Bhopal">Bhopal</option>  
<option value="Gwaliar">Gwaliar</option>  
<option value="Indore">Indore</option>  
<option value="Jabalpur">Jabalpur</option>  
<option value="Shivni">Shivni</option>  
</select>  
</div>  
<div>  
<label>   
Gender :  
</label><br>  
<input type="radio" value="Male" name="gender" checked > Male   
<input type="radio" value="Female" name="gender"> Female   
<input type="radio" value="Other" name="gender"> Other  
  
</div>  
<label>   
Phone :  
</label>  
  
<input type="text" name="phone" placeholder="phone no." size="10"/ required>   
Current Address :  
<textarea cols="80" rows="5" placeholder="Current Address" name="address" value="address" required>  
</textarea>  
 <label for="email"><b>Email</b></label>  
 <input type="text" placeholder="Enter Email" name="mail" required>  
  
    <label for="psw"><b>Zipcode</b></label>  
    <input type="text" placeholder="Enter Zipcode" name="zipcode" required>  
 <label for="ad"><b>Adhar Card</b>         It should be like (3423 4567 9211)</label>  
    <input type="text" placeholder="Enter Adhar card" name="adc" required> 
  
    
   <input type="submit" value="Register" class="registerbtn" >

<button type="submit" class="registerbtn"> <a  href="index.php" class="registerbtn" >Back To Portal</a>  </button>  
</form>  
</body>  
</html>  