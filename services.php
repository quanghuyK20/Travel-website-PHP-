<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>

<!DOCTYPE HTML>

<head>
	<title>TMS | Tourism Management System</title>
	<link href="css/style3.css" rel="stylesheet" type="text/css" media="all" />

	<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- Custom Theme files -->
	<script src="js/jquery-1.12.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<!--animate-->
	<!-- <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
	<script src="js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script> -->
	<!--//end-animate-->

	<link href='//fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=PT+Sans+Narrow' rel='stylesheet' type='text/css'>

</head>

<body>
	<?php include('includes/header.php'); ?>
	<div class="banner">
		<div class="container">
			<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> HN TRAVEL - HOME</h1>
		</div>
	</div>
	<!---End-wrap---->
	<div class="clear"> </div>
	<!---start-content---->
	<div class="content">
		<div class="wrap">
			<!---start-services---->
			<div class="services">
				<div class="services-header">
					<h5> </h5>
					<h3>Services</h3>
					<h5> </h5>
					<div class="clear"> </div>
				</div>
				<div class="services-grids">
					<?php $sql = "SELECT * from tblservice";
					$query = $dbh->prepare($sql);
					$query->execute();
					$results = $query->fetchAll(PDO::FETCH_OBJ);
					$cnt = 1;
					if ($query->rowCount() > 0) {
						foreach ($results as $result) {	?>
							<div class="services-grid">
								<a href="#"><?php echo htmlentities($result->namesv); ?></a>
								<p><?php echo htmlentities($result->svcontent); ?></p>
							</div>
					<?php }
					} ?>
					<div class="clear"> </div>
				</div>
			</div>
			<!---End-services---->
			<div class="clear"> </div>
			<div class="specials">
				<div class="specials-heading">
					<h5> </h5>
					<h3>Latest-News</h3>
					<h5> </h5>
					<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
				<div class="specials-grids">
					<?php $sql = "SELECT * from tblnew";
					$query = $dbh->prepare($sql);
					$query->execute();
					$results = $query->fetchAll(PDO::FETCH_OBJ);
					$cnt = 1;
					if ($query->rowCount() > 0) {
						foreach ($results as $result) {	?>
							<div class="special-grid">
								<img src="admin/pacakgeimages/<?php echo htmlentities($result->imagenew); ?>" alt="">
								<a href="#"><?php echo htmlentities($result->nameidea); ?></a>
								<p><?php echo htmlentities($result->content); ?></p>
							</div>
						
					<?php }
					} ?>


					<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<div class="clear"> </div>
	</div>
	<!---End-content---->
	<div class="clear"> </div>
	<!---start-footer---->
	<?php include('includes/footer.php'); ?>
	</div>
	<!---End-footer---->


	<!-- signup -->
	<?php include('includes/signup.php'); ?>
	<!-- //signu -->
	<!-- signin -->
	<?php include('includes/signin.php'); ?>
	<!-- //signin -->
	<!-- write us -->
	<?php include('includes/write-us.php'); ?>
	<!-- //write us -->
</body>

</html>