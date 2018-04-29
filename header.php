<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link href="layout/main.css" rel="stylesheet" type="text/css" media="all">

</head>
<body id="top">

<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    <div id="logo" class="fl_left">
      <h1><a href="index.php">NexGenRx</a></h1>
    </div>
    <nav id="mainav" class="fl_right">
      <ul class="clear">
        <li class="active"><a href="index.php">Home</a></li>
          
          <li><a href="datasearch.php">Prescription</a></li>
          <li><a href="Medication.php">Medication</a></li>
          <li><a href="Store.php">Store</a></li>
          <li><a href="datasearch5.php">Patients</a></li>
          
          
          <?php 
                  if(isset($_SESSION['userName']))
                  {
         ?>         <li class="active"><a class="drop" href="doctorregistration.php">Doctor</a>
                    <ul>
                    <li><a href="docreg.php">Register </a></li>
                    </ul></li>
                    <li><a href="profile.php">Profile</a></li>
                    <li><a href="admin.php">Admin</a></li>
                    <li><a href="login.php?userName=<?php echo $_SESSION['userName'] ?>">Logout</a></li>
                    
                  <?php
                  }
                  else
                  {
                  ?>
                  <li><a href="docreg.php">Doctor</a></li>
                    <li><a href="login.php">Login</a></li>
                  <?php
                  }
          ?>
       </ul>
    </nav>
  </header>
</div>