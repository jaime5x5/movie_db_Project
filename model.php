<?php

require_once 'locked/security.php';

function getFilterQuery($filter)
{
	if($filter == "u")
		return " AND watched = 0 ";
	
	if($filter == "w")
		return " AND watched = 1 ";
	
	return "";
}

function getDatabase()
{
	return new mysqli(__db__host, __db__user, __db__pass, __db__database);
	
	if ($mysqli->connect_error)
    	die('Error, Could not connect to database.');
}

function getPageCount($uid, $filter, $db)
{
	$query = $db->prepare("SELECT COUNT(mid) AS count FROM movies WHERE uid = ?" . getFilterQuery($filter));
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$query->bind_param("i", $uid);
	
	$query->execute();
	
	$r = $query->get_result();
	
	if(! ($row = $r->fetch_assoc()) )
		die('Error, Could not get movie count.');
	
	$count = $row["count"];
	
	$r->free();
	$query->close();
	
	return $count;	
}

function getMovies($uid, $pageNum, $pageSize, $filter, $db)
{
	$query = $db->prepare("SELECT * FROM movies WHERE uid = ? ".getFilterQuery($filter)." ORDER BY title LIMIT ?, ?");
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$start = ($pageNum-1)*$pageSize;
	$end = $pageNum*$pageSize;
	
	$query->bind_param("iii", $uid, $start, $end);
	
	$query->execute();
	
	return $query->get_result();
}

function verifyOwnership($uid, $mid, $db)
{
	$query = $db->prepare("SELECT COUNT(mid) AS count FROM movies WHERE mid = ? AND uid = ?");
	
	if (!$query)
    	die('Error, Could not query database.');

	$query->bind_param("ii", $mid, $uid);
	
	$query->execute();
	
	$r = $query->get_result();
	
	if(! ($row = $r->fetch_assoc()) )
		die('Error, Could not query database.');
	
	$res = $row['count'];
	
	$r->free();
	$query->close();
	
	return $res;	
}

function getMovie($mid, $db)
{
	$query = $db->prepare("SELECT * FROM movies WHERE mid = ?");
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$query->bind_param("i", $mid);
	
	$query->execute();
	
	$r = $query->get_result();
	
	if(! ($row = $r->fetch_assoc()) )
		die('Error, Could not get movie.');
	
	$r->free();
	$query->close();
	
	return $row;
}	

function deleteMovie($db, $mid)
{
	$query = $db->prepare("DELETE FROM movies WHERE mid = ?");
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$query->bind_param("i", $mid);
	
	$query->execute();
	$query->close();
}

function setWatched($db, $mid, $date)
{
	$query = $db->prepare("UPDATE movies SET watched = 1, watched_date = ? WHERE mid = ?");
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$query->bind_param("si", $date, $mid);
	
	$query->execute();
	$query->close();
}

function setUnwatched($db, $mid)
{
	$query = $db->prepare("UPDATE movies SET watched = 0, watched_date = NULL WHERE mid = ?");
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$query->bind_param("i", $mid);
	
	$query->execute();
	$query->close();
}

function getSub($mid, $sub,  $db)
{
	$query = $db->prepare("SELECT * FROM $sub WHERE mid = ?");
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$query->bind_param("i", $mid);
	
	$query->execute();
	
	return $query->get_result();
}

function getSingleSub($mid, $sub, $idName, $id, $db)
{
	$query = $db->prepare("SELECT * FROM $sub WHERE mid = ? AND $idName = ?");
	
	if (!$query)
    	die('Error, Could not query database.');
	
	$query->bind_param("ii", $mid, $id);
	
	$query->execute();
	
	return $query->get_result()->fetch_assoc();
}


?>