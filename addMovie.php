<?php
session_start();

if(!isset($_SESSION['uid']))
	die("Not logged in.");

require_once 'model.php';

$uname = $_SESSION['uname'];
$uid = $_SESSION['uid'];

if(isset($_POST["go"]) || isset($_POST['cancel']))
{	
	if(isset($_POST["go"]) && ltrim($_POST['title']) != '')
	{		
		$db = getDatabase();
		
		$query = $db->prepare("INSERT INTO movies SET title=?, rel_date=?, run_time=?, overview=?, notes=?, watched=?, watched_date=?, uid=?");
	
		if (!$query)
    		die('Error, Could not update database.');
	
		$watched = (isset($_POST['watched'])?1:0);
	
		$query->bind_param("sssssisi", $_POST['title'], $_POST['rel_date'], $_POST['run_time'], $_POST['overview'], $_POST['notes'], $watched, $_POST['watched_date'], $uid);
		
		$query->execute();
		
		$db->close();
				
		//header("Location: movieHandler.php?mid=&". (isset($_GET['ref']) ? urldecode($_GET['ref']) : ""));
		//die("done");
	}
	
	header("Location: ". (isset($_GET['ref']) ? urldecode($_GET['ref']) : "view.php"));
	die("done");
}

?>
<html>
	<head>
		<title>Add Movie</title>
		<script src="valid.js" type="text/javascript"></script>
	</head>
	<body>
		<form method="post" onsubmit="return validate()" action="addMovie.php<?php if(isset($_GET['ref']))echo '?ref='.$_GET['ref'] ?>">
			<fieldset>
				<legend>Add Movie</legend>
				<input type="submit" name="go" value="Save" />
				<input type="button" onclick="location.href='<?php if(isset($_GET['ref']))echo $_GET['ref']; else echo "view.php" ?>';" value="Cancel" />&nbsp;&nbsp;
				<a href="logout.php" id="logout-button">Logout</a>
				<br />
				Title:			<input type="input" 	name="title" 		value="" id="title"/><br />
				Release Date:	<input type="input" 	name="rel_date" 	value="" id="rdate"/><br />
				Run Time:		<input type="input" 	name="run_time" 	value="" id="rtime"/><br />
				Watched:		<input type="checkbox"  name="watched" />
				On:				<input type="input" 	name="watched_date"  value="" id="wdate"/><br />
				Overview:<br /> <textarea name="overview" rows="8" cols="100"></textarea><br />
				Notes:<br /> 	<textarea name="notes" rows="8" cols="100"></textarea><br />
				<i>Must add this movie before adding cast, crew, etc.</i>
			</fieldset>
		</form>
	</body>
	<script type="text/javascript">
		function validate()
		{
			return checkNotEmpty("title", "Title")
				&& checkDate("rdate", "Release Date")
				&& checkTime("rtime", "Run Time")
				&& checkDate("wdate", "Watched Date");
		}
	</script>
</html>