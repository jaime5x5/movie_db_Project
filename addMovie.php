<?php
//TODO check verification

require_once 'model.php';

//TODO temp values these should be pulled from the verification
$uname = 'rick';
$uid = '3';

if(isset($_POST["go"]) || isset($_POST['cancel']))
{	
	if(isset($_POST["go"]))
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
	</head>
	<body>
		<form method="post" action="addMovie.php<?php if(isset($_GET['ref']))echo '?ref='.$_GET['ref'] ?>">
			<fieldset>
				<legend>Add Movie</legend>
				<input type="submit" name="go" value="Save" />
				<input type="submit" name="cancel" value="Cancel" />
				<br />
				Title:			<input type="input" 	name="title" 		value="" /><br />
				Release Date:	<input type="input" 	name="rel_date" 	value=""/><br />
				Run Time:		<input type="input" 	name="run_time" 	value=""/><br />
				Watched:		<input type="checkbox"  name="watched" />
				On:				<input type="input" 	name="watched_date"  value=""/><br />
				Overview:<br /> <textarea name="overview" rows="8" cols="100"></textarea><br />
				Notes:<br /> 	<textarea name="notes" rows="8" cols="100"></textarea><br />
				<i>Must add this movie before adding cast, crew, etc.</i>
			</fieldset>
		</form>
	</body>
</html>