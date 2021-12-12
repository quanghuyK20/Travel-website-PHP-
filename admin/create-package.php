<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
	header('location:index.php');
} else {
	if (isset($_POST['submit'])) {
		$pname = $_POST['packagename'];
		$ptype = $_POST['packagetype'];
		$plocation = $_POST['packagelocation'];
		$pprice = $_POST['packageprice'];
		$pfeatures = $_POST['packagefeatures'];
		$pdetails = $_POST['packagedetails'];
		$mota1 = $_POST['mota1'];
		$mota2 = $_POST['mota2'];
		$mota3 = $_POST['mota3'];
		$mota4 = $_POST['mota4'];
		$pimage = $_FILES["packageimage"]["name"];
		$pimage1 = $_FILES["packageimage1"]["name"];
		$pimage2 = $_FILES["packageimage2"]["name"];
		$pimage3 = $_FILES["packageimage3"]["name"];
		$pimage4 = $_FILES["packageimage4"]["name"];
		move_uploaded_file($_FILES["packageimage"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage"]["name"]);
		move_uploaded_file($_FILES["packageimage1"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage1"]["name"]);
		move_uploaded_file($_FILES["packageimage2"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage2"]["name"]);
		move_uploaded_file($_FILES["packageimage3"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage3"]["name"]);
		move_uploaded_file($_FILES["packageimage4"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage4"]["name"]);
		$sql = "INSERT INTO TblTourPackages(PackageName,PackageType,PackageLocation,PackagePrice,PackageFetures,PackageDetails,PackageImage,img1,img2,img3,img4,mota1,mota2,mota3,mota4) VALUES(:pname,:ptype,:plocation,:pprice,:pfeatures,:pdetails,:pimage,:pimage1,:pimage2,:pimage3,:pimage4,:mota1,:mota2,:mota3,:mota4)";
		$query = $dbh->prepare($sql);
		$query->bindParam(':pname', $pname, PDO::PARAM_STR);
		$query->bindParam(':ptype', $ptype, PDO::PARAM_STR);
		$query->bindParam(':plocation', $plocation, PDO::PARAM_STR);
		$query->bindParam(':pprice', $pprice, PDO::PARAM_STR);
		$query->bindParam(':pfeatures', $pfeatures, PDO::PARAM_STR);
		$query->bindParam(':pdetails', $pdetails, PDO::PARAM_STR);
		$query->bindParam(':pimage', $pimage, PDO::PARAM_STR);
		$query->bindParam(':pimage1', $pimage1, PDO::PARAM_STR);
		$query->bindParam(':pimage2', $pimage2, PDO::PARAM_STR);
		$query->bindParam(':pimage3', $pimage3, PDO::PARAM_STR);
		$query->bindParam(':pimage4', $pimage4, PDO::PARAM_STR);
		$query->bindParam(':mota1', $mota1, PDO::PARAM_STR);
		$query->bindParam(':mota2', $mota2, PDO::PARAM_STR);
		$query->bindParam(':mota3', $mota3, PDO::PARAM_STR);
		$query->bindParam(':mota4', $mota4, PDO::PARAM_STR);
		$query->execute();
		$lastInsertId = $dbh->lastInsertId();
		if ($lastInsertId) {
			$msg = "Thông tin được thêm thành công";
		} else {
			$error = "Có lỗi xảy ra. Vui lòng thử lại";
		}
	}

?>
	<!DOCTYPE HTML>
	<html>

	<head>
		<title>Thêm Tour du lịch</title>
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
					<li class="breadcrumb-item"><a href="manage-packages.php">Trang chủ</a><i class="fa fa-angle-right"></i> Cập nhât</li>
				</ol>
				<!--grid-->
				<div class="grid-form">

					<!---->
					<div class="grid-form1">
						<h3>Thêm mới</h3>
						<?php if ($error) { ?><div class="errorWrap"><strong>Lỗi</strong>:<?php echo htmlentities($error); ?> </div><?php } else if ($msg) { ?><div class="succWrap"><strong>Thành công</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
						<div class="tab-content">
							<div class="tab-pane active" id="horizontal-form">
								<form class="form-horizontal" name="package" method="post" enctype="multipart/form-data">
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Tên tour</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="packagename" id="packagename" placeholder="   Nhập nội dung" required>
										</div>
									</div>
									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Loại hình</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="packagetype" id="packagetype" placeholder="   Gia đình/ Cơ quan/ Cặp đôi,..." required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Địa điểm</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="packagelocation" id="packagelocation" placeholder="   Nhập nội dung" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Giá khởi điểm</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="packageprice" id="packageprice" placeholder="   Nhập số tiền" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label"> Mô tả tour du lịch</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="packagefeatures" id="packagefeatures" placeholder="   Nhập nội dung" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Chi tiết tour</label>
										<div class="col-sm-8">
											<textarea class="form-control" rows="5" cols="50" name="packagedetails" id="packagedetails" placeholder="  Nhập nội dung" required></textarea>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Ảnh chính</label>
										<div class="col-sm-8">
											<input type="file" name="packageimage" id="packageimage" required>

										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Ảnh mô tả 1</label>
										<div class="col-sm-8">
											<input type="file" name="packageimage1" id="packageimage1" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Nhập tiêu đề</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="mota1" id="mota1" placeholder="   Nhập nội dung" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Ảnh mô tả 2</label>
										<div class="col-sm-8">
											<input type="file" name="packageimage2" id="packageimage2" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label"> Nhập tiêu đề</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="mota2" id="mota2" placeholder="   Nhập nội dung" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Ảnh mô tả 3</label>
										<div class="col-sm-8">
											<input type="file" name="packageimage3" id="packageimage3" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label"> Nhập tiêu đề</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="mota3" id="mota3" placeholder="   Nhập nội dung" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label">Ảnh mô tả 4</label>
										<div class="col-sm-8">
											<input type="file" name="packageimage4" id="packageimage4" required>
										</div>
									</div>

									<div class="form-group">
										<label for="focusedinput" class="col-sm-2 control-label"> Nhập tiêu đề</label>
										<div class="col-sm-8">
											<input type="text" class="form-control1" name="mota4" id="mota4" placeholder="   Nhập nội dung" required>
										</div>
									</div>

									<div class="row">
										<div class="col-sm-8 col-sm-offset-2">
											<button type="submit" name="submit" class="btn-primary btn">Tạo</button>
											<button type="reset" class="btn-inverse btn">Reset</button>
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