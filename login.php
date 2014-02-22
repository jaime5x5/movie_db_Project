<?php

require_once 'model.php';

session_start();

if (isset($_POST['submit'])){
	
	$uname = $_POST['user'];
	$pwd = $_POST['pwd'];
	
	$mysqli = getDatabase();
	
	$query = "SELECT uid from users where uname= ? AND pwd= ?";
	$stmt = $mysqli->prepare($query);
	$stmt->bind_param("ss", $uname, $pwd);
	$stmt->execute();
	$stmt->bind_result($result);
	$stmt->fetch();
	
	if ($result == "" || $result == NULL){
		echo "Invalid login.  Please try again.";		
	}
	else{
		$_SESSION['uid'] = $result;
		$_SESSION['uname'] = $uname;
		header("Location:view.php");
	}			
}
?>
<html>
	<head>	
		<title>Welcome to the Movie Diary App</title>		
	</head>
	<body>
		<div name="memberdiv" style="position: absolute; top: 30; left: 30; width: 600; height: 800; border-width: 4;">
			<form action = "login.php" method="post">
			<fieldset><legend>Movie Diary User Login:</legend>
				<label>Username:</label><br/>
					<input type="text" width="400" name="user" id="user"  value="" ><br/>
					<label>Password:</label><br/>
					<input type="password" width="400" name="pwd" id="pwd"  value="" ><br/><br/>
					<input type="submit" name = "submit" value="Login" style="width: 155;">		
			</fieldset>
			</form>
		</div>
	</body>
</html>

