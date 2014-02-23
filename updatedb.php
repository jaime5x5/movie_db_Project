<?php
session_start();

if (isset($_POST['submit']) && isset($_POST['group'])){
	
	require_once 'model.php';
	
	$mysqli = getDatabase();
	
	$mid = $_POST['group'];
	$uid = $_SESSION['uid'];

	$query = "SELECT title FROM movies WHERE tmdbid =? and uid = ?";
	$stmt = $mysqli->prepare($query);
	$stmt->bind_param("ii", $mid, $uid);
	$stmt->execute();
	$stmt->bind_result($result);
	$stmt->fetch();	
	
	if ($result === NULL || $result === ""){
		include ("tmdbwrapper.php");
		$apikey = "f2f9f5ec6fc895af90a3a440a8a64696";
		$tmdb = new tmdbwrapper($apikey);
		
		$res_detail = $tmdb->movieDetail($mid);

		$title = $res_detail['title'];
		$imdb = $res_detail['imdb_id'];
		$ov = $res_detail['overview'];
		$rel = $res_detail['release_date'];
		$run = $res_detail['runtime'];
		$tmdbid = $mid;
		$notes = "";
		$watched = 0;
		$watched_date = NULL;
		
		if ($title == "" || $title == NULL) {
			header("Location: addtmdb.php");
			die();
		}
		
		$query = "INSERT INTO movies (uid,tmdbid,title,overview,rel_date,run_time,imdbid,
			notes,watched,watched_date)	VALUES (?,?,?,?,?,?,?,?,?,?)";
		$stmt = $mysqli->prepare($query);
		$stmt->bind_param("iissssssis", $uid, $tmdbid, $title, $ov, $rel, $run, $imdb, $notes, 
			$watched, $watched_date);
		$stmt->execute();
		
		$insert_id = $mysqli->insert_id;
		
		if (count($res_detail['production_companies']) > 0){			
			$query = "INSERT INTO production (production_id, mid, prod_co) VALUES (?, ?, ?)";
			$stmt = $mysqli->prepare($query);
			$prod_id = NULL;
			foreach($res_detail['production_companies'] as $val){
				$pco = $val['name'];
				$stmt->bind_param("iis", $prod_id, $insert_id, $pco);
				$stmt->execute();
			}
		}	
		
		$res_crew = $tmdb->movieCrew ($mid);
		
		$query = "INSERT INTO cast (cast_id,mid,actor,role) VALUES (?, ?, ?, ?)";
		$stmt = $mysqli->prepare($query);
		$cast_id = NULL;
		foreach($res_crew['cast'] as $rc){
			$name = $rc['name'];
			$char = $rc['character'];
			$stmt->bind_param("iiss", $cast_id, $insert_id, $name, $char);
			$stmt->execute();
		}
		
		$query_dir = "INSERT INTO directors (did,mid,dname,djob) VALUES (?, ?, ?, ?)";
		$stmt_d = $mysqli->prepare($query_dir);
		
		$query_prod = "INSERT INTO producers (pid,mid,producer_name) VALUES (?, ?, ?)";
		$stmt_p = $mysqli->prepare($query_prod);
		
		$query_wri = "INSERT INTO writers (wid,mid,wname,wjob) VALUES (?, ?, ?, ?)";
		$stmt_w = $mysqli->prepare($query_wri);
		
		$query_crew = "INSERT INTO crew (crew_id,mid,cname,cjob) VALUES (?, ?, ?, ?)";
		$stmt_c = $mysqli->prepare($query_crew);
		
		$i = NULL;
		
		foreach($res_crew['crew'] as $rc){
			$name = $rc['name'];
			$job = $rc['job'];
			$dept = $rc['department'];

			switch($dept){
				case "Directing":
					$stmt_d->bind_param("iiss", $i, $insert_id, $name, $job);
					$stmt_d->execute();
					break;
				case "Production":
					$stmt_p->bind_param("iis", $i, $insert_id, $name);
					$stmt_p->execute();
					break;
				case "Writing":
					$stmt_w->bind_param("iiss", $i, $insert_id, $name, $job);
					$stmt_w->execute();
					break;
				default:
					$stmt_c->bind_param("iiss", $i, $insert_id, $name, $job);
					$stmt_c->execute();
				}												
		}
		if(isset($_SERVER['HTTP_REFERER'])){
			echo "<a href='addtmdb.php'>Movie successfully added! Go back</a>";
		}				
	}
	else{
		if(isset($_SERVER['HTTP_REFERER'])){
			echo "<a href='addtmdb.php'>Movie already exists! Go back</a>";
		}
		return false;
	}
	$stmt->close();	
	$mysqli->close();
}
else {
	header("Location: addtmdb.php");
	die();
}
?>