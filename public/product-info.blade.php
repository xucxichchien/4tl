<?php

session_start();
define('SITEURL', 'http://localhost/bunbobae/User/');

 define('LOCALHOST', 'localhost');
 define('DB_USERNAME', 'root');
 define('DB_PASSWORD', '');
 define('DB_NAME', 'lara0905a');
 $conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error()); //Database connection
 $db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error());

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Iris eau de Parfum</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid bg-primary py-3 d-none d-md-block">
        <div class="container">
            <div class="row">
                <div class="col-md-6 text-center text-lg-left mb-2 mb-lg-0">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark pr-3" href="">FAQs</a>
                        <span class="text-dark">|</span>
                        <a class="text-dark px-3" href="">Help</a>
                        <span class="text-dark">|</span>
                        <a class="text-dark pl-3" href="">Support</a>
                    </div>
                </div>
                <div class="col-md-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-dark px-3" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-3" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-3" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-3" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-dark pl-3" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid position-relative nav-bar p-0">
        <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
            <nav class="navbar navbar-expand-lg bg-white navbar-light shadow p-lg-0">
                <a href="index.html" class="navbar-brand d-block d-lg-none">
                    <h1 class="m-0 display-4 text-primary"><span class="text-secondary">Iris </span>eau de Parfum</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="index.html" class="nav-item nav-link">Home</a>
                        <a href="about.html" class="nav-item nav-link">About</a>
                        <a href="product.blade.php" class="nav-item nav-link">Product</a>
                    </div>
                    <a href="index.html" class="navbar-brand mx-5 d-none d-lg-block">
                        <h1 class="m-0 display-4 text-primary"><span class="text-secondary">Iris </span></h1>
                    </a>
                    <div class="navbar-nav mr-auto py-0">
                        <a href="service.html" class="nav-item nav-link">Service</a>
                        <a href="gallery.html" class="nav-item nav-link">Gallery</a>
                        <a href="index.html" class="nav-item nav-link">Log out</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->
        <!-- Header Start -->
        <div class="jumbotron jumbotron-fluid page-header" style="margin-bottom: 90px;">
            <div class="container text-center py-5">
                <h1 class="text-white display-3 mt-lg-5">Product</h1>
                <div class="d-inline-flex align-items-center text-white">
                    <p class="m-0"><a class="text-white" href="">Home</a></p>
                    <i class="fa fa-circle px-3"></i>
                    <p class="m-0">Product</p>
                </div>
            </div>
        </div>
        <!-- Header End -->
<head>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<section>
 
    <?php
    //check whether id is passed or not
    if(isset($_GET['id']))
    {
         //category id is set and get id
         $id = $_GET['id'];
 
         //get cate title based on id
         $sql = "SELECT prodName FROM parfums WHERE id=$id";
 
         $res=mysqli_query($conn, $sql);
 
         //get the value from databae
         $row = mysqli_fetch_assoc($res);
         //get the title
         $prodName = $row['prodName'];
    }
    else
    {
        //cate not pass
        //redirect home
        header('location: index.html ');
    }
    ?>
   
 
 
     <!-- game MEnu Section Starts Here -->
            <?php 
 
            //query to get games based on selected cate
            $sql2 = "SELECT *FROM parfums WHERE id=$id";

            //execute
            $res2 = mysqli_query($conn, $sql2);

            //count rows
            $count2 = mysqli_num_rows($res2);

            //check games available or not
            if($count2>0)
            {
                //game available
                while($row2=mysqli_fetch_assoc($res2))
                {
                    $title = $row2['prodName'];
                    $price = $row2['prodPrice'];
                    $description = $row2['prodDes'];
                    $image_name = $row2['prodImage'];
                    ?>
<div class="container-fluid py-5">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-7">
                <h1 class="section-title position-relative text-center mb-5"><?php echo $title; ?></h1>
                <h1 class=" position-relative text-center mb-5">$<?php echo $price; ?></h1>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4" style="min-height: 400px;">
                <div class="position-relative h-100 rounded overflow-hidden">
                    <img class="position-absolute w-100 h-100" src="../images/<?php echo $image_name; ?>" style="object-fit: cover;">
                </div>
            </div>
            <div class="col-lg-4 py-5">
                <h4 class="font-weight-bold mb-3">Description</h4>
                <p><?php echo $description; ?> </p>
                <a href="#" class="btn btn-primary">Order Now</a>
            </div>
        </div>
    </div>
</div>

                    <?php
                }
            }
            else
            {
                //game not available
                echo "<div class='error'>Game is not available</div>";
            }
        ?>    
        <div class="clearfix"></div>
    </div>
        </div>
        
    </div>

    
 
            
      <!-- Footer Start -->
    <div class="container-fluid footer bg-light py-5" style="margin-top: 90px;">
        <div class="container text-center py-5">
            <div class="row">
                <div class="col-12 mb-4">
                    <a href="index.html" class="navbar-brand m-0">
                        <h1 class="m-0 mt-n2 display-4 text-primary"><span class="text-secondary">Iris</span></h1>
                    </a>
                </div>
                <div class="col-12 mb-4">
                    <a class="btn btn-outline-secondary btn-social mr-2" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-secondary btn-social mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-secondary btn-social mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-outline-secondary btn-social" href="#"><i class="fab fa-instagram"></i></a>
                </div>
                <div class="col-12 mt-2 mb-4">
                    <div class="row">
                        <div class="col-sm-6 text-center text-sm-right border-right mb-3 mb-sm-0">
                            <h5 class="font-weight-bold mb-2">Get In Touch</h5>
                            <p class="mb-2">123 Street, New York, USA</p>
                            <p class="mb-0">+012 345 67890</p>
                        </div>
                        <div class="col-sm-6 text-center text-sm-left">
                            <h5 class="font-weight-bold mb-2">Opening Hours</h5>
                            <p class="mb-2">Mon – Sat, 8AM – 5PM</p>
                            <p class="mb-0">Sunday: Closed</p>
                        </div>
                    </div>
                </div>
                <div class="col-12">
                    <p class="m-0">&copy; <a href="#">Domain</a>. All Rights Reserved. Designed by <a href="https://htmlcodex.com">HTML Codex</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-secondary px-2 back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>

 