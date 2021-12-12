<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (strlen($_SESSION['login']) == 0) {
	header('location:index.php');
} else {
	if (isset($_REQUEST['bkid'])) {
		$bid = intval($_GET['bkid']);
		$email = $_SESSION['login'];
		$sql = "SELECT FromDate FROM tblbooking WHERE UserEmail=:email and BookingId=:bid";
		$query = $dbh->prepare($sql);
		$query->bindParam(':email', $email, PDO::PARAM_STR);
		$query->bindParam(':bid', $bid, PDO::PARAM_STR);
		$query->execute();
		$results = $query->fetchAll(PDO::FETCH_OBJ);
		if ($query->rowCount() > 0) {
			foreach ($results as $result) {
				$fdate = $result->FromDate;

				$a = explode("/", $fdate);
				$val = array_reverse($a);
				$mydate = implode("/", $val);
				$cdate = date('Y/m/d');
				$date1 = date_create("$cdate");
				$date2 = date_create("$fdate");
				$diff = date_diff($date1, $date2);
				echo $df = $diff->format("%a");
				if ($df > 1) {
					$status = 2;
					$cancelby = 'u';
					$sql = "UPDATE tblbooking SET status=:status,CancelledBy=:cancelby WHERE UserEmail=:email and BookingId=:bid";
					$query = $dbh->prepare($sql);
					$query->bindParam(':status', $status, PDO::PARAM_STR);
					$query->bindParam(':cancelby', $cancelby, PDO::PARAM_STR);
					$query->bindParam(':email', $email, PDO::PARAM_STR);
					$query->bindParam(':bid', $bid, PDO::PARAM_STR);
					$query->execute();

					$msg = "Đã hủy thành công";
				} else {
					$error = " Bạn không thể hủy đặt chỗ trước 24 giờ";
				}
			}
		}
	}

?>
	<!DOCTYPE HTML>
	<html>

	<head>
		<title>Nhân Huy Travel</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Tourism Management System In PHP" />
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


			.header5 {
				background-color: #3F84B1;
				color: white;
				font-size: 1.5em;
				padding: 1rem;
				text-align: center;
				text-transform: uppercase;
			}

			img {
				border-radius: 50%;
				height: 60px;
				width: 60px;
			}

			.table-users {
				border: 1px solid #327a81;
				border-radius: 10px;
				box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
				max-width: calc(100% - 2em);
				margin: 1em auto;
				overflow: hidden;
				width: 1080px;
			}

			table {
				width: 100%;
			}

			table td,
			table th {
				color: #2b686e;
				padding: 10px;
			}

			table td {
				text-align: center;
				vertical-align: middle;
			}

			table td:last-child {
				font-size: 0.95em;
				line-height: 1.4;
				text-align: left;
			}

			table th {
				background-color: #daeff1;
				font-weight: 300;
			}

			table tr:nth-child(2n) {
				background-color: white;
			}

			table tr:nth-child(2n+1) {
				background-color: #edf7f8;
			}

			@media screen and (max-width: 700px) {

				table,
				tr,
				td {
					display: block;
				}

				td:first-child {
					position: absolute;
					top: 50%;
					transform: translateY(-50%);
					width: 100px;
				}

				td:not(:first-child) {
					clear: both;
					margin-left: 100px;
					padding: 4px 20px 4px 90px;
					position: relative;
					text-align: left;
				}

				td:not(:first-child):before {
					color: #91ced4;
					content: "";
					display: block;
					left: 0;
					position: absolute;
				}

				td:nth-child(2):before {
					content: "Name:";
				}

				td:nth-child(3):before {
					content: "Email:";
				}

				td:nth-child(4):before {
					content: "Phone:";
				}

				td:nth-child(5):before {
					content: "Comments:";
				}

				tr {
					padding: 10px 0;
					position: relative;
				}

				tr:first-child {
					display: none;
				}
			}

			@media screen and (max-width: 500px) {
				.header {
					background-color: transparent;
					color: white;
					font-size: 2em;
					font-weight: 700;
					padding: 0;
					text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
				}

				img {
					border: 3px solid;
					border-color: #daeff1;
					height: 100px;
					margin: 0.5rem 0;
					width: 100px;
				}

				td:first-child {
					background-color: #c8e7ea;
					border-bottom: 1px solid #91ced4;
					border-radius: 10px 10px 0 0;
					position: relative;
					top: 0;
					transform: translateY(0);
					width: 100%;
				}

				td:not(:first-child) {
					margin: 0;
					padding: 5px 1em;
					width: 100%;
				}

				td:not(:first-child):before {
					font-size: 0.8em;
					padding-top: 0.3em;
					position: relative;
				}

				td:last-child {
					padding-bottom: 1rem !important;
				}

				tr {
					background-color: white !important;
					border: 1px solid #6cbec6;
					border-radius: 10px;
					box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
					margin: 0.5rem 0;
					padding: 0;
				}

				.table-users {
					border: none;
					box-shadow: none;
					overflow: visible;
				}
			}
		</style>
	</head>

	<body>
		<!-- top-header -->
		<div class="top-header">
			<?php include('includes/header.php'); ?>
			<div class="banner-1 ">
				<div class="container">
					<h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;">Nhân Huy Travel</h1>
				</div>
			</div>
			<!--- /banner-1 ---->
			<!--- privacy ---->
			<div class="privacy">
				<div class="container">
					<!-- <h3 class="wow fadeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">My Tour History</h3> -->
					<form name="chngpwd" method="post" onSubmit="return valid();">
						<?php if ($error) { ?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } else if ($msg) { ?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
						<div class="table-users">
							<div class="header5">Tour đã đặt</div>

							<table cellspacing="0">
								<tr align="center">
									<th>#</th>
									<th>Mã Tour</th>
									<th>Tên</th>
									<th>Từ</th>
									<th>Đến</th>
									<th>Lưu ý</th>
									<th>Tình trạng</th>
									<th>Ngày đặt</th>
									<th>Thao tác</th>
								</tr>
								<?php
								$uemail = $_SESSION['login'];;
								$sql = "SELECT tblbooking.BookingId as bookid,tblbooking.PackageId as pkgid,tbltourpackages.PackageName as packagename,tblbooking.FromDate as fromdate,tblbooking.ToDate as todate,tblbooking.Comment as comment,tblbooking.status as status,tblbooking.RegDate as regdate,tblbooking.CancelledBy as cancelby,tblbooking.UpdationDate as upddate from tblbooking join tbltourpackages on tbltourpackages.PackageId=tblbooking.PackageId where UserEmail=:uemail";
								$query = $dbh->prepare($sql);
								$query->bindParam(':uemail', $uemail, PDO::PARAM_STR);
								$query->execute();
								$results = $query->fetchAll(PDO::FETCH_OBJ);
								$cnt = 1;
								if ($query->rowCount() > 0) {
									foreach ($results as $result) {	?>
										<tr align="center">
											<td><?php echo htmlentities($cnt); ?></td>
											<td>#BK<?php echo htmlentities($result->bookid); ?></td>
											<td><a href="package-details.php?pkgid=<?php echo htmlentities($result->pkgid); ?>"><?php echo htmlentities($result->packagename); ?></a></td>
											<td><?php echo htmlentities($result->fromdate); ?></td>
											<td><?php echo htmlentities($result->todate); ?></td>
											<td><?php echo htmlentities($result->comment); ?></td>
											<td><?php if ($result->status == 0) {
													echo "Đang xử lý";
												}
												if ($result->status == 1) {
													echo "Đã duyệt";
												}
												if ($result->status == 2 and  $result->cancelby == 'u') {
													echo "Đã hủy bởi " . $result->upddate;
												}
												if ($result->status == 2 and $result->cancelby == 'a') {
													echo "Đã hủy bởi công ty " . $result->upddate;
												}
												?></td>
											<td><?php echo htmlentities($result->regdate); ?></td>
											<?php if ($result->status == 2) {
											?><td>Cancelled</td>
											<?php } else { ?>
												<td><a href="tour-history.php?bkid=<?php echo htmlentities($result->bookid); ?>" onclick="return confirm('Bạn muốn hủy đặt Tour')">Hủy</a></td>
											<?php } ?>
										</tr>
								<?php $cnt = $cnt + 1;
									}
								} ?>
							</table>
						</div>
					</form>
				</div>
			</div>
			<!--- /privacy ---->
			<!--- footer-top ---->
			<!--- /footer-top ---->
			<?php include('includes/footer.php'); ?>
			<!-- signup -->
			<?php include('includes/signup.php'); ?>
			<!-- //signu -->
			<!-- signin -->
			<?php include('includes/signin.php'); ?>
			<!-- //signin -->
			<!-- write us -->
			<?php include('includes/write-us.php'); ?>
	</body>

	</html>
<?php } ?>