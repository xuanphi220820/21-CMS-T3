<?php
include_once 'wp-config.php';
$conn = new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME);

$conn->set_charset('utf8');

$email = $_POST['email'];
$id = $_POST['id'];
$sql = "UPDATE `wp_posts` SET post_email =". " ' $email' " ."WHERE ID = $id";
$res = mysqli_query($conn, $sql);
$conn->close();