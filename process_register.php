<?php
	include_once 'assets/conn/dbconnect.php';
	
	if(!empty($_POST))
	{
		
			$firstname=$_POST['firstname'];
			$lastname=$_POST['lastname'];
			$city=$_POST['city'];
			$gender=$_POST['gender'];			
			$phone=$_POST['phone'];
			$address=$_POST['address'];			
			$email=$_POST['mail'];			
			$zipcode=$_POST['zipcode'];
			$ad=$_POST['adc'];
			$otp=rand(1000,9000);		
			
			$query="insert into tblvaccine(firstname,lastname,city,gender,phone,address,mail,zipcode,adharcard,otp)
			values('$firstname','$lastname','$city','$gender','$phone','$address','$email','$zipcode','$ad','$otp')";
			
			mysqli_query($con,$query) or die("Can't Execute Query...");

			echo "<script>alert('Vaccine Registration successfully...');</script>" ;
	echo "<script>window.location.href ='vaccine.php3'</script>";

			
		
	}
	else
	{
		header("location:vaccine.php3");
	}
?>