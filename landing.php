<?php 
// var_dump($_POST);
require('tester.php');

	if ($_SERVER["REQUEST_METHOD"] == "POST") {
	    
	    if(isset($_POST["login"])){
	    	if($_POST["login"] === "LOGIN") {
		        $uname = $qmdb->test_input($_POST["uname"]);
				$pwd = $qmdb->test_input($_POST["pwd"]);
				// echo "User is " . $uname;
				$pwd = md5($pwd);
				// echo 'MD5 file hash of ' . $pwd . ': ' . md5($pwd);
				if ($res = $qmdb->Login(strtolower($uname), $pwd)){
					//do nothing proceed to watched/unwatched/all selection
					echo $_SESSION['uname'];
				}
				else {
					header("Location: loginError.php");
				}

				// echo "Result is " . $res;
			}
	    } 
		else if(isset($_POST["register"])){
	    	if($_POST["register"] === "REGISTER") {
		        $uname = $qmdb->test_input($_POST["uname"]);
				$pwd = $qmdb->test_input($_POST["pwd"]);
				$pwd = md5($pwd);
				if ($res = $qmdb->Register(strtolower($uname), $pwd)){
					if ($res = $qmdb->Login(strtolower($uname), $pwd)){
						//do nothing proceed to watched/unwatched/all selection
						echo $_SESSION['uname'];
					}
					else {
						header("Location: loginError.php");
					}
				}
				else {
					header("Location: ucreateError.php");
				}
			}
		}
	}

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
	</body>
</html>