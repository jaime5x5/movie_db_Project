<?php

?>
<html>
<head>
	<title>Add Movie</title>
	<meta content="text/html; charset=UTF-8" http-equiv="content-type">
	<style type="text/css"></style>
</head>
	<body class="c0">
		<form action="myMoviedb.php">
		  	<div>
		    	<input type="submit" value="UPDATE" />
		    	<input type="submit" value="CANCEL" />
		  	</div>
		</form>
		<fieldset>
			<legend>Add Movie</legend>

			<form action="#">
			  	<div>
			    	<label for="name">Title:</label>
			    	<input type="text" name="title" id="title" placeholder="enter title" value="" />
			  	</div>

			    <fieldset>
			    <legend>Overview</legend>
			    	<textarea cols="30" rows="3" name="overview" id="overview" placeholder="Enter overview here" ></textarea>
			  	</fieldset>

			  	<div>
			    	<label for="rel_date">Date Released:</label>
			    	<input type="text" name="rel_date" id="rel_date" placeholder="enter date released" value="" />
			  	</div>

			    <div>
			    	<label for="director">Director:</label>
			    	<input type="text" name="director" id="director" placeholder="enter director" value="" />
			  	</div>

		      	<div>
		        	<label for="writer">Writer:</label>
		        	<input type="text" name="writer" id="writer" placeholder="enter writer" value="" />
		      	</div>

			    <div>
			    	<label for="run_time">Run Length:</label>
			    	<input type="text" name="run_time" id="run_time" placeholder="enter run length" value="" />
			  	</div>

			  	<fieldset>
			    <legend>Trivia</legend>
			      	<div>
			        	<textarea cols="30" rows="3" name="trivia" id="trivia" placeholder="Enter trivia here" ></textarea>
			      	</div>
		      	</fieldset>

			    <div>
			    	<label for="watched">Watched:</label>
			    	<input type="checkbox" name="watched" id="watched" checked="true" />
			  	</div>

			  	<div>
			    	<label for="watched_date">Watched Date:</label>
			    	<input type="text" name="watched_date" id="watched_date" placeholder="enter date watched" value="" />
			  	</div>

			  	<fieldset>
			    <legend>Cast</legend>
			  	<form action="#">
			      	<div>
			        	<label for="actor">Actor:</label>
			        	<input type="text" name="actor" id="actor" placeholder="enter actor name" value="" />
			      	</div>
			      	<div>
			        	<label for="role">Role:</label>
			        	<input type="text" name="role" id="role" placeholder="enter role" value="" />
			      	</div>
			    </form> 
			  	</fieldset>

			    <fieldset>
			    <legend>Crew</legend>
			  	<form action="#">
			      	<div>
			        	<label for="name">Crewmember:</label>
			        	<input type="text" name="crewmember" id="crewmember" placeholder="enter crewmember name" value="" />
			      	</div>
			      	<div>
			        	<label for="role">Role:</label>
			        	<input type="text" name="role" id="role" placeholder="enter role" value="" />
			      	</div>
			    </form> 
			  	</fieldset>

			    <fieldset>
			    <legend>Producer</legend>
				  	<form action="#">
				      	<div>
				        	<label for="producer_name">Producer:</label>
				        	<input type="text" name="producer_name" id="producer_name" placeholder="enter producer" value="" />
				      	</div>
				    </form> 
			  	</fieldset>

			    <fieldset>
			    <legend>Production Company</legend>
				  	<form action="#">
				      	<div>
				        	<label for="prod_co">Production Company:</label>
				        	<input type="text" name="prod_co" id="prod_co" placeholder="enter production company" value="" />
				      	</div>
				    </form> 
			  	</fieldset>

			</form>
		</fieldset>
	</body>
</html>