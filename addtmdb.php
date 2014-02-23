<?php
session_start();

if(!isset($_SESSION['uid']))
	die("Not logged in.");
?>
<html>
	<head>
		<title>Search themoviedb.org</title>		
	</head>
	<body>
		<form id="form1" name="form1" action="selector.php" method="post">
			<fieldset>
				<legend>
					Internet Movie Search
				</legend>
				<p>
					<?php if(isset($_GET['status']) && $_GET['status'] == 'success'){
						echo "Movie succesfully added.";
					} else if(isset($_GET['status']) && $_GET['status'] == 'fail'){
						echo "Movie already in your list.";
					}
					?>		
				</p>				
				<label>Enter movie title:</label>
				<br />

				<input type="text" width="400" name="title" id="title" value="" >
				<input type="submit" id="btnSearch" name="submit" value="Search"/>
				<input type="button" onclick="location.href='view.php';" value="Cancel" />&nbsp;&nbsp;
				<a href="logout.php" id="logout-button">Logout</a><br><br>
				<img src="tmdb-logo-1.png" alt="some_text"><br>
				<p>This product uses the TMDb API but is not endorsed or certified by TMDb.</p>				
			</fieldset>
		</form>
	</body>
</html>