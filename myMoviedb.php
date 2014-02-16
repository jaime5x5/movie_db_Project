<?php 
var_dump($_POST);
?>
<html>
<head>
	<title>Movie Display</title>
	<meta content="text/html; charset=UTF-8" http-equiv="content-type">
	<style type="text/css"></style>
</head>
	<body class="home">
		<form action="addMovie.php" class="addContent">
		  	<div>
		    	<input type="submit" value="Add Content" method="post" />
		  	</div>
		</form>
		<fieldset>
		<legend>Watched/Unwatched for each in user movies</legend>
			<form action="editMovie.php">
			  	<div>
			    	<input type="submit" value="EDIT" />
			  	</div>
			</form>
			<form action="#">
			  	<div>
			    	<label for="name">Title:</label>
			    	<input type="text" name="title" id="title" placeholder="enter title" value="Movie Title" readonly="true" />
			  	</div>

			    <fieldset>
			    <legend>Overview</legend>
			    	<textarea cols="30" rows="3" name="overview" id="overview" placeholder="Enter overview here" readonly="true" >This is movie description.</textarea>
			  	</fieldset>

			  	<div>
			    	<label for="rel_date">Date Released:</label>
			    	<input type="text" name="rel_date" id="rel_date" placeholder="enter date released" value="10/27/1980" readonly="true" />
			  	</div>

			    <div>
			    	<label for="director">Director:</label>
			    	<input type="text" name="director" id="director" placeholder="enter director" value="Boo Radley" readonly="true" />
			  	</div>

		      	<div>
		        	<label for="writer">Writer:</label>
		        	<input type="text" name="writer" id="writer" wrap="true" placeholder="enter writer" value="Writer1, writer2, writer3, etc..." readonly="true"  />
		      	</div>

			    <div>
			    	<label for="run_time">Run Length:</label>
			    	<input type="text" name="run_time" id="run_time" placeholder="enter run length" value="120 min" readonly="true" />
			  	</div>

			  	<fieldset>
			    <legend>Trivia</legend>
			      	<div>
			        	<textarea cols="30" rows="3" name="trivia" id="trivia" placeholder="Enter trivia here" readonly="true" >That's a fact Jack.</textarea>
			      	</div>
		      	</fieldset>

			    <div>
			    	<label for="watched">Watched:</label>
			    	<input type="checkbox" name="watched" id="watched" checked="true" readonly="true" />
			  	</div>

			  	<div>
			    	<label for="watched_date">Watched Date:</label>
			    	<input type="text" name="watched_date" id="watched_date" placeholder="enter date watched" value="10/31/1980" readonly="true" />
			  	</div>

			  	<fieldset>
			    <legend>Cast</legend>
			  	<form action="#">
			      	<div>
			        	<label for="actor">Actor:</label>
			        	<input type="text" name="actor" id="actor" placeholder="enter actor name" value="Bill Smith, Tom Jones, etc..." readonly="true" />
			      	</div>
			      	<div>
			        	<label for="role">Role:</label>
			        	<input type="text" name="role" id="role" placeholder="enter role" value="Janitor, Garbage Collector, etc..." readonly="true" />
			      	</div>
			    </form> 
			  	</fieldset>

			    <fieldset>
			    <legend>Crew</legend>
			  	<form action="#">
			      	<div>
			        	<label for="name">Crewmember:</label>
			        	<input type="text" name="crewmember" id="crewmember" placeholder="enter crewmember name" value="CB DeMille, etc..." readonly="true" />
			      	</div>
			      	<div>
			        	<label for="role">Role:</label>
			        	<input type="text" name="role" id="role" placeholder="enter role" value="Best Boy, etc..." readonly="true" />
			      	</div>
			    </form> 
			  	</fieldset>

			    <fieldset>
			    <legend>Producer</legend>
				  	<form action="#">
				      	<div>
				        	<label for="producer_name">Producer:</label>
				        	<input type="text" name="producer_name" id="producer_name" placeholder="enter producer" value="Vin De Bonna" readonly="true" />
				      	</div>
				    </form> 
			  	</fieldset>

			    <fieldset>
			    <legend>Production Company</legend>
				  	<form action="#">
				      	<div>
				        	<label for="prod_co">Production Company:</label>
				        	<input type="text" name="prod_co" id="prod_co" placeholder="enter production company" value="Legendary" readonly="true" />
				      	</div>
				    </form> 
			  	</fieldset>

			</form>
		</fieldset>
	</body>
</html>