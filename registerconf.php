<?php 
require('tester.php');
// var_dump($_POST);

$uname = $_SESSION["uname"];

?>

<html>
<head>
<title>Registration Sucessful</title>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
</head>
	<body class="regconf">
		<form action="index.php" method="post">
			<div>
				<h1>Registration Sucessful</h1>
		    	<p>Please <?php echo strtoupper($uname) ?> login and start your myMoviedb.</p>
		  	</div>
			<div>
		    	<input type="submit" id="regconf" name="regconf" value="LOGIN" title="Login to myMoviedb."/>
		  	</div>
		</form>
	</body>
</html>