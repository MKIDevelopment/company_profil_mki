<?php
    $this->load->view('depan/v_header')
?>

    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li>Blog</li>
                </ol>
                <h2>Blog</h2>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ======= Blog Section ======= -->
        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up">

                <div class="row">
                
                        <div class="col-lg-8 entries">
                        <?php echo $this->session->flashdata('msg');?>
                            <?php foreach ($data->result() as $row) : ?>
                            <article class="entry">

                                <div class="entry-img">
                                    <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" alt="" class="img-fluid">
                                </div>

                                <h2 class="entry-title">
                                    <a href=<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo $row->tulisan_judul;?></a>
                                </h2>

                                <div class="entry-meta">
                                    <ul>
                                        <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html"><?php echo $row->tulisan_author;?></a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01"><?php echo $row->tanggal;?></time></a></li>
                                        <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
                                    </ul>
                                </div>

                                <div class="entry-content">
                                    <p>
                                    <?php echo limit_words($row->tulisan_isi,30).'.....';?>
                                    </p>
                                    <div class="read-more">
                                        <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>">Read More</a>
                                    </div>
                                </div>

                            </article>
                            <!-- End blog entry -->

                             <!-- <div class="blog-pagination">

                                 <ul class="justify-content-center">
                                    <li><a href="#">1</a></li>
                                    <li class="active"><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                </ul> 
                            </div>  -->
                            

                            <?php endforeach;?>
                            <?php error_reporting(0); echo $page;?>

                        </div>

                    <!-- End blog entries list -->

                    <div class="col-lg-4">

                        <div class="sidebar">

                            <h3 class="sidebar-title">Search</h3>
                            <div class="sidebar-item search-form">
                                <form action="<?php echo site_url('blog/search');?>">
                                    <input type="text">
                                    <button type="submit"><i class="bi bi-search"></i></button>
                                </form>
                            </div>
                            <!-- End sidebar search formn-->

                            <h3 class="sidebar-title">Categories</h3>
                            <div class="sidebar-item categories">
                                <?php foreach ($category->result() as $row) : ?>
                                    <ul>
                                        <li><a href="<?php echo site_url('blog/Tags/'.str_replace(" ","-",$row->kategori_nama));?>"><?php echo $row->kategori_nama;?></a></li>
                                        
                                    </ul>
                                <?php endforeach;?>
                            </div>
                            <!-- End sidebar categories-->

                            <h3 class="sidebar-title">Recent Posts</h3>
                            <div class="sidebar-item recent-posts">
                                <?php foreach ($populer->result() as $row) :?>
                                    <div class="post-item clearfix">
                                        <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" alt="">
                                        <h4><a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo limit_words($row->tulisan_judul,3).'...';?></a></h4>
                                        <time datetime=""><?php echo limit_words($row->tulisan_isi,5).'...';?></time>
                                    </div>
                                <?php endforeach;?>

                            </div>
                            <!-- End sidebar recent posts-->

                            <h3 class="sidebar-title">Tags</h3>
                            <div class="sidebar-item tags">
                                <ul>
                                    <li><a href="#">App</a></li>
                                    <li><a href="#">IT</a></li>
                                    <li><a href="#">Business</a></li>
                                    <li><a href="#">Mac</a></li>
                                    <li><a href="#">Design</a></li>
                                    <li><a href="#">Office</a></li>
                                    <li><a href="#">Creative</a></li>
                                    <li><a href="#">Studio</a></li>
                                    <li><a href="#">Smart</a></li>
                                    <li><a href="#">Tips</a></li>
                                    <li><a href="#">Marketing</a></li>
                                </ul>
                            </div>
                            <!-- End sidebar tags-->

                        </div>
                        <!-- End sidebar -->

                    </div>
                    <!-- End blog sidebar -->

                </div>

            </div>
        </section>
        <!-- End Blog Section -->

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