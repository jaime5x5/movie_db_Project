<?php
session_start();

if(!isset($_SESSION['uid']))
	die("Not logged in.");

require_once 'model.php';

$uname = $_SESSION['uname'];
$uid = $_SESSION['uid'];


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
	if(isset($_POST['w']))
		setWatched($db, $_POST['mid'], $_POST['date']);
	if(isset($_POST['u']))
		setUnwatched($db, $_POST['mid']);
	
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
		<title>Set watched</title>
	</head>
	<body>
		Are you sure you want to set <?php echo $movie["title"]; ?> as <?php echo ($movie['watched'])?"unwatched":"watched" ?>?<br />
		<form method='post' action="setWatched.php<?php if(isset($_GET['ref']))echo '?ref='.$_GET['ref'] ?>">
			<input type="hidden" name="mid" value="<?php echo $movie['mid'] ?>" />
			<?php if($movie['watched']) : ?>
			<input type="submit" name="u" value="Set Unwatched" />
			<?php else:
				$date = getdate(); 
			?>
			Date watched: <input type="input" name="date" value="<?php echo $date['year'].'-'.$date['mon'].'-'.$date['mday'] ?>" />
			<input type="submit" name="w" value="Set Watched" />
			<?php endif; ?>
			<input type="submit" name="cancel" value="Cancel" />
		</form>
	</body>
</html>