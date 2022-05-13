<?php
    $this->load->view('depan/v_header')
?>
<?php
$title=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
?>

    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li>Portfolio Details</li>
                </ol>
                <h2>Portfolio Details</h2>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ======= Portfolio Details Section ======= -->
        <section id="portfolio-details" class="portfolio-details">
            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-8">
                        <div class="portfolio-details-slider swiper">
                            <div class="swiper-wrapper align-items-center">

                                <div class="swiper-slide">
                                    <img src="<?php echo base_url().'/assets/images/galery/'.$image;?>" alt="">
                                </div>
                                <!-- 
                                <div class="swiper-slide">
                                    <img src="assets/img/portfolio/portfolio-2.jpg" alt="">
                                </div>

                                <div class="swiper-slide">
                                    <img src="assets/img/portfolio/portfolio-3.jpg" alt="">
                                </div> -->

                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="portfolio-info">
                            <h3>Project information</h3>
                            <ul>
                                <li><strong>Category</strong>: <?php echo $album;?></li>
                                <li><strong>Client</strong>: <?php echo $client;?></li>
                                <li><strong>Project date</strong>: <?php echo $tanggal;?></li>
                                <li><strong>Project URL</strong>: <a href="#"><?php echo $url;?></a></li>
                            </ul>
                        </div>
                        <div class="portfolio-description">
                            <h2><?php echo $judul;?></h2>
                            <p>
                               <?php echo $portfolio;?>
                            </p>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <!-- End Portfolio Details Section -->

    </main>
    <!-- End #main -->

    <?php
        $this->load->view('depan/footer')
    ?>

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/aos/aos.js"></script>
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/php-email-form/validate.js"></script>
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/purecounter/purecounter.js"></script>
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/vendor/glightbox/js/glightbox.min.js"></script>

    <!-- Template Main JS File -->
    <script src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/js/main.js"></script>

</body>

</html>