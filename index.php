
<!-- ======= Modal function for future use======= -->
<?php

                   //    include('admin/include/dbcon.php');
 
                     ///   if (isset($_POST['login'])){

                     //   $username=$_POST['username'];
                       // $password= md5($_POST['password']);

                       // $login_query=mysqli_query($con,"select * from admin where username='$username' and password='$password' and status='Active'");
                       // $count=mysqli_num_rows($login_query);
                       //$row=mysqli_fetch_array($login_query);

                        //if ($count > 0){
                       // session_start();
                      // $_SESSION['id']=$row['admin_id'];

                       // echo "<script>window.location='admin/home.php'</script>";
                        //}else{ ?>
						<!--<script>alert('Wrong username or password'); window.location='index.php'</script>" 
                        <div class="alert alert-danger"><h3 class="blink_text">Access Denied</h3></div>  -->
                       <?php
                      //  }
                      // }
                        ?>
<!-- ======= Modal function for future use ======= -->


<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SGMC</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.3/font/bootstrap-icons.min.css">
    <!--Google Fonts-->
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <link rel="icon" type="image/icon" href="img/logo_sgmc.png">

    <!-- End Bootstrap CSS -->

    <!--Custom Css-->
    <!-- <link rel="stylesheet" href="./CSS1/style.css"> -->
    <!--End Custom Css-->
<style>
    .top{
	color: #009a68;
	position: fixed;
	bottom: 16px;
	right: 32px;
	width: 40px;
	height: 40px;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 32px;
	text-decoration: none;
	opacity: 0;
	pointer-events: none;
	transition: all .4s
}
.top.active{
	bottom: 32px;
	pointer-events: auto;
	opacity: 1;
}

@media only screen and(min-width:768px){
    .dropdown:hover .dropdown-menu{
        display:block;
    }}
</style>


</head>

<body>

   
    <!--Header Start-->
    <header>
        
        <!--Navbar Start-->
        <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
            <div class="container">
                 <a class="navbar-brand" href="index.php"> 
                    <img src="img/logo_sgmc.png" alt="Logo" width="40" height="40" class="d-inline-block align-text-top">
                    <span class="fw-bold  mb-2 mb-lg-0 mb-sm-0" style="color: #06A990;"><h2 class="fw-bold d-inline-block align-text-top" style="color: #027A53;">SGMC</h2></span>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation" style="margin-right:auto; margin-left: auto;">
                    <span class="bi bi-list"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#carouselExampleCaptions" style="font-size:28px">Home</a>
                        </li>
                       
                        <li class="nav-item">
                            <a class="nav-link" href="#about" style="font-size:28px">About</a>
                        </li>
                       

                        <li class="nav-item">
                            <a class="nav-link" href="#Contact" style="font-size:28px">Contact us</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav mb-2 mb-lg-0 action-menu">
                        <li class="nav-item" style="text-decoration: none;">
                            <a class="nav-link ">
                            <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                               <span class="bi bi-person" style="font-size:25px"> Login</span></i>
                            </a></a><ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarDarkDropdownMenuLink">
                            <li><a class="dropdown-item" href="./user/newlogin.php" style="font-size:25px">Doctor / Patient</a></li>
                            <li><a class="dropdown-item" href="admin/admin_login.php" style="font-size:25px">Admin</a></li>
                    </ul>
                    </li>
                    </li>
                    </ul>
                </div>
            </div>
        </nav>
       
    </header>
    <!--Header End-->


    <div id="carouselExampleCaptions" class="carousel carousel-dark slide mb-3" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <video class="video-fluid w-100 h-100 overflow-hidden"autoplay muted
                    src="img/carousel-item/SGMC (0).mp4"
                    class="d-block w-100" alt="...">
                <div class="carousel-caption d-block"></video>
                </div>
            </div>
            <div class="carousel-item">
                <video class="video-fluid w-100 h-100 overflow-hidden"autoplay muted
                    src="img/carousel-item/SGMC (1).mp4"
                    class="d-block w-100" alt="...">
                <div class="carousel-caption d-block"></video>
                </div>
            </div>
            <div class="carousel-item">
            <video class="video-fluid w-100 h-100 overflow-hidden"autoplay muted
                    src="img/carousel-item/SGMC (2).mp4"
                    class="d-block w-100" alt="...">
                <div class="carousel-caption d-block"></video>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>




    <main id="main">

        <!-- ======= About Section ======= -->
        <section id="about" class="about mt-5">
            
            <div class="container-fluid"> 
                <h2 class="h1-responsive font-weight-bold text-center my-2">About Us</h2>
                <!--Section description-->
  
                <div class="row  pt-5 pb-5"  style="margin-left:120px;">

                    <div class="col-lg-5 align-items-stretch video-box"
                        style='background-image: url("img/about_us.png"); background-repeat: no-repeat;' id="home_image">
                    </div>


                    <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch" style="font-size: 26px;">

                        <div class="content">
                            <ul style="list-style-type: none; font-size: 20px">
                            <h3 style="margin-bottom:30px;">Mission</h3>
                                <li style="margin-bottom:60px;"><i class="bx bx-check-double"></i> 
                                    Our mission at San Gabriel Medical Clinic is to provide compassionate, high-quality healthcare tailored to our community's needs. Through excellence, integrity, and innovation, we empower our patients to lead healthier lives while fostering collaboration and inclusivity among our team. With a focus on accessibility and personalized care, we strive to enhance wellness and overall well-being,
                                </li>
                            <h3 style="margin-bottom:30px;">Vision</h3>
                                <li><i class="bx bx-check-double mb-5"></i>
                                   Our vision at San Gabriel Medical Clinic is to be the trusted healthcare partner known for compassionate care, clinical excellence, and innovation. We aim to provide personalized, high-quality healthcare that promotes wellness and empowers individuals to lead fulfilling lives, while serving as a beacon of health and wellness in our community.
                                </li>
                            </ul>
                        </div>

                    </div>

                </div>

            </div>
        </section><!-- End About Section -->
        <br>
        <br>


