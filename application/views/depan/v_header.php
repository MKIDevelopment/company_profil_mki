<?php $title = $this->db->query("SELECT * FROM tbl_identitas")->row_array(); ?>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Multi Kreatif Indonesia</title>

        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="description">
        <meta content="" name="keywords">

        <!-- Favicons -->
        <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/bpn/img/mki.png'?>">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
        <link href="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <link href="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/css/style.css" rel="stylesheet">

        <?php
            function limit_words($string, $word_limit){
                $words = explode(" ",$string);
                return implode(" ",array_splice($words,0,$word_limit));
            }
        ?>
    </head>

<body>
    <!-- ======= Header ======= -->
    <header id="header" class="header fixed-top">
        <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
            <a href="index.html" class="logo d-flex align-items-center">
                <?php $b = $this->db->query("SELECT * FROM tbl_identitas")->row_array(); ?>
                <img src="<?php echo base_url().'assets/home/logo/'.$b['identitas_logo'];?>" style="width: 45px;" alt="">
                <span>MKI</span>
            </a>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto" href="#home">Home</a></li>
                    <li><a class="nav-link scrollto" href="#about">About</a></li>
                    <li><a class="nav-link scrollto" href="#services">Services</a></li>
                    <li><a class="nav-link scrollto" href="#testimonials">Review</a></li>
                    <!--<li><a class="nav-link scrollto" href="#portfolio">Portfolio</a></li>-->                    
                    <!-- <li><a href="<?php echo base_url();?>blog">Blog</a></li> -->
                    <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->
        </div>
    </header>
    <!-- End Header -->