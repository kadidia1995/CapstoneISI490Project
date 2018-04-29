<?php
session_start();
require('conn.php');
?>
<!DOCTYPE html>
<html lang="">
<head>
<title>NexGenRx</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<?php include 'header.php'; ?>

<div class="wrapper bgded overlay" style="background-image:url('img/slide.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <article>
      <p>Welcome to NexGenRx</p>
      <h3 class="heading">prescriber, pharmacy associates and patients</h3>
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn newbtn" href="#">Login</a></li>
          <li><a class="btn inverse newbtn" href="#">Store</a></li>
        </ul>
      </footer>
    </article>

  </div>
</div>


<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/03.png');"> 
  
</div>
<!-- End Footer Background Image Wrapper -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>