<!-- ======= Contact us Section ======= -->
        <section id="Contact">
    <div class="container mb-5" style="font-size:22px;"> <!-- Changed from 20px to 22px -->
        <!--Section: Contact v.2-->
        <section class="mb-4">

            <!--Section heading-->
            <h2 class="h1-responsive font-weight-bold text-center my-4" style="font-size: 2.5rem;">Contact Us</h2> <!-- Increased font size -->
            <!--Section description-->
            <p class="text-center w-responsive mx-auto mb-5" style="font-size: 1.2rem;">Do you have any questions? Please do not hesitate
                to contact us directly. Our team will come back to you within
                a matter of hours to help you.</p> <!-- Increased font size -->

            <div class="row">

                <!--Grid column-->
                <div class="col-md-6 mb-md-0 mb-5" style="font-size:22px;"> <!-- Changed from 20px to 22px -->
                    <form id="contact-form" name="contact-form" action="mail.php" method="POST">

                        <!--Grid row-->
                        <div class="row">

                            <!--Grid column-->
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <label for="name" class="">Full Name</label>
                                    <input type="text" id="name" name="name" class="form-control" placeholder="ex. Juan Dela Cruz" style="font-size: 1.2rem;"> <!-- Increased font size -->
                                </div>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-6">
                                <div class="md-form mb-0">
                                    <label for="email" class="">Email</label>
                                    <input type="text" id="email" name="email" class="form-control" placeholder="Enter your email address" style="font-size: 1.2rem;"> <!-- Increased font size -->
                                    
                                </div>
                            </div>
                            <!--Grid column-->

                        </div>
                        <!--Grid row-->

                        <!--Grid row-->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="md-form mb-0">
                                    <label for="subject" class="">Subject</label>
                                    <input type="text" id="subject" name="subject" class="form-control" placeholder="Enter your subject here..." style="font-size: 1.2rem;"> <!-- Increased font size -->
                                
                                </div>
                            </div>
                        </div>
                        <!--Grid row-->

                        <!--Grid row-->
                        <div class="row">

                            <!--Grid column-->
                            <div class="col-md-12">

                                <div class="md-form">
                                    <label for="message">Message</label>
                                    <textarea type="text" id="message" name="message" rows="2" placeholder="Enter your message here..."
                                        class="form-control md-textarea" style="font-size: 1.2rem;"></textarea> <!-- Increased font size -->
                                    
                                </div>

                            </div>
                        </div>
                        <!--Grid row-->

                    </form>
                    <br>
                    <div class="text-center text-md-left">
                        <a class="btn btn-primary" style="font-size:22px;"
                            onclick="document.getElementById('contact-form').submit();">Send</a>
                    </div>

                    <div class="status"></div>
                </div>
                <!--Grid column-->

                <!--Grid column-->
                <div class="col-md-6 text-center">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15463.49584489676!2d120.96082431738279!3d14.318753000000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397d5cc72a6eb43%3A0x55aab49f63eceee7!2sSan%20Gabriel%20Medical%20Clinic!5e0!3m2!1sen!2sph!4v1712238972368!5m2!1sen!2sph" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <!--Grid column-->

            </div>

        </section>
        <!--Section: Contact v.2-->
    </div>
