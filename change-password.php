<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (strlen($_SESSION['login']) == 0) {
    header('location:index.php');
} else {
    if (isset($_POST['submit5'])) {
        $password = md5($_POST['password']);
        $newpassword = md5($_POST['newpassword']);
        $email = $_SESSION['login'];
        $sql = "SELECT Password FROM tblusers WHERE EmailId=:email and Password=:password";
        $query = $dbh->prepare($sql);
        $query->bindParam(':email', $email, PDO::PARAM_STR);
        $query->bindParam(':password', $password, PDO::PARAM_STR);
        $query->execute();
        $results = $query->fetchAll(PDO::FETCH_OBJ);
        if ($query->rowCount() > 0) {
            $con = "update tblusers set Password=:newpassword where EmailId=:email";
            $chngpwd1 = $dbh->prepare($con);
            $chngpwd1->bindParam(':email', $email, PDO::PARAM_STR);
            $chngpwd1->bindParam(':newpassword', $newpassword, PDO::PARAM_STR);
            $chngpwd1->execute();
            $msg = "Mật khẩu của bạn đã thay đổi thành công";
        } else {
            $error = "Mật khẩu hiện tại của bạn không đung";
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
        <script type="applijewelleryion/x-javascript">
            addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
    </script>
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

        <!-- css files -->
        <link rel="stylesheet" href="css/stylelog.css" type="text/css" media="all" /> <!-- Style-CSS -->
        <link rel="stylesheet" href="css/font-awesomelog.css"> <!-- Font-Awesome-Icons-CSS -->
        <link href="//fonts.googleapis.com/css?family=Noto+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,devanagari,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">


        <!--login-->
        <meta name="keywords" content="Account Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
        <script type="application/x-javascript">
            addEventListener("load", function() {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>

        <script type="text/javascript">
            function valid() {
                if (document.chngpwd.newpassword.value != document.chngpwd.confirmpassword.value) {
                    alert("New Password and Confirm Password Field do not match  !!");
                    document.chngpwd.confirmpassword.focus();
                    return false;
                }
                return true;
            }
        </script>
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
        <!-- top-header -->
        <?php include('includes/header.php'); ?>
            <!--- privacy ---->
            <div class="privacy">
                <div class="w3ls-header">
                    <h1>Quên mật khẩu</h1>
                    <div class="header-main">
                        <h2>Đổi mật khẩu</h2>
                        <div class="header-bottom">
                            <div class="header-right w3agile">
                                <div class="header-left-bottom agileinfo">
                                    <form name="chngpwd" method="post" onSubmit="return valid();">
                                        <?php if ($error) { ?><div class="errorWrap"><strong>Lỗi</strong>:<?php echo htmlentities($error); ?>
                                            </div><?php } else if ($msg) { ?><div class="succWrap"><strong>Thành công</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
                                        <div class="icon1">
                                            <i class="fa fa-lock" aria-hidden="true"></i>
                                            <input type="password" name="password" id="exampleInputPassword1" placeholder="Mật khẩu cũ" required="" />
                                        </div>
                                        <div class="icon1">
                                            <i class="fa fa-lock" aria-hidden="true"></i>
                                            <input type="password" name="newpassword" id="newpassword" placeholder="Mật khẩu mới" required="" />
                                        </div>
                                        <div class="icon1">
                                            <i class="fa fa-lock" aria-hidden="true"></i>
                                            <input type="password" name="confirmpassword" id="confirmpassword" placeholder="Nhập lại mật khẩu mới" required="" />
                                        </div>
                                        <div class="bottom">
                                            <input type="submit" name="submit50" value="Đặt lại" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--header end here-->
            </div>
        </div>

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