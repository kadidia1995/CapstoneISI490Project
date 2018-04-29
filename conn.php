<?php
$servername ="localhost";
$username = "admin_reg";
$password = "reg123";
$dbname="admin_registration";
$con = mysqli_connect($servername,$username,$password,$dbname);
if (!$con || mysqli_connect_error())
{
	die("connection failed: ". mysqli_connect_error());
}
?>