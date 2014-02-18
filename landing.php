<?php 
// var_dump($_POST);
require('tester.php');
// var_dump($_SESSION);
	if ($_SERVER["REQUEST_METHOD"] == "POST") {
	    
	    if(isset($_POST["login"])){
	    	if($_POST["login"] == "LOGIN") {
				if ($_POST["uname"] !== "" && $_POST["pwd"] !== "") {
					$uname = $qmdb->test_input($_POST["uname"]);
					$pwd = $qmdb->test_input($_POST["pwd"]);	
					
					$pwd = md5($pwd);

					if ($res = $qmdb->Login(strtolower($uname), $pwd)){
						//do nothing proceed to watched/unwatched/all selection
						// echo $_SESSION['uname'];
					}
					else {
						header("Location: loginError.php");
					}					
				}
				else {
					header("Location: loginError.php");
				}
			}
	    } 
		else if(isset($_POST["register"])) {
	    	if($_POST["register"] === "REGISTER") {
//vallidate, sanitize & encrypt
				if ($_POST["uname"] !== "" && $_POST["pwd"] !== "") {
					$uname = $qmdb->test_input($_POST["uname"]);
					$pwd = $qmdb->test_input($_POST["pwd"]);					
					$pwd = md5($pwd);
//Register					
					if ($res = $qmdb->Register(strtolower($uname), $pwd)) {
						$_SESSION["uname"] = $uname;
						header("Location: registerconf.php");
					}
				}
				else {
					header("Location: loginError.php");
					//bails if input empty
				}
			}
		}
	}

// echo 'MD5 file hash of ' . $pwd . ': ' . md5($pwd);
// echo "User is " . $uname;
// echo "Result is " . $res;
?>

<html>
<head>
<title>Welcome</title>
<meta content="text/html; charset=UTF-8" http-equiv="content-type">
</head>
	<body class="landing">
		<form action="myMoviedb.php" method="post">
			<div>
				<h1>Welcome</h1> 
		    	<h3><?php echo $uname ?></h3>
		  	</div>
			<div>
				<p>Please choose one of the following options:</p> 
		    	<input type="submit" id="watched" name="watched" value="WATCHED" />
		    	<input type="submit" id="unwatched" name="unwatched" value="UNWATCHED" />
		    	<input type="submit" id="allmovies" name="allmovies" value="ALL" />
		  	</div>
		</form>
		<form action="logout.php" method="post">
			<div> 
		    	<input type="submit" id="logout" name="logout" value="LOGOUT" />
		  	</div>
		</form>
	</body>
</html>