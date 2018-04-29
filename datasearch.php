<?php require('conn.php');?>
<html>
<head>
  <title>Search data from database</title>
  <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet" />
  <?php include 'header.php'; ?>
  <div class="wrapper row3 pad-top">
  <main class="hoc container clear"> 
<table id="example" class="display" style="width:100%">
	        <tfoot>
            <tr>
                <th>Patient ID</th>
                <th>Patient Name</th>
                <th>Medication Name</th>
                <th>Doctor Name</th>
                <th>pick_up_location</th>
                <th>quantity</th>
            </tr>
        </tfoot>
        <thead>
            <tr>
                <th>Patient ID</th>
                <th>Patient Name</th>
                <th>Medication Name</th>
                <th>Doctor Name</th>
                <th>pick_up_location</th>
                <th>quantity</th>
            </tr>
        </thead>
        <tbody>
					<?php
					$query="SELECT * FROM prescription pr INNER JOIN patients pa ON pr.prescriptionID=pa.prescriptionID INNER JOIN medictaion_history m ON pr.medication_NDC=m.medication_NDC INNER JOIN doctor d ON pr.doctor_npi=d.doctor_npi";
					$r=mysqli_query($con,$query);
					while($fetch=mysqli_fetch_array($r))
					{
					?>
					<tr>    
						<td style="text-align:center;"><?php echo $fetch['patientID']?></td>
						<td style="text-align:center;"><?php echo $fetch['patient_name']?></td>						
						<td style="text-align:center;"><?php echo $fetch['medication_name']?></td>
						<td style="text-align:center;"><?php echo $fetch['doctor_name']?></td>
						<td style="text-align:center;"><?php echo $fetch['pick_up_location']?></td>
						<td style="text-align:center;"><?php echo $fetch['qty']?></td>      	
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
				    // Setup - add a text input to each footer cell
				    $('#example tfoot th').each( function () {
				        var title = $(this).text();
				        $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
				    } );
				 
				    // DataTable
				    var table = $('#example').DataTable();
				 
				    // Apply the search
				    table.columns().every( function () {
				        var that = this;
				 
				        $( 'input', this.footer() ).on( 'keyup change', function () {
				            if ( that.search() !== this.value ) {
				                that
				                    .search( this.value )
				                    .draw();
				            }
				        } );
				    } );
				    $("#example_filter").remove();
				} );
    </script>
</html>