</section>



      <!-- Footer -->
      <footer class="text-center text-lg-start py-4 text-light" style="background:#172c6c; font-size: 1.1rem;">
   
   <!-- Section: Links  -->
   <section class="">
    <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
            <!-- Grid column -->
            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                <!-- Content -->
                <h6 class="text-uppercase fw-bold mb-4 text-center" style="font-size: 1.3rem;">
                    <img src="img/logo_sgmc.png" alt="SGMC Logo" style="width: 40px; height: 40px; margin-right: 10px;">
                    San Gabriel Medical Clinic
                </h6>
                <p style="font-size: 1.15rem; font-weight: bold;">
                    We're located at Blk A-2 Lot 3 Torres Rd, San Simon, Dasmariñas, 4115 Cavite
                </p>
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                <!-- Services -->
                <h6 class="text-uppercase fw-bold mb-4" style="font-size: 1.3rem;">
                    <i class="bi bi-gear me-2"></i>Quicklinks
                </h6>
                <p><a href="#carouselExampleCaptions" class="text-reset" style="font-size: 1.15rem; font-weight: bold;"><i class="bi bi-house-door me-2"></i>Home</a></p>
                <p><a href="#about" class="text-reset" style="font-size: 1.15rem; font-weight: bold;"><i class="bi bi-info-circle me-2"></i>About Us</a></p>
                <p><a href="#Contact" class="text-reset" style="font-size: 1.15rem; font-weight: bold;"><i class="bi bi-envelope me-2"></i>Contact Us</a></p>
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                <!-- Contact -->
                <h6 class="text-uppercase fw-bold mb-4" style="font-size: 1.3rem;">
                    <i class="bi bi-telephone me-2"></i>Contact
                </h6>
                <p style="font-size: 1.15rem; font-weight: bold;">
                    <i class="bi bi-envelope me-3"></i>sgmcmed@gmail.com
                </p>
                <p style="font-size: 1.15rem; font-weight: bold;"><i class="bi bi-telephone me-3"></i>(046) 416 2836</p>
            </div>
            <!-- Grid column -->
        </div>
        <!-- Grid row -->
    </div>
</section>

   <!-- Section: Links  -->

   <a href="#" class="top">
       <i class="bi bi-caret-up-square-fill" style="font-size: 1.5rem;"></i>
   </a>

</footer>




        <!-- Footer -->
        <!-- Option 1: Bootstrap Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous">
 
// <!-- ======= Modal======= -->

// <!-- ======= Modal======= -->
          </script>

</body>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="main.js"></script>
    <script>
		const menuBtn = document.querySelector('.navbar-brand');
		const navlinks = document.querySelector('.navbar-nav');

		menuBtn.addEventListener('click',()=>{
			navlinks.classList.toggle('mobile-menu');
		})
	</script>
        

</html>