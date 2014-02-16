<?php

?>
<!-- echo 'MD5 file hash of ' . $file . ': ' . md5_file($pwd); -->
<html>
<head>
<title>login</title>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
</head>
	<body class="login">
		<h1>myMoviedb</h1>
		<form action="landing.php" method="post">
			<fieldset>
				<legend>REGISTERD USER LOGIN</legend>
				<div>
			    	<label for="uname">User Name:</label>
			    	<input type="text" name="uname" id="uname" placeholder="enter user name" title="Please enter your username." value="" />
			  	</div>
			  	<div>
			    	<label for="pwd">Password:</label>
			    	<input type="text" name="pwd" id="pwd" placeholder="enter user password" title="Please enter your password." value="" />
			  	</div>
				<div>
			    	<input type="submit" name="login" id="login" value="LOGIN" title="Click to login."/>
			  	</div>				
			</fieldset>

		</form>
		<form action="register.php" method="post">
		  	<div>
		  		<p>Not currently a myMoviedb user, be a part of, signup.</p>
		    	<input type="submit" name="signup" id="signup" value="SIGNUP" title="New user click to signup as myMoviedb user."/>
		  	</div>
		</form>
	</body>
</html>

