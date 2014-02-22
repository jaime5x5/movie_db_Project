<?php
session_start();

if(!isset($_SESSION['uid']))
	die("Not logged in.");

?>
<html>
	<head>
		<title>Add Movie from Internet Movie DB</title>
	</head>
	<body>
		<div>
			<form action="updatedb.php" method="post">
			<table name="maintable" border="3">
				<th>Title</th>
				<th>Release Date</th>
				<th>Add</th>
				<?php
				if (isset($_POST["title"]) && $_POST['title'] != "") {
					include ("tmdbwrapper.php");
					$apikey = "f2f9f5ec6fc895af90a3a440a8a64696";
					$tmdb = new tmdbwrapper($apikey);
					$mTitle = $_POST["title"];
					$results = $tmdb -> searchMovie($mTitle, 'cl');
					foreach ($results["results"] as $val) {
						$id = $val["id"];
						echo '<tr>';
						echo'<input type="hidden" name="mid" id="'. $id . '" value="'. $id . '">';
						echo '<td width="250">' . $val["title"] . '</td>';
						echo '<td width="20">' . $val["release_date"] . '</td>';
						echo '<td width="20">';
						echo '<input type="radio" name="group" value="' . $id . '">' . "</td>";
						echo "</td>";
						echo "</tr>";
					}
				} else {					
					echo "You must enter a movie title.<br><br>";
					echo '<input type="submit" name="back" value="<< Return" /><br><br>';
					die();
				}
				?>
			</table>
			
				<br>
				<input type="submit" name="submit" value="Add Movie" />
				<input type="submit" name="cancel" value="Cancel" />
			</form>
		</div>
	</body>
</html>
