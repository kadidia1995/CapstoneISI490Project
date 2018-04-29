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
<html>
<head>
  <title>Search data from database</title>
  <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" />
  
<?php include 'header.php'; ?>

<div class="wrapper row3 pad-top">
  <main class="hoc container clear"> 
<table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Name</th>
                <th>Number</th>
                <th>Address</th>
                <th>City</th>
                <th>Username</th>
                <th>Status</th>
                <th>Edit</th>
            </tr>
        </thead>
        <tbody>
					<?php
					$query="SELECT * FROM user_registration";
					$r=mysqli_query($con,$query);
					while($fetch=mysqli_fetch_array($r))
					{
					?>
					<tr>    
						<td style="text-align:center;"><?php echo $fetch['Name']?></td>
						<td style="text-align:center;"><?php echo $fetch['phoneNumber']?></td>
						<td style="text-align:center;"><?php echo $fetch['Address']?></td>
						<td style="text-align:center;"><?php echo $fetch['City']?></td>
            <td style="text-align:center;"><?php echo $fetch['username']?></td>
            <td style="text-align:center;"><?php echo $fetch['Status']?></td>
            <?php
            echo "<td style=text-align:center;><a href='admineditprofile.php?Id=".$fetch['uId']."' style=color:#000000 name='edit'>Edit</a></td>";
?>
						</tr>
					<?php	
					}
					?>
            
        </tbody>
    </table>
 </body>

  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

    <script>
$(document).ready(function() {
          $('#example').dataTable();
				} );
    </script>
    </div>
    <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/03.png');"> 
  
</div>
<!-- End Footer Background Image Wrapper -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->

</body>
</html>
