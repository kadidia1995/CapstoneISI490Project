<?php include('conn.php'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>

<?php include 'header.php'; ?>

	<div class="wrapper row3 pad-top">
  <main class="hoc container clear"> 
				<div class="panel-heading">
				    <div class="p-register">
	               <div class="panel-title text-center">
	               		<h1 class="title">Doctor Registration Form</h1>
	               		<hr />
	               	</div>
	             
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="#">
												
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Your Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Phone </label>
							<div class="cols-sm-10">
								<div class="input-group">
								
									<input type="tel" class="form-control" name="phoneNumber" id="phoneNumber"  placeholder="Enter your Phone number"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">City </label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="text" class="form-control" name="city" id="city"  placeholder="Enter your City"/>
								</div>
							</div>
						</div>												
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Username</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Username"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Confirm Password</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="password" class="form-control" name="confirm" id="confirm"  placeholder="Confirm your Password"/>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="confirm" class="cols-sm-2 control-label">Address</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<textarea class="form-control" name="address" id="address" style="resize: none;height: 150px !important" placeholder="Enter your address"></textarea>
								</div>
							</div>
						</div>						

						<div class="form-group ">
						<input type="submit" class="btn btn-primary btn-lg btn-block login-button" name="btnreg" value="Register" />
						</div>
					</form>
<?php
		if(isset($_POST['btnreg']))
		{
			extract($_POST);
			$p=md5($password);
							//Query start
							//MD5('".$userpass."')
							$checkname="SELECT username FROM user_registration WHERE username='$username' and Status='doctor'";
							$checknamequery=mysqli_query($con,$checkname) or die(mysqli_error());
							$checknamefetch=mysqli_fetch_assoc($checknamequery);
							if ($name==$checknamefetch['username']) {
								echo "<script>alert('UserName Already Exist');</script>";
							}
							else
							{
								$checkname="SELECT phoneNumber FROM user_registration WHERE phoneNumber='$phoneNumber' and Status='doctor'";
								$checknamequery=mysqli_query($con,$checkname) or die(mysqli_error());
								$checknamefetch=mysqli_fetch_assoc($checknamequery);
								if ($name==$checknamefetch['phoneNumber']) {
									echo "<script>alert('Number Already Exist');</script>";
								}
								else
								{

									if ($password==$confirm) 
									{
										$sql="insert into user_registration values(null,'$name','$phoneNumber','$address','$city','$username','$p','doctor')";
										$query=mysqli_query($con,$sql) or die(mysqli_error());
								
										if($query)
										{
					
											echo "<script>alert('Registration Completed Successfully')</script>";
										}
										else
										{
											echo "<script>alert('Error in Registration')</script>";
										}
										
									}
									else
									{
										echo "<script>alert('Password does not Match');</script>";
									}
								}
							}

							//Query End								
		}

?>

				</div>
			</div>
		</div>
	</body>
	
	</html>