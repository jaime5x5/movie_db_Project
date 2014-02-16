<?php 
// var_dump($_POST);
// require('tester.php');

?>

<html>
<head>
<title>User Create Error</title>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
</head>
	<body class="loginerror">
		<form action="register.php" method="post">
			<div>
				<h1>Try Again</h1>
		    	<p>Try a different user name or password.</p>
		  	</div>
			<div>
		    	<input type="submit" id="ucreateerror" name="ucreateerror" value="OKAY" title="Try Again. Currently a taken user name password combination."/>
		  	</div>
		</form>
	</body>
</html>