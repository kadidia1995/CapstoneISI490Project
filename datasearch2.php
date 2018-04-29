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
                <th>medication NDC</th>
                <th>Medication Name</th>
                <th>Availability</th>
                <th>Location</th>

            </tr>
        </tfoot>
        <thead>
            <tr>
                <th>medication NDC</th>
                <th>Medication Name</th>
                <th>Availability</th>
                <th>Location</th>
            </tr>
        </thead>
        <tbody>
					<?php
					$query="SELECT * FROM medication";
					$r=mysqli_query($con,$query);
					while($fetch=mysqli_fetch_array($r))
					{
					?>
					<tr>    
						<td style="text-align:center;"><?php echo $fetch['medication_NDC']?></td>
						<td style="text-align:center;"><?php echo $fetch['medication_name']?></td>
						<td style="text-align:center;"><?php echo $fetch['quantity']?></td>
						<td style="text-align:center;"><?php echo $fetch['location']?></td>
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
    </div>
    <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/03.png');"> 
  <div class="wrapper row4">
    <footer id="footer" class="hoc clear"> 
     
      <div class="one_quarter first">
        <h6 class="heading">Contact Info</h6>
        <ul class="nospace btmspace-30 linklist contact">
          <li><i class="fa fa-map-marker"></i>
            <address>
            abc road example city country
            </address>
          </li>
          <li><i class="fa fa-phone"></i> 000 000 000</li>
          <li><i class="fa fa-envelope-o"></i> abc@example.com</li>
        </ul>
        <ul class="faico clear">
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        </ul>
      </div>
      <div class="one_quarter">
        <h6 class="heading">Information</h6>
        <ul class="nospace linklist">
          <li><a href="#">usefull link</a></li>
          <li><a href="#">usefull link</a></li>
          <li><a href="#">usefull link</a></li>
          <li><a href="#">usefull link</a></li>
          
        </ul>
      </div>
      <div class="one_quarter">
        <h6 class="heading">Usefull links</h6>
        <ul class="nospace linklist">
          <li><a href="#">usefull link</a></li>
          <li><a href="#">usefull link</a></li>
          <li><a href="#">usefull link</a></li>
          <li><a href="#">usefull link</a></li>
        </ul>
      </div>
      <div class="one_quarter">
        <h6 class="heading">About us</h6>
        <p class="nospace btmspace-15">NexGenRx system will facilitate pharmacy workflow and serves as an effective hyperlink between the prescriber, pharmacy associates and patients. </p>
        
        <button type="button">View More</button>
          
      </div>
    </footer>
  </div>
  <div class="wrapper row5">
    <div id="copyright" class="hoc clear"> 
      <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">NexGenRx </a></p>
      
    </div>
  </div>
</div>
<!-- End Footer Background Image Wrapper -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->

</body>
</html>
