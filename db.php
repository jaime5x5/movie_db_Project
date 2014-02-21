<?php
	require_once 'locked/security.php';

	$conn = mysqli_connect(__db__host, __db__user, __db__pass, __db__database);
	 if (!$conn)
    {
	 die('Could not connect: ' . mysqli_error());
	}
	//mysqli_select_db($conn,"movies");
	//mysqli_select_db($conn,"cs378_project");
?>

