<?php

session_start();

if (isset($_POST["Login"]))
{

$email = $_POST["email"];
$pass = $_POST["pass"];

include 'connect.php';

$sql = "SELECT * FROM admin WHERE username = '$email'";

$result = $con->query($sql);

$fet = mysqli_fetch_assoc($result);

$useremail = $fet["username"];
$userpassw = $fet["password"];





if ( $email != $useremail )
{ $sms = "Invalid Username..."; }

else if ( $pass != $userpassw )
{ $sms = "Invalid Password..."; }

else if ( $email == $useremail && $pass == $userpassw)
{ 	$_SESSION["username"] = $useremail;
	header ('Location: admin/admin.php'); }

else { header ('Location: index.php'); }

}


?>



<!DOCTYPE html>
<html>

<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Cormorant+SC:300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
	<div class="padding-all">
		<div class="header">
			<h1>Login Form</h1>
		</div>

		<div class="design-w3l">
			<div class="mail-form-agile">
				<form action="#" method="post">
					<input type="text" name="email" placeholder="User Name" required=""/>
					<input type="password"  name="pass" class="padding" placeholder="Password" required=""/>
					<input type="submit" value="login" name="Login">
				</form>
			</div>
		  <div class="clear"> </div>
		</div>
		

</body>
</html>