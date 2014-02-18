<?php  
require('tester.php');
// var_dump($_SESSION);

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
		if(isset($_POST["logout"])){
	    	if($_POST["logout"] == "LOGOUT") {
				// echo $_SESSION['uname'];
	    		$uname = $_SESSION["uname"];
				// echo $uname;
	    		if ($qmdb->Logout()){
	    				// logsoff db echo "good thru destruct"; 
	    				
	    			if (session_destroy()){
	    				// kills session.	echo "good thru destroy"; 
	    				
	    			}
	    		}	    		
	    	}
	    }
	}
?>

<html>
<head>
<title>Log Out</title>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
</head>
	<body class="logout">
		<div>
			<h1>Thank you, <?php echo $uname ?> come again.</h1>
	    	<p>And then?</p>
	    	<p>If you would like to log in again&#58;</p>
	  	</div>
		<form action="index.php" method="post">
			<div>
		    	<input type="submit" id="login" name="login" value="LOGIN" title="Log in."/>
		  	</div>
		</form>
		<p>And then?</p>
		<p>NO And then?</p>
	</body>
</html>