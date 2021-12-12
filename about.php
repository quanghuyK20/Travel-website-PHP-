<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Nhân Huy Travel</title>
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
    <!-- Template CSS -->
    <link rel="stylesheet" href="css/style-starter.css">
    <!-- Template CSS -->
    <link href="//fonts.googleapis.com/css?family=Oswald:300,400,500,600&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900&display=swap" rel="stylesheet">
    <!-- Template CSS -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body>
    <?php include('includes/header.php'); ?>
    <div class="banner">
        <div class="container">
            <h1 class="wow zoomIn animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> Về Nhân Huy Group</h1>
        </div>
    </div>

    <section class="w3l-specification-6">
        <!-- /specification-6-->
        <div class="specification-6-mian py-5">
            <div class="container py-lg-5">
                <div class="row story-6-grids text-left">
                    <div class="col-lg-7 story-gd pl-lg-4">
                        <div class="row story-info-content mt-md-5 mt-4">
                            <?php $sql = "SELECT image, idea, maincontent from tblabout";
                            $query = $dbh->prepare($sql);
                            $query->execute();
                            $results = $query->fetchAll(PDO::FETCH_OBJ);
                            $cnt = 1;
                            if ($query->rowCount() > 0) {
                                foreach ($results as $result) {    ?>
                                    <div class="col-md-6 story-info" style="text-align: center;">
                                        <h5> <a href="#"><?php echo htmlentities($result->idea); ?></a></h5>
                                        <p><?php echo htmlentities($result->maincontent); ?>
                                        </p>
                                        <img src="admin/pacakgeimages/<?php echo htmlentities($result->image); ?>" class="img-fluid" alt="/">
                                    </div>
                            <?php }
                            } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!--/team-sec-->
    <section class="w3l-team-main">
        <div class="team py-5">
            <div class="container py-lg-5">
                <h3 class="hny-title text-center">
                    Meet the <span>Team</span></h3>
                <div class="row team-row mt-5">
                    <div class="col-lg-4 col-sm-6 mb-lg-0 mb-4 team-wrapper position-relative">
                        <a href="#"><img src="images/1.jpg" class="team_member img-fluid" alt="Team Member"></a>
                        <div class="team_info mt-3 position-absolute" >
                            <!-- <h3><a href="#" class="team_name" >Suzan Lois</a></h3>
                            <span class="team_role">Founder & CEO</span> -->
                        </div>
                    </div>
                    <!-- end team member -->
                    <div class="col-lg-4 col-sm-6 mb-lg-0 mb-4 team-wrapper position-relative">
                        <a href="#"><img src="images/1.jpg" class="team_member img-fluid" alt="Team Member"></a>
                        <div class="team_info mt-3 position-absolute">
                            <!-- <h3><a href="#" class="team_name">Suzan Kin</a></h3>
                            <span class="team_role">Designer</span> -->
                        </div>
                    </div>
                    <!-- end team member -->
                    <div class="col-lg-4 col-sm-6 team-wrapper position-relative">
                        <a href="#"><img src="images/1.jpg" class="team_member img-fluid" alt="Team Member"></a>
                        <div class="team_info mt-3 position-absolute">
                            <!-- <h3><a href="#" class="team_name">Kin Lois</a></h3>
                            <span class="team_role">Marketing</span> -->
                        </div>
                    </div>
                    <!-- end team member -->
                </div>
            </div>
    </section>
    <!--//team-sec-->
</body>

</html>

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