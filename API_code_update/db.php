<?php
$mysqli = new mysqli("localhost", "root", "password1234", "cs378_project");

if (mysqli_connect_errno()){
	printf("Connect failed: %s\n", mysqli_connect_error());
	exit();
}
?>

