<?php

require_once 'locked/security.php';

if (isset($_POST['submit']) && isset($_POST['group'])){
	
	include('db.php');
	
	$mid = $_POST['group'];	
	$result = mysqli_query($conn, "SELECT * FROM movies WHERE tmdbid = $mid;");
	
	if (!mysqli_num_rows($result) > 0){
		include ("tmdbwrapper.php");
		$apikey = __tmdb__apikey;
		$tmdb = new tmdbwrapper($apikey);
		
		$res_detail = $tmdb -> movieDetail($mid);		
				
		$uid = 3;
		$title = mysqli_real_escape_string($conn, $res_detail['title']);
		$imdb = $res_detail['imdb_id'];			
		$ov = mysqli_real_escape_string($conn, $res_detail['overview']);		
		$rel = $res_detail['release_date'];
		$run = $res_detail['runtime'];
		$tmdbid = $mid;
		
		if ($title == "" || $title == NULL) {
			header("Location: addtmdb.php");			
			die();						
		}
		
		mysqli_query($conn, "INSERT INTO `movies`(uid,tmdbid,title,overview,rel_date,run_time,imdbid,
			notes,watched,watched_date)
		VALUES ('$uid','$tmdbid','$title','$ov','$rel','$run','$imdb','','FALSE',null)")
			or die(mysqli_error($conn));
		
		$insert_id = mysqli_insert_id($conn);	
		
		if (count($res_detail['production_companies']) > 0){
			
			foreach($res_detail['production_companies'] as $val){
				$pco = mysqli_real_escape_string($conn, $val['name']);
				mysqli_query($conn, "INSERT INTO `production`(production_id,mid,prod_co)
					VALUES (NULL, '$insert_id','$pco')")
					or die(mysqli_error($conn));
			}
		}	
		
		$res_crew = $tmdb -> movieCrew ($mid);		
		
		foreach($res_crew['cast'] as $rc){
			$name = mysqli_real_escape_string($conn, $rc['name']);
			$char = mysqli_real_escape_string($conn, $rc['character']);
			mysqli_query($conn, "INSERT INTO `cast`(cast_id,mid,actor,role)
				VALUES (NULL, '$insert_id','$name','$char')")
				or die(mysqli_error($conn));									
		}
		
		foreach($res_crew['crew'] as $rc){
			$name = mysqli_real_escape_string($conn, $rc['name']);
			$job = mysqli_real_escape_string($conn, $rc['job']);
			$dept = mysqli_real_escape_string($conn, $rc['department']);
			
			switch($dept){
				case "Directing":
					mysqli_query($conn, "INSERT INTO `directors`(did,mid,dname,djob)
					VALUES (NULL, '$insert_id','$name','$job')")
					or die(mysqli_error($conn));
					break;
				case "Production":
					mysqli_query($conn, "INSERT INTO `producers`(pid,mid,producer_name)
					VALUES (NULL, '$insert_id','$name')") 
					or die(mysqli_error($conn));
					break;
				case "Writing":
					mysqli_query($conn, "INSERT INTO `writers`(wid,mid,wname,wjob)
					VALUES (NULL, '$insert_id','$name','$job')") 
					or die(mysqli_error($conn));
					break;
				default:
					mysqli_query($conn, "INSERT INTO `crew`(crew_id,mid,cname,cjob)
					VALUES (NULL, '$insert_id','$name','$job')") 
					or die(mysqli_error($conn));
				}												
		}					
		echo "Movie successfully added!";
	}
	else{
		echo "Movie already exists.";
		return false;
	}	
	mysqli_close($conn);
}
else {
	header("Location: addtmdb.php");
	die();
}
?>