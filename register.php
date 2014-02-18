<?php 
// var_dump($_POST);
require('tester.php');
?>

<html>
<head>
<title>Register</title>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
</head>
	<body class="register">
		<h1>myMoviedb</h1>
		<form action="landing.php" method="post">
			<div>
				<h3>Please enter a username.</h3>
		    	<label for="uname">User Name:</label>
		    	<input type="text" name="uname" id="uname" placeholder="enter a user name" title="Please enter a username." value="" />
		  	</div>
		  	<div>
		  		<h3>Please enter a password.</h3>
		    	<label for="pwd">Password:</label>
		    	<input type="password" name="pwd" id="pwd" placeholder="enter a user password" title="Please enter a password at least 7 characters long." value="" />
		  	</div>
			<div>
		    	<input type="submit" name="register" id="register" value="REGISTER" title="Click to register." />
		  	</div>
		</form>
	</body>
</html>