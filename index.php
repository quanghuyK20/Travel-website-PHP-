<?php
session_start();
error_reporting(0);
include('includes/config.php');

$sql = "SELECT * FROM tblview order by vid ASC";
$query = $dbh->prepare($sql);
$query->execute();
$results = $query->fetchAll(PDO::FETCH_OBJ);
?>
<!DOCTYPE HTML>
<html>

<head>
	<title>Nhân Huy Travel</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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
	<!--css-->
	<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
	<!--/css-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 900);
			});
		});
	</script>
	<!--/script-->
	<!-- banner js script -->
	<script src="js/JiSlider.js"></script>
	<script>
		$(window).load(function() {
			$('#JiSlider').JiSlider({
				color: '#fff',
				start: 3,
				reverse: true
			}).addClass('ff')
		})
	</script>

	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-36251023-1']);
		_gaq.push(['_setDomainName', 'jqueryscript.net']);
		_gaq.push(['_trackPageview']);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script src="js/JiSlider.js"></script>
	<link href="css/JiSlider.css" rel="stylesheet"> <!-- banner js-->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> <!-- Testimonials js-->
</head>

<body>
	<?php include('includes/header.php'); ?>
	<?php include('includes/slider.php'); ?>

	<!--works start here-->

	<link rel="stylesheet" href="css/swipebox.css">
	<script src="js/jquery.swipebox.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
	<div class="container">
		<div class="grid">
			<h4>Gợi ý cho bạn</h4>
			<?php
			if ($query->rowCount() > 0) {
				foreach ($results as $result) {	?>
					<figure class="effect-julia">
						<img src="admin/pacakgeimages/<?php echo htmlentities($result->viewimage); ?>" alt="">
						<figcaption>
							<h2><?php echo htmlentities($result->imagename); ?><span> </span></h2>
							<div>
								<p><?php echo htmlentities($result->mt1); ?></p>
								<p><?php echo htmlentities($result->mt2); ?></p>
								<p><?php echo htmlentities($result->mt3); ?></p>
							</div>
							<a href="#">View more</a>
						</figcaption>
					</figure>
			<?php }
			} ?>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--/effect-gird-->
	<section class="w3l-gallery-6">
		<div class="index-services">
			<div class="container">
				<h4>Một số dịch vụ</h4>
				<div class="col-md-6 is-text">
					<h3>Giải trí</h3>
					<p>Du thuyền</p>
					<p>Nhảy dù</p>
					<div class="selected">
						<h3 class="selected-info">Quà tặng may mắn</h3>
						<i class="glyphicon glyphicon-pushpin"><span>Áo kỉ niệm</span></i>
						<i class="glyphicon glyphicon-pushpin"><span>Voucher</span></i>
						<i class="glyphicon glyphicon-pushpin"><span>Vé máy bay</span></i>
						<i class="glyphicon glyphicon-pushpin"><span>Đua thuyền</span></i>
						<i class="glyphicon glyphicon-pushpin"><span>Ảnh lưu niệm</span></i>
					</div>
				</div>
				<div class="col-md-6 is-img">
					<ul>
						<li><i></i>Dịch vụ tận tâm</li>
						<li><i></i>Ưu đãi hấp dẫn</li>
						<li><i></i>Sự kiện thú vị</li>
						<li><i></i>Trải nghiệm mới mẻ</li>
						<li><i></i>Giao lưu với mọi người</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="gallery-content-6 py-5">
			<div class="container py-lg-5">
				<div class="title-content mb-lg-5 mb-4">
					<span class="sub-title">Tours du lịch bán chạy</span>
					<h3 class="hny-title">Ưu đãi</h3>
				</div>
				<div class="row gallery-grids">
					<?php $sql = "SELECT * from tbltourpackages ORDER BY PackageId DESC";
					$query = $dbh->prepare($sql);
					$query->execute();
					$results = $query->fetchAll(PDO::FETCH_OBJ);
					$cnt = 1;
					if ($query->rowCount() > 0) {
						foreach ($results as $result) {	?>
							<div class="col-lg-4 col-md-6 content-left-sec gal-slide-grid">
								<div class="gal-slide-img">
									<a href="#"><img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage); ?>" class="img img-fluid" alt=""></a>
								</div>
								<div class="gal-slide-info">
									<a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId); ?>">
										<h4 class="mt-4 mb-0"><?php echo htmlentities($result->PackageName); ?></h4>
									</a>
									<h6 class="mt-sm-2 mt-1">3Days, 4 Nights Start From <span><?php echo htmlentities($result->PackagePrice); ?> VND</span></h6>
								</div>
							</div>
					<?php }
					} ?>
					<!-- <div class="col-lg-4 col-md-6 content-left-sec gal-slide-grid">
						<div class="gal-slide-img">
							<a href="#"><img src="images/g1.jpg" class="img img-fluid" alt=""></a>
						</div>
						<div class="gal-slide-info">

							<a href="#">
								<h4 class="mt-4 mb-0">Paris</h4>
							</a>
							<h6 class="mt-sm-2 mt-1">3Days, 4 Nights Start From <span>$750</span></h6>

						</div>
					</div>
					<div class="col-lg-4 col-md-6 content-left-sec gal-slide-grid">
						<div class="gal-slide-img">
							<a href="#"><img src="images/g2.jpg" class="img img-fluid" alt=""></a>
						</div>
						<div class="gal-slide-info">

							<a href="#">
								<h4 class="mt-4 mb-0">Bankok</h4>
							</a>
							<h6 class="mt-sm-2 mt-1">2Days, 3 Nights Start From <span>$650</span></h6>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 content-left-sec gal-slide-grid">
						<div class="gal-slide-img">
							<a href="#"><img src="images/g3.jpg" class="img img-fluid" alt=""></a>
						</div>
						<div class="gal-slide-info">

							<a href="#">
								<h4 class="mt-4 mb-0">Maldives</h4>
							</a>
							<h6 class="mt-sm-2 mt-1">2Days, 3 Nights Start From <span>$550</span></h6>

						</div>
					</div>
					<div class="col-lg-4 col-md-6 content-left-sec gal-slide-grid">
						<div class="gal-slide-img">
							<a href="#"><img src="images/g4.jpg" class="img img-fluid" alt=""></a>
						</div>
						<div class="gal-slide-info">

							<a href="#">
								<h4 class="mt-4 mb-0">Greece</h4>
							</a>
							<h6 class="mt-sm-2 mt-1">3Days, 4 Nights Start From <span>$950</span></h6>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 content-left-sec gal-slide-grid">
						<div class="gal-slide-img">
							<a href="#"><img src="images/g5.jpg" class="img img-fluid" alt=""></a>
						</div>
						<div class="gal-slide-info">

							<a href="#">
								<h4 class="mt-4 mb-0">London</h4>
							</a>
							<h6 class="mt-sm-2 mt-1">2Days, 3 Nights Start From <span>$550</span></h6>

						</div>
					</div>
					<div class="col-lg-4 col-md-6 content-left-sec gal-slide-grid">
						<div class="gal-slide-img">
							<a href="#"><img src="images/g6.jpg" class="img img-fluid" alt=""></a>
						</div>
						<div class="gal-slide-info">

							<a href="#">
								<h4 class="mt-4 mb-0">Julian Alps</h4>
							</a>
							<h6 class="mt-sm-2 mt-1">3Days, 4 Nights Start From <span>$850</span></h6>
						</div>
					</div> -->
				</div>
			</div>
		</div>
	</section>

	<!---holiday---->
	<div class="container">
		<div class="holiday">
			<h3>Danh sách các tours du lịch</h3>
			<?php $sql = "SELECT * from tbltourpackages order by rand() limit 4";
			$query = $dbh->prepare($sql);
			$query->execute();
			$results = $query->fetchAll(PDO::FETCH_OBJ);
			$cnt = 1;
			if ($query->rowCount() > 0) {
				foreach ($results as $result) {	?>
					<div class="rom-btm">
						<div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
							<img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage); ?>" class="img-responsive" alt="">
						</div>
						<div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
							<h4>Tên: <?php echo htmlentities($result->PackageName); ?></h4>
							<h6>Loại hình : <?php echo htmlentities($result->PackageType); ?></h6>
							<p><b>Địa điểm:</b> <?php echo htmlentities($result->PackageLocation); ?></p>
							<p><b>Mô tả</b> <?php echo htmlentities($result->PackageFetures); ?></p>
						</div>
						<div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
							<h5><?php echo htmlentities($result->PackagePrice); ?> VND</h5>
							<a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId); ?>" class="view">Xem</a>
						</div>
						<div class="clearfix"></div>
					</div>

			<?php }
			} ?>
			<div><a href="package-list.php" class="view">View More Packages</a></div>
		</div>
		<div class="clearfix"></div>
	</div>

	<!--- routes ---->
	<div class="routes">
		<div class="container">
			<div class="col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
				<div class="rou-left">
					<a href="#"><i class="glyphicon glyphicon-list-alt"></i></a>
				</div>
				<div class="rou-rgt wow fadeInDown animated" data-wow-delay=".5s">
					<h3>80000</h3>
					<p>Lượt truy cập</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 routes-left">
				<div class="rou-left">
					<a href="#"><i class="fa fa-user"></i></a>
				</div>
				<div class="rou-rgt">
					<h3>19000</h3>
					<p>Khách hàng sử dụng</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-4 routes-left wow fadeInRight animated" data-wow-delay=".5s">
				<div class="rou-left">
					<a href="#"><i class="fa fa-ticket"></i></a>
				</div>
				<div class="rou-rgt">
					<h3>10000</h3>
					<p>Chuyến du lịch đã tổ chức</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>


	<?php include('includes/footer.php'); ?>
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