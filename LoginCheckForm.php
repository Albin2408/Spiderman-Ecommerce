<?php
	$employee_username = $_POST['employee_user'];
	$employee_password = $_POST['employee_password'];
	$client_username = $_POST['client_user'];
	$client_password = $_POST['client_password'];
    
	$connection = new mysqli("localhost", "lopeza21_bobthebuilder", "goldfishchips", "lopeza21_SpiderMan-TheMultiVerseShop");
	if ($connection->connect_error)
    	{
        	die("Unable to connect to the database ".$connection->connect_error);
    	}
	if ($_POST["employee_login"])
    	{
        	$check = $connection->prepare("select * from EMPLOYEE where username = ?");
        	$check->bind_param("s", $employee_username);
        	$check->execute();
   	 
        	$check_result = $check->get_result();
    	if ($check_result->num_rows > 0)
        	{
            	$data = $check_result->fetch_assoc();
            	if ($data['password'] === $employee_password)
                	{
                    	echo
                    	"<html>
                    	<body style=background-color:Black; border:2px solid Yellow;>
                        	<center>
                            	<h1 style=background-color:Yellow; border:2px solid Yellow>Thank you for verifying credentials, hit continue.</h1>
                            	<form action='employeeview.php' method='post'>
                                	<table>
                                    	<td style=color:Yellow; font-size: 20px;>Continue</td>
                                    	<td>
                                        	<input type='submit' name='submit_button' value='continue'>
                                    	</td>
                    	</html>";
                	}
        	}
    	else
        	{
            	echo "<body style=background-color:Black; border:2px solid Yellow;>
                	<h1 style=background-color:Yellow; border:2px solid Yellow>Username or Password is invalid.<br>Please try again<br>
                	<td style='color:Yellow; text-align:right; font-size: 20px;'><a style=color:red; font-size: 20px; href=loginform.html>Click me to go back to the login page</a></td></h1>
             	 
              	</body>";
        	}
    	}
	if ($_POST["client_login"])
    	{
        	$check = $connection->prepare("select * from CLIENTS where username = ?");
        	$check->bind_param("s", $client_username);
        	$check->execute();
       	 
        	$check_result = $check->get_result();
    	if ($check_result->num_rows > 0)
        	{
            	$data = $check_result->fetch_assoc();
            	if ($data['password'] === $client_password)
                	{
                    	echo
                    	"<html>
                    	<body style=background-color:Black; border:2px solid Yellow;>
                        	<center>
                            	<h1 style=background-color:Yellow; border:2px solid Yellow>Thank you for verifying credentials, hit continue.</h1>
                            	<form action='clientview.php' method='post'>
                                	<table>
                                    	<td style=color:Yellow; font-size: 20px;>Continue</td>
                                    	<td>
                                        	<input type='submit' name='submit_button' value='continue'>
                                    	</td>
                    	</html>";
                	}
        	}
    	else
        	{
            	echo "<body style=background-color:Black; border:2px solid Yellow;>
                	<h1 style=background-color:Yellow; border:2px solid Yellow>Username or Password is invalid.<br>Please try again<br>
                	<td style='color:Yellow; text-align:right; font-size: 20px;'><a style=color:red; font-size: 20px; href=loginform.html>Click me to go back to the login page</a></td></h1>
             	 
              	</body>";           	 
        	}
    	}
$connection->close();   	 
?>
