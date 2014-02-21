<?php
//TODO check verification

require_once 'model.php';

//TODO temp values these should be pulled from the verification
$uname = 'rick';
$uid = '3';


if(!isset($_GET['mid']) && !isset($_POST['mid']))
{
	header("Location: ". (isset($_GET['ref']) ? urldecode($_GET['ref']) : "view.php"));
	die();
}

$db = getDatabase();

if(!verifyOwnership($uid, isset($_GET['mid'])?$_GET['mid']:$_POST['mid'], $db))
	die("Somthing went wrong.");

if(isset($_POST['mid']))
{
	//this is a full handled request
	if(isset($_POST['go']))
		deleteMovie($db, $_POST['mid']);
	
	$db->close();
	
	header("Location: ". (isset($_GET['ref']) ? urldecode($_GET['ref']) : "view.php"));
	die();
}

$movie = getMovie($_GET['mid'], $db);
if(!$movie)
	die("Somthing went wrong.");

$db->close();
?>
<html>
	<head>
		<title>Delete Movie</title>
	</head>
	<body>
		Are you sure you want to delete <?php echo $movie["title"]; ?>?<br />
		<form method='post' action="delete.php<?php if(isset($_GET['ref']))echo '?ref='.$_GET['ref'] ?>">
			<input type="hidden" name="mid" value="<?php echo $movie['mid'] ?>" />
			<input type="submit" name="go" value="Delete" />
			<input type="submit" name="cancel" value="Cancel" />
		</form>
	</body>
</html>