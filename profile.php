<?php
session_start();
require('conn.php');
if(!isset($_SESSION['userName']))
{
echo "<script>window.location.assign('login.php')</script>";
}
?>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Profile</title>
    
<?php include 'header.php'; ?>

<div class="wrapper row3 pad-top">
  <main class="hoc container clear"> 
    <?php

    $id=$_SESSION['userName'];
              $query="SELECT * FROM user_registration WHERE uId='$id'";
              $res=mysqli_query($con,$query) or die(mysqli_error());
              $resfetch=mysqli_fetch_assoc($res);
              ?>
              <table>
                  
              <tr>
              
              <?php
              echo "<td>Your Name</td><td>";
              echo  $resfetch['Name'];
              echo "</td></tr><tr><td>Your Phone NUmber</td><td>";
              echo $resfetch['phoneNumber'];
              echo "</td></tr><tr><td>Your Address</td><td>";
              echo $resfetch['Address'];
              echo "</td></tr><tr><td>Your City</td><td>";
              echo $resfetch['City'];
              echo "</td></tr><tr><td>Account User Name</td><td>";
              echo $resfetch['username'];
              echo "</td></tr><tr><td>Account Password</td><td>";
              echo $resfetch['password'];
              echo "</td></tr><tr><td>Account Type</td><td>";    
              echo $resfetch['Status'];
              echo "</td>";    

    ?> </tr> 
          <tr>
            <td>Edit Your Account</td>
          <td><a href="editprofile.php?Id=<?php echo $resfetch['uId'] ?>">Edit Account</a></td>
          </tr><tr>
              <td>Change Your Password</td>
          <td><a href="editprofile.php?changePId=<?php echo $resfetch['uId'] ?>">Change Password</a></td>
        </tr>
    </table>
  </body>
</html>
