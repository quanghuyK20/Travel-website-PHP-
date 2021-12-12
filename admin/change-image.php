<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
	header('location:index.php');
} else {
	$amgid = intval($_GET['amgid']);
	$imgid = intval($_GET['imgid']);
	$imgid1 = intval($_GET['imgid1']);
	$imgid2 = intval($_GET['imgid2']);
	$imgid3 = intval($_GET['imgid3']);
	$imgid4 = intval($_GET['imgid4']);
	if (isset($_POST['submit'])) {
		$aimage = $_FILES["packageimage5"]["name"];
		$pimage = $_FILES["packageimage"]["name"];
		$pimage1 = $_FILES["packageimage1"]["name"];
		$pimage2 = $_FILES["packageimage2"]["name"];
		$pimage3 = $_FILES["packageimage3"]["name"];
		$pimage4 = $_FILES["packageimage4"]["name"];

		move_uploaded_file($_FILES["packageimage5"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage5"]["name"]);
		move_uploaded_file($_FILES["packageimage"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage"]["name"]);
		move_uploaded_file($_FILES["packageimage1"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage1"]["name"]);
		move_uploaded_file($_FILES["packageimage2"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage2"]["name"]);
		move_uploaded_file($_FILES["packageimage3"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage3"]["name"]);
		move_uploaded_file($_FILES["packageimage4"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage4"]["name"]);

		$sql = "update TblTourPackages set PackageImage=:pimage where PackageId=:imgid";
		$sql1 = "update TblTourPackages set img1=:pimage1 where PackageId=:imgid1";
		$sql2 = "update TblTourPackages set img2=:pimage2 where PackageId=:imgid2";
		$sql3 = "update TblTourPackages set img3=:pimage3 where PackageId=:imgid3";
		$sql4 = "update TblTourPackages set img4=:pimage4 where PackageId=:imgid4";
		$sql5 = "update tblabout set image=:aimage where aid=:amgid";

		$query = $dbh->prepare($sql);
		$query1 = $dbh->prepare($sql1);
		$query2 = $dbh->prepare($sql2);
		$query3 = $dbh->prepare($sql3);
		$query4 = $dbh->prepare($sql4);
		$query5 = $dbh->prepare($sql5);

		$query->bindParam(':imgid', $imgid, PDO::PARAM_STR);
		$query1->bindParam(':imgid1', $imgid1, PDO::PARAM_STR);
		$query2->bindParam(':imgid2', $imgid2, PDO::PARAM_STR);
		$query3->bindParam(':imgid3', $imgid3, PDO::PARAM_STR);
		$query4->bindParam(':imgid4', $imgid4, PDO::PARAM_STR);
		$query5->bindParam(':amgid', $amgid, PDO::PARAM_STR);


		$query->bindParam(':pimage', $pimage, PDO::PARAM_STR);
		$query1->bindParam(':pimage1', $pimage1, PDO::PARAM_STR);
		$query2->bindParam(':pimage2', $pimage2, PDO::PARAM_STR);
		$query3->bindParam(':pimage3', $pimage3, PDO::PARAM_STR);
		$query4->bindParam(':pimage4', $pimage4, PDO::PARAM_STR);
		$query5->bindParam(':aimage', $aimage, PDO::PARAM_STR);


		$query->execute();
		$query1->execute();
		$query2->execute();
		$query3->execute();
		$query4->execute();
		$query5->execute();

		$msg = "Created Successfully";
	}

?>
	<!DOCTYPE HTML>
	<html>

	<head>
		<title>Nhân Huy Travel</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="css/morris.css" type="text/css" />
		<link href="css/font-awesome.css" rel="stylesheet">
		<script src="js/jquery-2.1.4.min.js"></script>
		<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css' />
		<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
		<style>
			.errorWrap {
				padding: 10px;
				margin: 0 0 20px 0;
				background: #fff;
				border-left: 4px solid #dd3d36;
				-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
				box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
			}

			.succWrap {
				padding: 10px;
				margin: 0 0 20px 0;
				background: #fff;
				border-left: 4px solid #5cb85c;
				-webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
				box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
			}
		</style>

	</head>

	<body>
		<div class="page-container">
			<!--/content-inner-->
			<div class="left-content">
				<div class="mother-grid-inner">
					<!--header start here-->
					<?php include('includes/header.php'); ?>

					<div class="clearfix"> </div>
				</div>
				<!--heder end here-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="update-package.php">Update Tours</a><i class="fa fa-angle-right"></i>Update Tours image </li>
				</ol>
				<!--grid-->
				<div class="grid-form">

					<!---->
					<div class="grid-form1">
						<h3>Update Tour Image </h3>
						<?php if ($error) { ?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } else if ($msg) { ?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
						<div class="tab-content">
							<div class="tab-pane active" id="horizontal-form">
								<form class="form-horizontal" name="package" method="post" enctype="multipart/form-data">
									<?php
									$imgid = intval($_GET['imgid']);
									$sql = "SELECT PackageImage from TblTourPackages where PackageId=:imgid";
									$query = $dbh->prepare($sql);
									$query->bindParam(':imgid', $imgid, PDO::PARAM_STR);
									$query->execute();
									$results = $query->fetchAll(PDO::FETCH_OBJ);
									$cnt = 1;
									if ($query->rowCount() > 0) {
										foreach ($results as $result) {	?>
											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label"> Tour Image </label>
												<div class="col-sm-8">
													<img src="pacakgeimages/<?php echo htmlentities($result->PackageImage); ?>" width="200">
												</div>
											</div>

											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label">New Image</label>
												<div class="col-sm-8">
													<input type="file" name="packageimage" id="packageimage" required>
												</div>
											</div>
									<?php }
									} ?>

									<?php
									$imgid1 = intval($_GET['imgid1']);
									$sql = "SELECT img1 from TblTourPackages where PackageId=:imgid1";
									$query = $dbh->prepare($sql);
									$query->bindParam(':imgid1', $imgid1, PDO::PARAM_STR);
									$query->execute();
									$results = $query->fetchAll(PDO::FETCH_OBJ);
									$cnt = 1;
									if ($query->rowCount() > 0) {
										foreach ($results as $result) {	?>
											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label"> Package Image 1</label>
												<div class="col-sm-8">
													<img src="pacakgeimages/<?php echo htmlentities($result->img1); ?>" width="200">
												</div>
											</div>

											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label">New Image 1</label>
												<div class="col-sm-8">
													<input type="file" name="packageimage1" id="packageimage1" required>
												</div>
											</div>
									<?php }
									} ?>

									<?php
									$imgid2 = intval($_GET['imgid2']);
									$sql = "SELECT img2 from TblTourPackages where PackageId=:imgid2";
									$query = $dbh->prepare($sql);
									$query->bindParam(':imgid2', $imgid2, PDO::PARAM_STR);
									$query->execute();
									$results = $query->fetchAll(PDO::FETCH_OBJ);
									$cnt = 1;
									if ($query->rowCount() > 0) {
										foreach ($results as $result) {	?>
											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label"> Package Image 2</label>
												<div class="col-sm-8">
													<img src="pacakgeimages/<?php echo htmlentities($result->img2); ?>" width="200">
												</div>
											</div>

											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label">New Image 2</label>
												<div class="col-sm-8">
													<input type="file" name="packageimage2" id="packageimage2" required>
												</div>
											</div>
									<?php }
									} ?>

									<?php
									$imgid3 = intval($_GET['imgid3']);
									$sql = "SELECT img3 from TblTourPackages where PackageId=:imgid3";
									$query = $dbh->prepare($sql);
									$query->bindParam(':imgid3', $imgid3, PDO::PARAM_STR);
									$query->execute();
									$results = $query->fetchAll(PDO::FETCH_OBJ);
									$cnt = 1;
									if ($query->rowCount() > 0) {
										foreach ($results as $result) {	?>
											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label"> Package Image 3</label>
												<div class="col-sm-8">
													<img src="pacakgeimages/<?php echo htmlentities($result->img3); ?>" width="200">
												</div>
											</div>

											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label">New Image 3</label>
												<div class="col-sm-8">
													<input type="file" name="packageimage3" id="packageimage3" required>
												</div>
											</div>
									<?php }
									} ?>

									<?php
									$imgid4 = intval($_GET['imgid4']);
									$sql = "SELECT img4 from TblTourPackages where PackageId=:imgid4";
									$query = $dbh->prepare($sql);
									$query->bindParam(':imgid4', $imgid4, PDO::PARAM_STR);
									$query->execute();
									$results = $query->fetchAll(PDO::FETCH_OBJ);
									$cnt = 1;
									if ($query->rowCount() > 0) {
										foreach ($results as $result) {	?>
											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label"> Package Image 4</label>
												<div class="col-sm-8">
													<img src="pacakgeimages/<?php echo htmlentities($result->img4); ?>" width="200">
												</div>
											</div>

											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label">New Image 4</label>
												<div class="col-sm-8">
													<input type="file" name="packageimage4" id="packageimage4" required>
												</div>
											</div>
									<?php }
									} ?>

									<?php
									$amgid = intval($_GET['amgid']);
									$sql = "SELECT image from tblabout where aid=:amgid";
									$query = $dbh->prepare($sql);
									$query->bindParam(':amgid', $amgid, PDO::PARAM_STR);
									$query->execute();
									$results = $query->fetchAll(PDO::FETCH_OBJ);
									$cnt = 1;
									if ($query->rowCount() > 0) {
										foreach ($results as $result) {	?>
											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label">Image</label>
												<div class="col-sm-8">
													<img src="pacakgeimages/<?php echo htmlentities($result->image); ?>" width="200">
												</div>
											</div>

											<div class="form-group">
												<label for="focusedinput" class="col-sm-2 control-label">New Image</label>
												<div class="col-sm-8">
													<input type="file" name="packageimage5" id="packageimage5" required>
												</div>
											</div>
									<?php }
									} ?>
									<div class="row">
										<div class="col-sm-8 col-sm-offset-2">
											<button type="submit" name="submit" class="btn-primary btn">Update</button>

										</div>
									</div>
							</div>
							</form>
							<div class="panel-footer">
							</div>
							</form>
						</div>
					</div>
					<!--//grid-->

					<!-- script-for sticky-nav -->
					<script>
						$(document).ready(function() {
							var navoffeset = $(".header-main").offset().top;
							$(window).scroll(function() {
								var scrollpos = $(window).scrollTop();
								if (scrollpos >= navoffeset) {
									$(".header-main").addClass("fixed");
								} else {
									$(".header-main").removeClass("fixed");
								}
							});

						});
					</script>
					<!-- /script-for sticky-nav -->
					<!--inner block start here-->
					<div class="inner-block">

					</div>
					<!--inner block end here-->
					<!--copy rights start here-->
					<?php include('includes/footer.php'); ?>
					<!--COPY rights end here-->
				</div>
			</div>
			<!--//content-inner-->
			<!--/sidebar-menu-->
			<?php include('includes/sidebarmenu.php'); ?>
			<div class="clearfix"></div>
		</div>
		<script>
			var toggle = true;

			$(".sidebar-icon").click(function() {
				if (toggle) {
					$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
					$("#menu span").css({
						"position": "absolute"
					});
				} else {
					$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
					setTimeout(function() {
						$("#menu span").css({
							"position": "relative"
						});
					}, 400);
				}

				toggle = !toggle;
			});
		</script>
		<!--js -->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>
		<!-- /Bootstrap Core JavaScript -->

	</body>

	</html>
<?php } ?>