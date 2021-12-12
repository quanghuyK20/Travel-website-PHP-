<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
    header('location:index.php');
} else {
    $pvid = intval($_GET['pvid']);
    if (isset($_POST['submit'])) {
        $iname = $_POST['imagename'];
        $itype = $_POST['viewinfor'];
        $itype1 = $_POST['viewinfor1'];
        $itype2 = $_POST['viewinfor2'];
        $itype3 = $_POST['viewinfor3'];
        $vimage = $_FILES["viewimage"]["name"];
        move_uploaded_file($_FILES["packageimage"]["tmp_name"], "pacakgeimages/" . $_FILES["packageimage"]["name"]);
        $sql = "update tblview set imagename=:iname, viewinfor=:itype, mt1=:itype1, mt2=:itype2, mt3=:itype3 where vid=:pvid";
        $query = $dbh->prepare($sql);
        $query->bindParam(':iname', $iname, PDO::PARAM_STR);
        $query->bindParam(':itype', $itype, PDO::PARAM_STR);
        $query->bindParam(':itype1', $itype1, PDO::PARAM_STR);
        $query->bindParam(':itype2', $itype2, PDO::PARAM_STR);
        $query->bindParam(':itype3', $itype3, PDO::PARAM_STR);
        $query->bindParam(':pvid', $pvid, PDO::PARAM_STR);
        $query->execute();
        $msg = "Package Updated Successfully";
    }

?>
    <!DOCTYPE HTML>
    <html>

    <head>
        <title>TMS | Admin Package Creation</title>
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
                    <li class="breadcrumb-item"><a href="manage-view.php">Manage View</a><i class="fa fa-angle-right"></i>Update View </li>
                </ol>
                <!--grid-->
                <div class="grid-form">

                    <!---->
                    <div class="grid-form1">
                        <h3>Update View</h3>
                        <?php if ($error) { ?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } else if ($msg) { ?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
                        <div class="tab-content">
                            <div class="tab-pane active" id="horizontal-form">

                                <?php
                                $pvid = intval($_GET['pvid']);
                                $sql = "SELECT * from tblview where vid=:pvid";
                                $query = $dbh->prepare($sql);
                                $query->bindParam(':pvid', $pvid, PDO::PARAM_STR);
                                $query->execute();
                                $results = $query->fetchAll(PDO::FETCH_OBJ);
                                $cnt = 1;
                                if ($query->rowCount() > 0) {
                                    foreach ($results as $result) {    ?>

                                        <form class="form-horizontal" name="package" method="post" enctype="multipart/form-data">
                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Image name</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" name="imagename" id="imagename" placeholder="Create Package" value="<?php echo htmlentities($result->imagename); ?>" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">View Infor</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" name="viewinfor" id="viewinfor" placeholder=" Nhập thông tin địa điểm" value="<?php echo htmlentities($result->viewinfor); ?>" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Mô tả 1</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" name="viewinfor1" id="viewinfor1" placeholder="Nhập mô tả" value="<?php echo htmlentities($result->mt1); ?>" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Mô tả 2</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" name="viewinfor2" id="viewinfor2" placeholder="Nhập mô tả" value="<?php echo htmlentities($result->mt2); ?>" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Mô tả 3</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control1" name="viewinfor3" id="viewinfor3" placeholder="Nhập mô tả" value="<?php echo htmlentities($result->mt3); ?>" required>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="focusedinput" class="col-sm-2 control-label">Chọn ảnh</label>
                                                <div class="col-sm-8">
                                                    <img src="pacakgeimages/<?php echo htmlentities($result->viewimage); ?>" width="200">&nbsp;&nbsp;&nbsp;<a href="change_img_view.php?imgid=<?php echo htmlentities($result->vid); ?>">Change Image</a>
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