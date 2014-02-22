<?php
//TODO check verification
session_start();

require_once 'model.php';

//TODO temp values these should be pulled from the verification
//$uname = 'rick';
//$uid = '3';
$uname = $_SESSION['uname'];
$uid = $_SESSION['uid'];

if(!isset($_GET['mid']) && !isset($_POST['mid']))
{
	header("Location: ". (isset($_GET['ref']) ? urldecode($_GET['ref']) : "view.php"));
	die();
}

if(isset($_POST['cancel']))
{
	header("Location: movieHandler.php?mid=".$_POST['mid'].(isset($_GET['ref']) ? "&ref=".urlencode($_GET['ref']) : ""));
	die();
}

$db = getDatabase();

if((isset($_GET['action']) && $_GET['action'] != 'a') || (isset($_POST['action']) && $_POST['action'] != 'a'))
	if(!verifyOwnership($uid, isset($_GET['mid'])?$_GET['mid']:$_POST['mid'], $db))
		die("Somthing went wrong.");

if(!isset($_GET['sub']) && !isset($_POST['sub']))
{
	header("Location: ". (isset($_GET['ref']) ? urldecode($_GET['ref']) : "view.php"));
	die();
}

$sub = (isset($_GET['sub']))?$_GET['sub']:$_POST['sub'];

if($sub == "cast")
{
	$id = "cast_id";
	$vals = array( "actor" , "role" );
	$nice = array( "Actor" , "Role" );
}
elseif($sub == "crew")
{
	$id = "crew_id";
	$vals = array( "cname" , "cjob" );
	$nice = array( "Name" , "Job" );
}
elseif($sub == "directors")
{
	$id = "did";
	$vals = array( "dname" , "djob" );
	$nice = array( "Name" , "Job" );
}
elseif($sub == "producers")
{
	$id = "pid";
	$vals = array( "producer_name" );
	$nice = array( "Name" );
}
elseif($sub == "production")
{
	$id = "production_id";
	$vals = array( "prod_co" );
	$nice = array( "Name" );
}
elseif($sub == "writers")
{
	$id = "wid";
	$vals = array( "wname", "wjob" );
	$nice = array( "Name", "Job" );
}
else {
	echo "Somthing went wrong.";
	die();
}

if(isset($_POST['go']))
{
	header("Location: movieHandler.php?mid=".$_POST['mid'].(isset($_GET['ref']) ? "&ref=".urldecode($_GET['ref']) : ""));
	
	if($_POST['action'] == 'a')
	{
		$count = sizeof($vals);
		if($count == 1)
			$query = $db->prepare("INSERT INTO $sub SET ".$vals[0]."= ?, mid = ?");
		else
			$query = $db->prepare("INSERT INTO $sub SET ".$vals[0]."= ?, ".$vals[1]."= ?, mid = ?");
	
		if (!$query)
    		die('Error, Could not query database.');
	
		if($count == 1)
			$query->bind_param("si", $_POST[$vals[0]], $_POST['mid']);
		else
			$query->bind_param("ssi", $_POST[$vals[0]], $_POST[$vals[1]], $_POST['mid']);
	
		$query->execute();
		$query->close();
	}
	elseif($_POST['action'] == 'e')
	{
		$count = sizeof($vals);
		if($count == 1)
			$query = $db->prepare("UPDATE $sub SET ".$vals[0]."= ? WHERE mid = ? AND $id = ?");
		else
			$query = $db->prepare("UPDATE $sub SET ".$vals[0]."= ?, ".$vals[1]."= ? WHERE mid = ? AND $id = ?");
	
		if (!$query)
    		die('Error, Could not query database.');
	
		if($count == 1)
			$query->bind_param("sii", $_POST[$vals[0]], $_POST['mid'], $_POST['id']);
		else
			$query->bind_param("ssii", $_POST[$vals[0]], $_POST[$vals[1]], $_POST['mid'], $_POST['id']);
	
		$query->execute();
		$query->close();
	}
	elseif($_POST['action'] == 'd')
	{
		$query = $db->prepare("DELETE FROM $sub WHERE mid = ? AND $id = ?");
	
		if (!$query)
    		die('Error, Could not query database.');
	
		$query->bind_param("ii", $_POST['mid'], $_POST['id']);
	
		$query->execute();
		$query->close();
	}
	
	die();
}

$action = $_GET['action'];

if($action == 'a')
{
	$actionWord = "Add";
}
elseif($action == 'e')
{
	$actionWord = "Edit";
}
elseif ($action == 'd')
{
	$actionWord = "Delete";
}

if($action != 'a')
	$set = getSingleSub($_GET['mid'], $sub, $id, $_GET['id'], $db);
?>
<html>
	<head>
		<title><?php echo $actionWord .' '. $sub?></title>
	</head>
	<body>
		<h2><?php echo $actionWord .' '. $sub?></h2>
		<form method="post" action="editSub.php<?php if(isset($_GET['ref']))echo '?ref='.urlencode($_GET['ref']) ?>">
			<table>
			<tr>
			<?php
				foreach ($nice as $key => $value) :
			?>
				<th>
					<?php echo $value ?>
				</th>
			<?php
				endforeach;
			?>
			</tr>
			<tr>
			<?php
				foreach ($vals as $key => $value) :
			?>
				<th>
					<input type="text" name="<?php echo $value ?>" value="<?php if($action != "a") echo $set[$value] ?>" <?php if($action == 'd') echo "readonly" ?>/>
				</th>
			<?php
				endforeach;
			?>	
			</tr>
			</table>
			<input type="hidden" name="mid" value="<?php echo $_GET['mid']; ?>" />
			<input type="hidden" name="id" value="<?php if($action != 'a') echo $_GET['id']; else echo '-1'; ?>" />
			<input type="hidden" name="sub" value="<?php echo $sub ?>" />
			<input type="hidden" name="action" value="<?php echo $action ?>" />
			<input type="submit" name="go" value="<?php echo $actionWord ?>" />
			<input type="submit" name="cancel" value="Cancel" />
		</form>
	</body>
</html>