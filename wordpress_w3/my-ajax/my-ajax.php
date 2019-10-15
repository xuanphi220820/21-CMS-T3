<?php
$conn = new mysqli('localhost','root','','cms_tuan_3');

$conn->set_charset('utf8');

$email = $_POST['email'];
$id = $_POST['id'];
$sql = "UPDATE `wp_posts` SET post_email =". " ' $email' " ."WHERE ID = $id";
$res = mysqli_query($conn, $sql);