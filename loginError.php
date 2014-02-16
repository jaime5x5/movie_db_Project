<?php 
// var_dump($_POST);
// require('tester.php');

?>

<html>
<head>
<title>Login Error</title>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
</head>
	<body class="loginerror">
		<form action="index.php" method="post">
			<div>
				<h1>Try Again</h1>
		    	<p>Bad user name or password.</p>
		  	</div>
			<div>
		    	<input type="submit" id="loginerror" name="loginerror" value="OKAY" title="Try Again. Bad user name or password."/>
		  	</div>
		</form>
	</body>
</html>