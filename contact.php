<?php
session_start();
error_reporting(0);
include('includes/config.php');

if (isset($_POST['submit1'])) {
    $fname = $_POST['fname'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $description = $_POST['description'];
    $sql = "INSERT INTO  tblenquiry(FullName,EmailId,Subject,Description) VALUES(:fname,:email,:subject,:description)";
    $query = $dbh->prepare($sql);
    $query->bindParam(':fname', $fname, PDO::PARAM_STR);
    $query->bindParam(':email', $email, PDO::PARAM_STR);
    $query->bindParam(':subject', $subject, PDO::PARAM_STR);
    $query->bindParam(':description', $description, PDO::PARAM_STR);
    $query->execute();
    $lastInsertId = $dbh->lastInsertId();
    if ($lastInsertId) {
        $msg = "Thông tin đã được gửi";
    } else {
        $error = "Thông tin chưa được gửi đi";
    }
}

?>
<!doctype html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>TMS | Tourism Management System</title>
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
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
    <!--//end-animate-->
    <link rel="stylesheet" href="css/style-starter.css">
    <link href="//fonts.googleapis.com/css?family=Oswald:300,400,500,600&display=swap" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900&display=swap" rel="stylesheet">

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
    <?php include('includes/header.php'); ?>
    <div class="banner">
        <div class="container">
            <h1 class="wow zoomIn animated animated" data-wow-delay="0s" style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"> HN TRAVEL - Contact</h1>
        </div>
    </div>
    <!-- contacts -->
    <section class="w3l-contacts-8">
        <div class="contacts-9 section-gap py-5">
            <div class="container py-lg-5">
                <div class="row top-map">
                    <div class="col-lg-6 partners">
                        <div class="cont-details">
                            <h3 class="hny-title mb-0">Get in <span>touch</span></h5>
                                <p class="mb-5">We're ready to lead you into the future with Business Services</p>
                                <p class="margin-top"><span class="texthny">Call Us : </span> <a href="tel:+(21) 255 999 8899">+(21)
                                        255 999 8899</a></p>
                                <p> <span class="texthny">Email : </span> <a href="mailto:info@example.com">
                                        info@example.com</a></p>
                                <p class="margin-top"> 433 California St, Suite 300
                                    San Francisco, CA 94104, USA </p>
                        </div>
                        <div class="hours">
                            <h3 class="hny-title">Working <span>Hours</span></h5>
                                <h6>Business Service:</h6>
                                <p> Monday to Friday 8.00 am - 6.00 pm</p>
                                <p> Saturday and Sunday - Closed</p>
                                <h6 class="margin-top">Customer support:</h6>
                                <p> Monday to Friday 8.00 am - 6.00 pm</p>
                                <p> Saturday 10.00 am - 4.00 pm</p>
                                <p> Sunday - Closed</p>
                        </div>
                    </div>
                    <div class="col-lg-6 map">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.738711613766!2d108.2510487152692!3d15.975015746198197!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142108997dc971f%3A0x1295cb3d313469c9!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiB2w6AgVHJ1eeG7gW4gdGjDtG5nIFZp4buHdCAtIEjDoG4!5e0!3m2!1svi!2s!4v1632839603165!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy">
                            frameborder="0" style="border:0" allowfullscreen=""></iframe>
                    </div>
                </div>
            </div>
        </div>
        <section class="w3l-contact-section-form" style="margin-top: -100px;">
            <div class="contact-sec-inner py-5">
                <div class="container py-lg-5">
                    <div class="contact-form-mainv">
                        <span class="sub-title">Contact Us</span>
                        <h3 class="hny-title">Keep In Touch With Us.</h3>
                        <p class="para-contact mb-lg-5 mb-4">Welcome to leave your contact info and we will be in touch
                            shortly
                        </p>
                        <?php if ($error) { ?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } else if ($msg) { ?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
                        <form method="post" name="enquiry">
                            <div class="row">
                                <div class="col-lg-4 form-group">
                                    <label for="w3lName">Your Name</label>
                                    <input type="text" name="fname" id="w3lName">
                                </div>
                                <div class="col-lg-4 form-group">
                                    <label for="w3lSender">Your Email ID</label>
                                    <input type="text" name="email" id="w3lSender">
                                </div>
                                <div class="col-lg-4 form-group">
                                    <label for="w3lSubject">Subject</label>
                                    <input type="text" name="subject" id="w3lSubject">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="w3lSubject">Message</label>
                                <textarea name="description" placeholder="" required=""></textarea>
                            </div>
                            <div class="form-submit text-right mt-4">
                                <button type="submit" class="btn submit" name="submit1">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </section>
    <!-- //contacts -->

</body>

</html>

<script>
    // optional
    $('#customerhnyCarousel').carousel({
        interval: 5000
    });
</script>
<!-- disable body scroll which navbar is in active -->

<script>
    $(function() {
        $('.navbar-toggler').click(function() {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->
<script src="assets/js/bootstrap.min.js"></script>

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