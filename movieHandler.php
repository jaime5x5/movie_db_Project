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
	header("Location: ". (isset($_GET['ref']) ? urldecode($_GET['ref']) : "view.php"));
	
	if(isset($_POST["go"]) && ltrim($_POST['title']) != '')
	{
		$query = $db->prepare("UPDATE movies SET title=?, rel_date=?, run_time=?, overview=?, notes=?, watched=?, watched_date=? WHERE mid = ?");
	
		if (!$query)
    		die('Error, Could not update database.');
	
		$watched = (isset($_POST['watched'])?1:0);
	
		$query->bind_param("sssssisi", $_POST['title'], $_POST['rel_date'], $_POST['run_time'], $_POST['overview'], $_POST['notes'], $watched, $_POST['watched_date'], $_POST['mid']);
	
		$query->execute();
	}
	
	$db->close();
		
	die("done");
}

$movie = getMovie($_GET['mid'], $db);
if(!$movie)
	die("Somthing went wrong.");

$cast       = getSub($_GET['mid'], "cast",  $db);
$crew 	    = getSub($_GET['mid'], "crew", $db);
$directors  = getSub($_GET['mid'], "directors", $db);
$producers  = getSub($_GET['mid'], "producers", $db);
$production = getSub($_GET['mid'], "production", $db);
$writers	= getSub($_GET['mid'], "writers", $db);

$db->close();

?>
<html>
	<head>
		<title><?php echo $movie["title"]; ?></title>
	</head>
	<body>
		<form method="post" action="movieHandler.php<?php if(isset($_GET['ref']))echo '?ref='.$_GET['ref'] ?>">
			<fieldset>
				<legend><?php echo $movie["title"]; ?></legend>
				<input type="submit" name="go" value="Save" />
				<input type="submit" name="cancel" value="Cancel" />
				<br />
				<input type="hidden" name="mid" value="<?php echo $movie['mid'] ?>" />
				Title:			<input type="input" 	name="title" 		value="<?php echo $movie["title"]; ?>" /><br />
				Release Date:	<input type="input" 	name="rel_date" 	value="<?php echo $movie["rel_date"]; ?>"/><br />
				Run Time:		<input type="input" 	name="run_time" 	value="<?php echo $movie["run_time"]; ?>"/><br />
				Watched:		<input type="checkbox"  name="watched"  <?php echo $movie["watched"]?"checked":""; ?>/>
				On:				<input type="input" 	name="watched_date"  value="<?php echo $movie["watched_date"]; ?>"/><br />
				Overview:<br /> <textarea name="overview" rows="8" cols="100"><?php echo $movie["overview"]; ?></textarea><br />
				Notes:<br /> 	<textarea name="notes" rows="8" cols="100"><?php echo $movie["notes"]; ?></textarea><br />
				<fieldset>
					<legend>Cast</legend>
					<a href="editSub.php?action=a&mid=<?php echo $movie["mid"]; ?>&sub=cast<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">add</a>
					<table>
					<tr>
						<th>Name</th>
						<th>Role</th>
						<th>Actions</th>
					</tr>
					<?php
					foreach ( $cast as $i => $a) :
					?>
					<tr>
						<td><?php echo $a['actor'] ?></td>
						<td><?php echo $a['role'] ?></td>
						<td>
							<a href="editSub.php?action=e&id=<?php echo $a['cast_id'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=cast<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">edit</a>
							<a href="editSub.php?action=d&id=<?php echo $a['cast_id'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=cast<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">delete</a>
						</td>
					</tr>
					<?php endforeach; ?>
					</table>
				</fieldset>
				<fieldset>
					<legend>Crew</legend>
					<a href="editSub.php?action=a&mid=<?php echo $movie["mid"]; ?>&sub=crew<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">add</a>
					<table>
					<tr>
						<th>Name</th>
						<th>Job</th>
						<th>Actions</th>
					</tr>
					<?php
					foreach ( $crew as $i => $a) :
					?>
					<tr>
						<td><?php echo $a['cname'] ?></td>
						<td><?php echo $a['cjob'] ?></td>
						<td>
							<a href="editSub.php?action=e&id=<?php echo $a['crew_id'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=crew<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">edit</a>
							<a href="editSub.php?action=d&id=<?php echo $a['crew_id'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=crew<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">delete</a>
						</td>
					</tr>
					<?php endforeach; ?>
					</table>
				</fieldset>
				<fieldset>
					<legend>Directors</legend>
					<a href="editSub.php?action=a&mid=<?php echo $movie["mid"]; ?>&sub=directors<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">add</a>
					<table>
					<tr>
						<th>Name</th>
						<th>Title</th>
						<th>Actions</th>
					</tr>
					<?php
					foreach ( $directors as $i => $a) :
					?>
					<tr>
						<td><?php echo $a['dname'] ?></td>
						<td><?php echo $a['djob'] ?></td>
						<td>
							<a href="editSub.php?action=e&id=<?php echo $a['did'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=directors<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">edit</a>
							<a href="editSub.php?action=d&id=<?php echo $a['did'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=directors<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">delete</a>
						</td>
					</tr>
					<?php endforeach; ?>
					</table>
				</fieldset>
				<fieldset>
					<legend>Producers</legend>
					<a href="editSub.php?action=a&mid=<?php echo $movie["mid"]; ?>&sub=producers<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">add</a>
					<table>
					<tr>
						<th>Name</th>
						<th>Actions</th>
					</tr>
					<?php
					foreach ( $producers as $i => $a) :
					?>
					<tr>
						<td><?php echo $a['producer_name'] ?></td>
						<td>
							<a href="editSub.php?action=e&id=<?php echo $a['pid'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=producers<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">edit</a>
							<a href="editSub.php?action=d&id=<?php echo $a['pid'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=producers<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">delete</a>
						</td>
					</tr>
					<?php endforeach; ?>
					</table>
				</fieldset>
				<fieldset>
					<legend>Production Companies</legend>
					<a href="editSub.php?action=a&mid=<?php echo $movie["mid"]; ?>&sub=production<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">add</a>
					<table>
					<tr>
						<th>Name</th>
						<th>Actions</th>
					</tr>
					<?php
					foreach ( $production as $i => $a) :
					?>
					<tr>
						<td><?php echo $a['prod_co'] ?></td>
						<td>
							<a href="editSub.php?action=e&id=<?php echo $a['production_id'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=production<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">edit</a>
							<a href="editSub.php?action=d&id=<?php echo $a['production_id'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=production<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">delete</a>
						</td>
					</tr>
					<?php endforeach; ?>
					</table>
				</fieldset>
				<fieldset>
					<legend>Writers</legend>
					<a href="editSub.php?action=a&mid=<?php echo $movie["mid"]; ?>&sub=writers<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">add</a>
					<table>
					<tr>
						<th>Name</th>
						<th>Job</th>
						<th>Actions</th>
					</tr>
					<?php
					foreach ( $writers as $i => $a) :
					?>
					<tr>
						<td><?php echo $a['wname'] ?></td>
						<td><?php echo $a['wjob'] ?></td>
						<td>
							<a href="editSub.php?action=e&id=<?php echo $a['wid'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=writers<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">edit</a>
							<a href="editSub.php?action=d&id=<?php echo $a['wid'] ?>&mid=<?php echo $movie["mid"]; ?>&sub=writers<?php if(isset($_GET['ref']))echo '&ref='.$_GET['ref']?>">delete</a>
						</td>
					</tr>
					<?php endforeach; ?>
					</table>
				</fieldset>
			</fieldset>
		</form>
	</body>
</html>