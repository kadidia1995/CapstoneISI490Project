<?php
session_start();
include('conn.php');
if(isset($_GET['userName']))
{
session_destroy();
echo "<meta http-equiv='refresh' content='0; url=index.php'>";
}
if(isset($_SESSION['userName']))
{
echo "<script>window.location.assign('profile.php')</script>";
}
?>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    
  <?php include 'header.php'; ?>

<div class="wrapper row3 pad-top">
  <main class="hoc container clear">
      <div class="log-form">
<form action="" method="post">
  <h4> Login Information </h4>
  <input class="userName log-field" name="userName" type="text" placeholder="Enter Username" required/>
  <input class="uPass log-field" name="uPass" type="password" placeholder="Enter Password" required/>
  
  <input class="btn-log" name="logBtn" type="submit" value="Log in"/>
</form>
    <?php
	if(isset($_POST['logBtn']))
	{
		$name=$_POST['userName'];
		$pass=$_POST['uPass'];
    	$p=md5($pass);

		$query="SELECT * FROM user_registration WHERE username='$name' and password='$p'";
$r=mysqli_query($con,$query)or die(mysqli_error());
$count=mysqli_num_rows($r);
$f=mysqli_fetch_array($r);
if($count==1)
{

$_SESSION['userName']=$f['uId'];
$_SESSION['Status']=$f['Status'];
echo "<script>window.location.assign('profile.php')</script>";
}
else
{
echo "<script>alert('Username or Password is not correct')</script>";
}


}
	?>
    
    
   </div>
   </main>
   </div>
    
  </body>
</html>
