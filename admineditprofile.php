<?php
session_start();
require('conn.php');
if(!isset($_SESSION['userName']))
{
echo "<script>window.location.assign('login.php')</script>";
}
else
{
  if ($_SESSION['Status']!='admin') {
    echo "<script>window.location.assign('login.php')</script>";
  }
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<?php 

if(isset($_GET['Id']))
{
$id=$_GET['Id'];

$uquery="SELECT * FROM user_registration where uId=$id";
$ures=mysqli_query($con,$uquery);
$fetchur=mysqli_fetch_array($ures);
?>


  <div class="container">
      <div class="row main">
        <div class="panel-heading">
                 <div class="panel-title text-center">
                    <h1 class="title">Registration Form</h1>
                    <hr />
                  </div>
              </div> 
        <div class="main-login main-center">
          <form class="form-horizontal" method="post" action="#">
                        
            <div class="form-group">
              <label for="name" class="cols-sm-2 control-label">Your Name</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="name" id="name" value="<?php  echo $fetchur['Name'] ?>"  placeholder="Enter your Name"/>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="name" class="cols-sm-2 control-label">Phone </label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                  <input type="tel" class="form-control" name="phoneNumber" id="phoneNumber"  placeholder="Enter your Phone number" value="<?php  echo $fetchur['phoneNumber'] ?>"/>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="name" class="cols-sm-2 control-label">City </label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="city" id="city"  placeholder="Enter your City" value="<?php  echo $fetchur['City'] ?>"/>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="username" class="cols-sm-2 control-label">Username</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username" value="<?php  echo $fetchur['username'] ?>"/>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="confirm" class="cols-sm-2 control-label">New Password</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                  <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your New Password"/>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label for="confirm" class="cols-sm-2 control-label">Address</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                  <textarea class="form-control" name="address" id="address" style="resize: none;height: 150px !important" placeholder="Enter your address"><?php  echo $fetchur['Address'] ?></textarea>
                </div>
              </div>
            </div>                        

            <div class="form-group ">
            <input type="submit" class="btn btn-primary btn-lg btn-block login-button" name="btnreg" value="Update" />
            </div>
          </form>
<?php
    if(isset($_POST['btnreg']))
    {
      extract($_POST);
      $p=md5($password);
      $date_now = date("Y-m-d");
              //Query start
              //MD5('".$userpass."')
              $checkname="SELECT username FROM user_registration WHERE username='$username' and uId!=$id";
              $checknamequery=mysqli_query($con,$checkname) or die(mysqli_error());
              $checknamefetch=mysqli_fetch_assoc($checknamequery);
              if ($name==$checknamefetch['username']) {
                echo "<script>alert('UserName Already Exist');</script>";
              }
              else
              {
                $checkname="SELECT phoneNumber FROM user_registration WHERE phoneNumber='$phoneNumber' and uId!=$id";
                $checknamequery=mysqli_query($con,$checkname) or die(mysqli_error());
                $checknamefetch=mysqli_fetch_assoc($checknamequery);
                if ($name==$checknamefetch['phoneNumber']) {
                  echo "<script>alert('Number Already Exist');</script>";
                }
                else
                {
                  $p=md5($password);
                    $sql="update user_registration set Name='$name',phoneNumber='$phoneNumber',Address='$address',City='$city',username='$username',password='$p' where uId=$id";
                    $query=mysqli_query($con,$sql) or die(mysqli_error());
                
                    if($query)
                    {
          
                      echo "<script>alert('Registration Updated Successfully')</script>";
                    }
                    else
                    {
                      echo "<script>alert('Error in Registration')</script>";
                    }
                }
              }

              //Query End               
    }

?>

        </div>
      </div>
    </div>
<?php 
}
else if(isset($_GET['changePId']))
{
$id=$_GET['changePId'];

$uquery="SELECT * FROM user_registration where uId=$id";
$ures=mysqli_query($con,$uquery);
$fetchur=mysqli_fetch_array($ures);
?>
  <div class="container">
      <div class="row main">
        <div class="panel-heading">
                 <div class="panel-title text-center">
                    <h1 class="title">Registration Form</h1>
                    <hr />
                  </div>
              </div> 
        <div class="main-login main-center">
          <form class="form-horizontal" method="post" action="#">
                        
            <div class="form-group">
              <label for="name" class="cols-sm-2 control-label">New Password</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                  <input type="password" class="form-control" name="npassword" id="npassword"   placeholder="Enter your Password"/>
                </div>
              </div>
            </div>
                        <div class="form-group">
              <label for="name" class="cols-sm-2 control-label">New Password</label>
              <div class="cols-sm-10">
                <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                  <input type="password" class="form-control" name="ncpassword" id="ncpassword"   placeholder="Confirm your Password"/>
                </div>
              </div>
            </div>


            <div class="form-group ">
            <input type="submit" class="btn btn-primary btn-lg btn-block login-button" name="btnreg" value="Update" />
            </div>
          </form>
<?php
    if(isset($_POST['btnreg']))
    {
      extract($_POST);
      $p=md5($npassword);

                  if ($npassword==$ncpassword) 
                  {

                    $sql="update user_registration set password='$p' where uId=$id";
                    $query=mysqli_query($con,$sql) or die(mysqli_error());
                
                    if($query)
                    {
          
                      echo "<script>alert('Password Updated Successfully')</script>";
                    }
                    else
                    {
                      echo "<script>alert('Error in Password Update')</script>";
                    }
                  }
                  else
                  {
                    echo "<script>alert('Password does not Match');</script>";
                  }
              //Query End               
    }

?>
<?php
}
?>    
  </body>
  
  </html>