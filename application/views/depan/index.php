<?php $this->load->view('depan/v_header'); ?>

<?php $title=$this->db->query("SELECT * FROM tbl_identitas")->row_array(); ?>

        <main id="main">
            <!-- ======= Hero Section ======= -->
            <section id="home" class="hero d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 d-flex flex-column justify-content-center">
                            <h1 data-aos="fade-up">Bermitra Bersama <br>Multi Kreatif Indonesia</h1>
                            <h2 data-aos="fade-up" data-aos-delay="400">Apapun Masalahnya, MKI solusinya!</h2>
                            <div data-aos="fade-up" data-aos-delay="600">
                                <div class="text-center text-lg-start">
                                    <a href="https://wa.me/<?php echo $title['identitas_nohp'];?>" class="btn-get-started scrollto d-inline-flex align-items-center justify-content-center align-self-center">
                                        <span>Hubungi Kami</span>
                                        <i class="bi bi-arrow-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 hero-img" data-aos="zoom-out" data-aos-delay="200">
                            <img src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/img/features-2.png" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Hero -->

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container" data-aos="fade-up">
                    <div class="row gx-0">
                        <div class="col-lg-6 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="200">
                            <div class="content" style="background-color: #fff;">
                                <!-- <h3>Tentang Kami</h3> -->
                                <h2>Tentang Kami</h2>
                                <p><?php echo $title['identitas_tentang'];?></p>
                                <!-- <div class="text-center text-lg-start">
                                    <a href="#" class="btn-read-more d-inline-flex align-items-center justify-content-center align-self-center">
                                        <span>Read More</span>
                                        <i class="bi bi-arrow-right"></i>
                                    </a>
                                </div> -->
                            </div>
                        </div>

                        <div class="col-lg-6 d-flex align-items-center" data-aos="zoom-out" data-aos-delay="200">
                            <img src="<?php echo base_url().'assets/home/logo/'.$title['image_tentang'];?>" class="img-fluid" alt="">
                        </div>
                    </div>
                </div>
            </section>
            <!-- End About Section -->

            <!-- ======= Values Section ======= -->
            <section id="values" class="values">
                <div class="container" data-aos="fade-up">
                    <header class="section-header">
                        <!-- <h2>Our Values</h2> -->
                        <p>Kenapa Harus Memilih Kami ?</p>
                    </header>

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="box" data-aos="fade-up" data-aos-delay="200">
                                <img src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/img/values-1.png" class="img-fluid" alt="">
                                <h3>Berpengalaman</h3>
                                <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p> -->
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0">
                            <div class="box" data-aos="fade-up" data-aos-delay="400">
                                <img src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/img/values-2.png" class="img-fluid" alt="">
                                <h3>Pengerjaan Cepat</h3>
                                <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p> -->
                            </div>
                        </div>

                        <div class="col-lg-4 mt-4 mt-lg-0">
                            <div class="box" data-aos="fade-up" data-aos-delay="600">
                                <img src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/img/values-3.png" class="img-fluid" alt="">
                                <h3>Pelayanan 24 Jam</h3>
                                <!-- <p>Lorem Ipsum is simply dummy text of the printing and typesetting</p> -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Values Section -->

            <!-- ======= Counts Section ======= -->
            <section id="counts" class="counts">
                <div class="container" data-aos="fade-up">
                    <div class="row gy-4">
                        <?php
                            foreach ($point->result_array() as $p) :
                            $id=$p['id_point'];
                            $nama=$p['nama_point'];
                            $icon=$p['icon_point'];
                            $nilai=$p['nilai_point'];
                            // $tanggal=$i['testimoni_tanggal'];
                            // $gambar=$i['gambar'];
                        ?>                    
                            <div class="col-lg-3 col-md-6">
                                <div class="count-box">
                                    <i class="<?php echo $icon;?>"></i>
                                    <div>
                                        <span data-purecounter-start="0" data-purecounter-end="<?php echo $nilai;?>" data-purecounter-duration="1" class="purecounter"></span>
                                        <p><?php echo $nama;?></p>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach;?>
                    </div>
                </div>
            </section>
            <!-- End Counts Section -->

            <!-- ======= Features Section ======= -->
            <section id="services" class="features">
                <div class="container" data-aos="fade-up">
                    <header class="section-header">
                        <!-- <h2>Features</h2> -->
                        <p>Jasa Yang Kami Sediakan</p>
                    </header>

                    <div class="row">
                        <div class="col-lg-6">
                            <img src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/img/features.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-6 mt-5 mt-lg-0 d-flex">
                            <div class="row align-self-center gy-4">
                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="200">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Landing Page</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="300">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Website Application</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="400">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Web Design</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="500">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Custom Website</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="600">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Design Graphic</h3>
                                    </div>
                                </div>

                                <div class="col-md-6" data-aos="zoom-out" data-aos-delay="700">
                                    <div class="feature-box d-flex align-items-center">
                                        <i class="bi bi-check"></i>
                                        <h3>Konten Sosial Media</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Features Section -->

            <!-- ======= Services Section ======= -->

            <!-- End Services Section -->

            <!-- ======= Pricing Section ======= -->
            <!-- <section id="pricing" class="pricing">

                <div class="container" data-aos="fade-up">

                    <header class="section-header">
                        <h2>Pricing</h2>
                        <p>Check our Pricing</p>
                    </header>

                    <div class="row gy-4" data-aos="fade-left">

                        <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
                            <div class="box">
                                <h3 style="color: #07d5c0;">Free Plan</h3>
                                <div class="price"><sup>$</sup>0<span> / mo</span></div>
                                <img src="assets/img/pricing-free.png" class="img-fluid" alt="">
                                <ul>
                                    <li>Aida dere</li>
                                    <li>Nec feugiat nisl</li>
                                    <li>Nulla at volutpat dola</li>
                                    <li class="na">Pharetra massa</li>
                                    <li class="na">Massa ultricies mi</li>
                                </ul>
                                <a href="#" class="btn-buy">Buy Now</a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
                            <div class="box">
                                <span class="featured">Featured</span>
                                <h3 style="color: #65c600;">Starter Plan</h3>
                                <div class="price"><sup>$</sup>19<span> / mo</span></div>
                                <img src="assets/img/pricing-starter.png" class="img-fluid" alt="">
                                <ul>
                                    <li>Aida dere</li>
                                    <li>Nec feugiat nisl</li>
                                    <li>Nulla at volutpat dola</li>
                                    <li>Pharetra massa</li>
                                    <li class="na">Massa ultricies mi</li>
                                </ul>
                                <a href="#" class="btn-buy">Buy Now</a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="300">
                            <div class="box">
                                <h3 style="color: #ff901c;">Business Plan</h3>
                                <div class="price"><sup>$</sup>29<span> / mo</span></div>
                                <img src="assets/img/pricing-business.png" class="img-fluid" alt="">
                                <ul>
                                    <li>Aida dere</li>
                                    <li>Nec feugiat nisl</li>
                                    <li>Nulla at volutpat dola</li>
                                    <li>Pharetra massa</li>
                                    <li>Massa ultricies mi</li>
                                </ul>
                                <a href="#" class="btn-buy">Buy Now</a>
                            </div>
                        </div>

                        <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="400">
                            <div class="box">
                                <h3 style="color: #ff0071;">Ultimate Plan</h3>
                                <div class="price"><sup>$</sup>49<span> / mo</span></div>
                                <img src="assets/img/pricing-ultimate.png" class="img-fluid" alt="">
                                <ul>
                                    <li>Aida dere</li>
                                    <li>Nec feugiat nisl</li>
                                    <li>Nulla at volutpat dola</li>
                                    <li>Pharetra massa</li>
                                    <li>Massa ultricies mi</li>
                                </ul>
                                <a href="#" class="btn-buy">Buy Now</a>
                            </div>
                        </div>

                    </div>

                </div>

            </section> -->
            <!-- End Pricing Section -->

            <!-- ======= F.A.Q Section ======= -->
            <!-- <section id="faq" class="faq">

                <div class="container" data-aos="fade-up">

                    <header class="section-header">
                        <p>Pertanyaan</p>
                    </header>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="accordion accordion-flush" id="faqlist1">
                                <?php foreach ($faq_l->result_array() as $i) :?>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed <?php echo $i['active'];?>" type="button" data-bs-toggle="collapse" data-bs-target="#<?php echo $i['href'];?>">
                                            <?php echo $i['pertanyaan'];?>
                                            </button>
                                        </h2>
                                        <div id="<?php echo $i['href'];?>" class="accordion-collapse collapse <?php echo $i['active'];?>" data-bs-parent="#faqlist1">
                                            <div class="accordion-body">
                                            <?php echo $i['jawaban'];?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach;?>

                            </div>
                        </div>

                        <div class="col-lg-6">

                            <div class="accordion accordion-flush" id="faqlist2">
                                <?php foreach ($faq_r->result_array() as $r) :?>
                                    <div class="accordion-item">
                                        <h2 class="accordion-header">
                                            <button class="accordion-button collapsed <?php echo $r['active'];?>" type="button" data-bs-toggle="collapse" data-bs-target="#<?php echo $r['href'];?>">
                                                <?php echo $r['pertanyaan'];?>
                                            </button>
                                        </h2>
                                        <div id="<?php echo $r['href'];?>" class="accordion-collapse collapse <?php echo $r['active'];?>" data-bs-parent="#faqlist2">
                                            <div class="accordion-body">
                                            <?php echo $r['jawaban'];?>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach;?>
                            </div>
                        </div>

                    </div>

                </div>

            </section> -->
            <!-- End F.A.Q Section -->

            <!-- ======= Portfolio Section ======= -->
            <!-- <section id="portfolio" class="portfolio">

                <div class="container" data-aos="fade-up">

                    <header class="section-header">
                        <p>Portfolio Kami</p>
                    </header>

                    <div class="row" data-aos="fade-up" data-aos-delay="100">
                        <div class="col-lg-12 d-flex justify-content-center">
                            <ul id="portfolio-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                <?php
                                    foreach ($alb->result() as $row) : ?>
                                <li data-filter=".<?php echo $row->album_id;?>"><?php echo $row->album_nama;?></li>
                                <?php endforeach;?>
                            </ul>
                        </div>
                    </div>

                    <div class="row gy-4 portfolio-container" data-aos="fade-up" data-aos-delay="200">
                        <?php foreach ($gal->result() as $row) : ?>
                            <div class="col-lg-4 col-md-6 portfolio-item <?php echo $row->galeri_album_id;?>">
                                <div class="portfolio-wrap">
                                    <img src="<?php echo base_url().'/assets/images/galery/'.$row->galeri_gambar;?>" class="img-fluid" alt="">
                                    <div class="portfolio-info">
                                        <h4><?php echo $row->galeri_judul;?></h4>
                                        <p><?php echo $row->album_nama;?></p>
                                        <div class="portfolio-links">
                                            <a href="<?php echo base_url().'/assets/images/galery/'.$row->galeri_gambar;?>" data-gallery="portfolioGallery" class="portfokio-lightbox" ><i class="bi bi-plus"></i></a>
                                            <a href="<?php echo site_url('portfolio/'.$row->galeri_slug);?>" title="More Details"><i class="bi bi-link"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach;?>

                    </div>

                </div>

            </section> -->
            <!-- End Portfolio Section -->

            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials">
                <div class="container" data-aos="fade-up">
                    <header class="section-header">
                        <!-- <h2>Testimonials</h2> -->
                        <p>Review</p>
                    </header>
                   
                    <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="200">
                        <div class="swiper-wrapper">
                            <?php
                                foreach ($testi->result_array() as $i) :
                                $kode=$i['testimoni_id'];
                                $nama=$i['testimoni_nama'];
                                $isi=$i['testimoni_isi'];
                                $email=$i['testimoni_email'];
                                $tanggal=$i['testimoni_tanggal'];
                                $gambar=$i['gambar'];
                            ?>
                                <div class="swiper-slide"> 
                                    <div class="testimonial-item">
                                        <div class="stars">
                                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                                        </div>
                                        
                                        <p><?php echo $isi;?></p>
                                        
                                        <div class="profile mt-auto">
                                            <img src="<?php echo base_url().'assets/images/'.$gambar;?>" class="testimonial-img" alt="">
                                            <h3><?php echo $nama;?></h3>
                                            <!-- <h4>Ceo &amp; Founder</h4> -->
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach;?>
                        </div>

                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </section>
            <!-- End Testimonials Section -->



            <!-- ======= Clients Section ======= -->
            <!-- <section id="clients" class="clients">

                <div class="container" data-aos="fade-up">

                    <header class="section-header">
                        <h2>Our Clients</h2>
                        <p>Temporibus omnis officia</p>
                    </header>

                    <div class="clients-slider swiper">
                        <div class="swiper-wrapper align-items-center">
                            <div class="swiper-slide"><img src="assets/img/clients/client-1.png" class="img-fluid" alt=""></div>
                            <div class="swiper-slide"><img src="assets/img/clients/client-2.png" class="img-fluid" alt=""></div>
                            <div class="swiper-slide"><img src="assets/img/clients/client-3.png" class="img-fluid" alt=""></div>
                            <div class="swiper-slide"><img src="assets/img/clients/client-4.png" class="img-fluid" alt=""></div>
                            <div class="swiper-slide"><img src="assets/img/clients/client-5.png" class="img-fluid" alt=""></div>
                            <div class="swiper-slide"><img src="assets/img/clients/client-6.png" class="img-fluid" alt=""></div>
                            <div class="swiper-slide"><img src="assets/img/clients/client-7.png" class="img-fluid" alt=""></div>
                            <div class="swiper-slide"><img src="assets/img/clients/client-8.png" class="img-fluid" alt=""></div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>

            </section> -->
            <!-- End Clients Section -->

            <!-- ======= Recent Blog Posts Section ======= -->
            <!-- <section id="recent-blog-posts" class="recent-blog-posts">

                <div class="container" data-aos="fade-up">

                    <header class="section-header">
                        <p>Artikel Baru</p>
                    </header>

                    <div class="row">
                        <?php foreach ($berita->result() as $row) :?>
                            <div class="col-lg-4">
                                <div class="post-box">
                                    <div class="post-img"><img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" class="img-fluid" alt=""></div>
                                    <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><span class="post-date"><?php echo $row->tanggal;?></span></a>
                                    <h3 class="post-title"><?php echo limit_words($row->tulisan_judul,4).'...';?></h3>
                                    <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>" class="readmore stretched-link mt-auto"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                                </div>
                            </div>
                        <?php endforeach;?>

                    </div>

                </div>

            </section> -->
            <!-- End Recent Blog Posts Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container" data-aos="fade-up">
                    <header class="section-header">
                        <!-- <h2>Contact</h2> -->
                        <p>Contact Us</p>
                    </header>

                    <div class="row gy-4">
                        <div class="col-lg-6">
                            <div class="row gy-4">
                                <?php $b=$this->db->query("SELECT * FROM tbl_identitas")->row_array(); ?>

                                <div class="col-md-6">
                                    <div class="info-box">
                                        <i class="bi bi-geo-alt"></i>
                                        <h3>Address</h3>
                                        <p><?php echo $b['identitas_alamat'];?></p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="info-box">
                                        <i class="bi bi-telephone"></i>
                                        <h3>Call Us</h3>
                                        <p><?php echo $b['identitas_nohp'];?></p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="info-box">
                                        <i class="bi bi-envelope"></i>
                                        <h3>Email Us</h3>
                                        <p><?php echo $b['identitas_email'];?></p>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="info-box">
                                        <i class="bi bi-clock"></i>
                                        <h3>Open Hours</h3>
                                        <p>Monday - Friday<br>9:00AM - 05:00PM</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <form action="<?php echo site_url('Contact/kirim_pesan');?>" method="post" class="contact-form">
                                <div class="row gy-4">
                                    <div class="col-md-6">
                                        <input type="text" name="xnama" class="form-control" placeholder="Your Name" required>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="col-md-6 ">
                                        <input type="email" class="form-control" name="xemail" placeholder="Your Email" required>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="col-md-12">
                                        <input type="text" class="form-control" name="xphone" placeholder="Subject" required>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="col-md-12">
                                        <textarea class="form-control" name="xmessage" rows="6" placeholder="Message" required></textarea>
                                        <div class="validation"></div>
                                    </div>

                                    <div class="col-md-12 text-center">
                                        <div class="validation"></div>
                                        <button type="submit" class="btn btn-primary">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Contact Section -->

        </main>
        <!-- End #main -->

        <?php $this->load->view('depan/footer'); ?>

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
        <script src="<?php echo base_url();?>assets/bpn/contactform/contactform.js"></script>

        <script src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>
        <?php if($this->session->flashdata('msg')=='success'):?>
            <script type="text/javascript">
                    $.toast({
                        heading: 'Success',
                        text: "Terimakasih Telah Menghubungi Kami",
                        showHideTransition: 'slide',
                        icon: 'success',
                        hideAfter: false,
                        position: 'bottom-right',
                        bgColor: '#7EC857'
                    });
            </script>
        <?php elseif($this->session->flashdata('msg')=='error'):?>
            <script type="text/javascript">
                    $.toast({
                        heading: 'Error',
                        text: "Pesan tidak terkirim.",
                        showHideTransition: 'slide',
                        icon: 'error',
                        hideAfter: false,
                        position: 'bottom-right',
                        bgColor: '#FF4859'
                    });
            </script>
        <?php endif;?>

    </body>
</html>