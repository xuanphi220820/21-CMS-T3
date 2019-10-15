<?php 
	include_once 'wp-config.php'
	$conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);

	//check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}

	$whereIn = '';
	foreach ($_POST['ids'] as $id) {
		$whereIn .= $id.',';
	}
	$whereIn = substr($whereIn,0,-1);

	$sql = "SELECT ID, post_email FROM 'wp_posts' WHERE id in ($whereIn)";

	$result = $conn->query($sql);
	$json = [];
	if ($result->num_rows > 0) {
	 	while ($row = $result->fetch_assoc()) {
	 	    $json[] = $row;
	 	}
	}
	$conn->close();
	echo json_encode($json); 
 ?>