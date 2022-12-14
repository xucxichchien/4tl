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
                        <a class="nav-item nav-link "></a>
                        <a href="about.html" class="nav-item nav-link"></a>
                        <a href="registration" class="nav-item nav-link"></a>
                    </div>
                    <a href="index.html" class="navbar-brand mx-5 d-none d-lg-block">
                        <h1 class="m-0 display-4 text-primary"><span class="text-secondary">i</span>Ris</h1>
                    </a>
                    <div class="navbar-nav mr-auto py-0">
                        <a href="registration" class="nav-item nav-link"></a>
                        <a href="registration" class="nav-item nav-link"></a>
                        <a href="registration" class="nav-item nav-link"></a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar End -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Product</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    <div class="container" style='margin-top:20px'>
        <div class="row">
            <div class="col-md-12">
                <h2>Edit Product</h2>
                @if(Session::has('success'))
                <div class="alert alert-success" role="alert">
                    {{Session::get('success')}}
                </div>
                @endif
                <form method="post" action="{{url('update-product')}}">
                    @csrf
                    <input type="hidden" name="id" value="{{$data->id}}">
                    <div class="md-3">
                        <label class="form-label">Name</label>
                        <input type="text" class="form-control" name="prodName" placeholder="Enter product name" value="{{$data->prodName}}">
                        @error('prodName')
                            <div class="alert alert-danger" role="alert">
                                {{$message}}
                            </div>
                        @enderror
                    </div>
                    <div class="md-3">
                        <label class="form-label">Price</label>
                        <input type="text" class="form-control" name="prodPrice" placeholder="Enter product price" value="{{$data->prodPrice}}">
                        @error('prodPrice')
                            <div class="alert alert-danger" role="alert">
                                {{$message}}
                            </div>
                        @enderror
                    </div>
                    <div class="md-3">
                        <label class="form-label">Description</label>
                        <input type="textarea" class="form-control" name="prodDes" value="{{$data->prodDes}}">
                        @error('prodDes')
                            <div class="alert alert-danger" role="alert">
                                {{$message}}
                            </div>
                        @enderror
                    </div>
                    <div class="md-3">
                        <label class="form-label">Brand</label>
                        <select name="brandID">

                            <?php 
                                //php to display category from database
                                //1. SQL to get all active categories from database
                                $sql = "SELECT * FROM brands ";

                                //execute
                                $res = mysqli_query($conn, $sql);
                                //count rows to check whether we have categories or not
                                $count = mysqli_num_rows($res);

                                if($count>0)
                                {
                                    //have categories
                                    while($row=mysqli_fetch_assoc($res))
                                    {
                                        //get data of cate
                                        $id = $row['brandID'];
                                        $name = $row['brandName'];
                                        ?>
                                        
                                        <option value="<?php echo $id;?>"><?php echo $name;?></option>

                                        <?php
                                    }
                                }
                                else
                                {
                                    //no category
                                    ?>
                                      <option value="0">No brand found</option>  
                                    <?php
                                }


                                //2.display on drop-down
                            ?>
                        </select>
                        @error('brandID')
                            <div class="alert alert-danger" role="alert">
                                {{$message}}
                            </div>
                        @enderror
                    </div>
                    <div class="md-3">
                        <label class="form-label">Category</label>
                        <select name="categoryID">

                            <?php 
                                //php to display category from database
                                //1. SQL to get all active categories from database
                                $sql = "SELECT * FROM categories ";

                                //execute
                                $res1 = mysqli_query($conn, $sql);
                                //count rows to check whether we have categories or not
                                $count = mysqli_num_rows($res);

                                if($count>0)
                                {
                                    //have categories
                                    while($row=mysqli_fetch_assoc($res1))
                                    {
                                        //get data of cate
                                        $id = $row['categoryID'];
                                        $name = $row['categoryName'];
                                        ?>
                                        
                                        <option value="<?php echo $id;?>"><?php echo $name;?></option>

                                        <?php
                                    }
                                }
                                else
                                {
                                    //no category
                                    ?>
                                      <option value="0">No brand found</option>  
                                    <?php
                                }


                                //2.display on drop-down
                            ?>
                        </select>
                        @error('categoryID')
                            <div class="alert alert-danger" role="alert">
                                {{$message}}
                            </div>
                        @enderror
                    </div>
                    <div class="md-3">
                        <label class="form-label">Image</label>
                        <input type="file" class="form-control" name="prodImage" value="{{$data->prodImage}}">
                        @error('prodImage')
                            <div class="alert alert-danger" role="alert">
                                {{$message}}
                            </div>
                        @enderror
                    </div>
                    <br>
                    <button type="submit" class="btn btn-primary">Submit</button>
                    <a href="{{url('product-list')}}" class="btn btn-danger">Back</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>