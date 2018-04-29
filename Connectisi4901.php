<?php
$servername ="localhost";
$username = "root";
$password = "";
$dbname="admin_testdb";
$con = mysqli_connect($servername,$username,$password,$dbname);
if (!$con || mysqli_connect_error())
{
	die("connection failed: ". mysqli_connect_error());
}
?>