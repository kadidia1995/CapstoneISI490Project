<?php
session_start();
require('conn.php');
if(!isset($_SESSION['userName']))
{
echo "<script>window.location.assign('login.php')</script>";
}
else
{
	if ($_SESSION['Status']!='doctor') {
		echo "<script>window.location.assign('login.php')</script>";
	}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Doctor Registration</title>
<?php include 'header.php'; ?>
<?php
$id=$_SESSION['userName'];

$uquery="SELECT * FROM user_registration where uId=$id and Status='doctor'";
$ures=mysqli_query($con,$uquery);
$fetchur=mysqli_fetch_array($ures);

$npiquery="SELECT * FROM user_registration ur  INNER JOIN doctor d ON ur.uId=d.uId AND ur.username=d.doctor_name";
$npires=mysqli_query($con,$npiquery);
$fetchnpi=mysqli_fetch_array($npires);
?>
<div class="wrapper row3 pad-top">
  <main class="hoc container clear"> 
  	<h1 class="text-center">E-Script Submission Form</h1>
  	<form method="post">
  	<div class="d-form">
  		<h1>Patient Info, form</h1>
  			<input type="text" name="pname" placeholder="Patient Name" required="required">
  			<input type="date" name="pdob" value="<?php echo date('Y-m-d');?>" placeholder="Date of birth" required="required">
  			<input type="text" name="ptel" placeholder="Phone Number" required="required">
  			<input type="text" name="paddress" placeholder="Address" required="required">
  			<input type="text" name="pcity" placeholder="City" required="required">
  	</div>

  	<div class="d-form">
  		<h1>Medication info <a href="http://corporatea2z.com/extra/doc/Medication.php"> Medication </a></h1>
  			<input type="text" name="m_name" placeholder="Medication Name" required="required">
  			<input type="text" name="m_ndc" placeholder="Medication NDC" required="required">
  			<input type="number" name="m_qty_dispense" placeholder="Quantity Dispense" required="required">
  			<input type="number" name="p_id" placeholder="Prescription ID" required="required">
  			<input type="text" name="direction" placeholder="Directions" required="required">
  	</div>

  	<div class="d-form">
  		<h1>Doctor info</h1>
  			<input type="text" name="d_id" readonly="readonly"  value="<?php  echo $fetchur['uId'] ?>">
  			<input type="text" name="d_name" readonly="readonly" placeholder="Doctor Name" value="<?php  echo $fetchur['Name'] ?>">
  			<?php 
if ($fetchnpi['doctor_npi']=="") {
?>
  			<input type="text" name="d_nip" placeholder="Doctor NPI" required="required">
<?php 
}
 else
{
?>
  			<input type="text" name="d_nip" placeholder="Doctor NPI" readonly="readonly" required="required" value="<?php  echo $fetchnpi['doctor_npi'] ?>">
<?php
}
?>

  			<input type="text" name="d_tel" readonly="readonly" placeholder="Phone Number" value="<?php  echo $fetchur['phoneNumber'] ?>">
  			<input type="text" name="d_address" readonly="readonly" placeholder="Address" value="<?php  echo $fetchur['Address'] ?>">
  			<input type="text" name="d_city" placeholder="City" readonly="readonly" value="<?php  echo $fetchur['City'] ?>">
  	</div>

  	<div class="d-form">
  		<h1>pick-up location info</h1>
  			<input type="text" name="p_location" placeholder="Pick up Location" required="required">
  			<input type="text" name="s_address" placeholder="Store Address" required="required">
  			<input type="text" name="ph_tel" placeholder="Phone Number" required="required">
  			<input type="text" name="ph_city" placeholder="City" required="required">
  	</div>
  	<input type="submit" name="btnreg" value="Submit" class="bt-reg btn btn-primary btn-lg btn-block login-button btn-doc">
  	</form>
  	
<?php
		if(isset($_POST['btnreg']))
		{
			$date=date('Y-m-d');
			extract($_POST);

			if ($pdob>=$date) {
				echo "<script>alert('Date Should be less than today date')</script>";
			}
			else
			{
				$selectdoctor="select * from doctor where doctor_npi='$d_nip'";
				$selectdoctorquery=mysqli_query($con,$selectdoctor) or die(mysqli_error());
				$selectdoctorfetch=mysqli_fetch_assoc($selectdoctorquery);
				$doctor_npi= $selectdoctorfetch['doctor_npi'];	
				if ($doctor_npi==0) {
					$dsql="insert into doctor values($d_nip,'$d_name','$d_tel','$d_address','$d_city',$d_id)";
					$dquery=mysqli_query($con,$dsql) or die(mysqli_error());					
				}
				else
				{

					$dsql="update doctor set uId=$d_id where doctor_npi='$doctor_npi'";
					$dquery=mysqli_query($con,$dsql) or die(mysqli_error());					
				}
				$selectpatient="SELECT * FROM user_registration WHERE NAME='$pname'  AND phoneNumber='$ptel' AND STATUS='patient'";
				$selectpatientquery=mysqli_query($con,$selectpatient) or die(mysqli_error());
				$selectpatientfetch=mysqli_fetch_assoc($selectpatientquery);
				$patient= $selectpatientfetch['uId'];	
				$toppatientreg="SELECT uId FROM user_registration ORDER BY uId DESC LIMIT 1";
				$toppatientregquery=mysqli_query($con,$toppatientreg) or die(mysqli_error());
				$toppatientregfetch=mysqli_fetch_assoc($toppatientregquery);
				$toppatient=0;

				if ($patient=="") 
				{
					$usql="insert into user_registration values($toppatient,'$pname','$ptel','$paddress','$pcity',null,null,'patient')";
					$uquery=mysqli_query($con,$usql) or die(mysqli_error());
					$toppatient= $toppatientregfetch['uId']+1;	
				}
				else
				{
					$toppatient= $patient;	
				}
			$psql="insert into patients values(null,'$p_id','$pname','$ptel','$paddress','$p_location','$pdob','$pcity','$toppatient')";
			$pquery=mysqli_query($con,$psql) or die(mysqli_error());

				$selectstore="select * from store where storeID='$p_location'";
				$selectstorequery=mysqli_query($con,$selectstore) or die(mysqli_error());
				$selectstorefetch=mysqli_fetch_assoc($selectstorequery);
				$selectstoreval= $selectstorefetch['storeID'];	
				if ($selectstoreval=="") {
							$ssql="insert into store values('$p_location','$p_id','$ph_tel','$s_address','$ph_city')";
							$squery=mysqli_query($con,$ssql) or die(mysqli_error());
				}
			
			$ppsql="insert into prescription values('$p_id','$d_nip','$m_ndc','$pname','$p_location')";
			$ppquery=mysqli_query($con,$ppsql) or die(mysqli_error());

			$msql="insert into medictaion_history values(null,'$m_ndc','$m_name','$p_id','$direction','$m_qty_dispense')";
			$mquery=mysqli_query($con,$msql) or die(mysqli_error());

				$eselectpatient="SELECT * FROM user_registration WHERE NAME='$pname'  AND phoneNumber='$ptel' AND STATUS='patient'";
				$eselectpatientquery=mysqli_query($con,$eselectpatient) or die(mysqli_error());
				$eselectpatientfetch=mysqli_fetch_assoc($eselectpatientquery);
				$epatient= $eselectpatientfetch['uId'];
								if ($pquery && $ppquery && $mquery) {
									echo "<script>alert('Inserted Successfully')</script>";	
									echo "<script>window.location.assign('datasearch6.php?pId=$epatient')</script>";
								}
								else
								{
								echo "<script>alert('Insert Failed')</script>";	
								}
			}
		}

?>

             </main>
        </div>
	</body>
	
	</html>