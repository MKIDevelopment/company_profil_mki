<?php
    $this->load->view('depan/v_header')
?>

    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section class="breadcrumbs">
            <div class="container">

                <ol>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="blog.html">Blog</a></li>
                    <li>Blog Single</li>
                </ol>
                <h2>Blog Single</h2>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ======= Blog Single Section ======= -->
        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up">

                <div class="row">
               
                    <div class="col-lg-8 entries">
                       
                        <article class="entry entry-single">
                        <?php
                            $query=$this->db->query("SELECT * FROM tbl_komentar");
                            $jml=$query->num_rows();
                        ?>
                            <div class="entry-img">
                                <img src="<?php echo base_url().'assets/images/'.$image?>"" alt="" class="img-fluid">
                            </div>
                            <h2 class="entry-title"><?php echo $title;?></h2>
                            <div class="entry-meta">
                                <ul>
                                    <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html"><?php echo $author;?></a></li>
                                    <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01"></i><?php echo $tanggal;?></time></a></li>
                                    <li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>
                                </ul>
                            </div>

                            <div class="entry-content">
                                <p>
                                    <?php echo $blog;?>
                                </p>


                                <blockquote>
                                    <p>
                                        Et vero doloremque tempore voluptatem ratione vel aut. Deleniti sunt animi aut. Aut eos aliquam doloribus minus autem quos.
                                    </p>
                                </blockquote>

                                
                                <img src="assets/img/blog/blog-inside-post.jpg" class="img-fluid" alt="">

                            </div>

                            <div class="entry-footer">
                                <i class="bi bi-folder"></i>
                                <ul class="cats">
                                    <li><a href="<?php echo site_url('blog/Tags/'.str_replace(" ","-",$kategori));?>"><?php echo $kategori;?></a></li>
                                </ul>

                                <i class="bi bi-tags"></i>
                                <ul class="tags">
                                    <li><a href="#">Creative</a></li>
                                    <li><a href="#">Tips</a></li>
                                    <li><a href="#">Marketing</a></li>
                                </ul>
                            </div>
                            <div class="pull-left"><h5>Bagikan Ke: &nbsp;</h5>
                        </article>
                        <!-- End blog entry -->

                        <!-- <div class="blog-author d-flex align-items-center">
                            <img src="assets/img/blog/blog-author.jpg" class="rounded-circle float-left" alt="">
                            <div>
                                <h4>Jane Smith</h4>
                                <div class="social-links">
                                    <a href="https://twitters.com/#"><i class="bi bi-twitter"></i></a>
                                    <a href="https://facebook.com/#"><i class="bi bi-facebook"></i></a>
                                    <a href="https://instagram.com/#"><i class="biu bi-instagram"></i></a>
                                </div>
                                <p>
                                    Itaque quidem optio quia voluptatibus dolorem dolor. Modi eum sed possimus accusantium. Quas repellat voluptatem officia numquam sint aspernatur voluptas. Esse et accusantium ut unde voluptas.
                                </p>
                            </div>
                        </div> -->
                        <!-- End blog author bio -->

                        <div class="blog-comments">

                            <h4 class="comments-count">8 Comments</h4>

                            <div id="comment-2" class="comment">
                                <?php
                                  $colors = array(
                                      '#ff9e67',
                                      '#10bdff',
                                      '#14b5c7',
                                      '#f98182',
                                      '#8f9ce2',
                                      '#ee2b33',
                                      '#d4ec15',
                                      '#613021',
                                  );
                                  foreach ($show_komentar->result() as $row) :
                                  shuffle($colors);
                                ?>
                                <div class="d-flex">
                                    <div class="comment-img"><img src="<?php echo base_url('assets/bpn/img/blog/b02.jpg');?>" alt=""></div>
                                    <div>   
                                        <h5><a href=""><?php echo $row->komentar_nama;?></a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                                        <time datetime="2020-01-01"><?php echo date("d M Y H:i", strtotime($row->komentar_tanggal));?></time>
                                        <p>
                                        <?php echo $row->komentar_isi;?>
                                        </p>
                                    </div>
                                </div>

                                <?php
                                    $komentar_id=$row->komentar_id;
                                    $query=$this->db->query("SELECT * FROM tbl_komentar WHERE komentar_status='1' AND komentar_parent='$komentar_id' ORDER BY komentar_id ASC");
                                    foreach ($query->result() as $res) :
                                    shuffle($colors);
                                ?>
                                <div id="comment-reply-1" class="comment comment-reply">
                                    <div class="d-flex">
                                        <div class="comment-img"><img src="<?php echo base_url('assets/bpn/img/blog/b02.jpg');?>" alt=""></div>
                                        <div>
                                            <h5><a href=""><?php echo $res->komentar_nama;?></a> <a href="#" class="reply"><i class="bi bi-reply-fill"></i> Reply</a></h5>
                                            <time datetime="2020-01-01"><?php echo date("d M Y H:i", strtotime($res->komentar_tanggal));?></time>
                                            <p>
                                            <?php echo $res->komentar_isi;?>
                                            </p>
                                        </div>
                                    </div>


                                </div>
                                <!-- End comment reply #1-->
                                        <?php endforeach ;?>


                                        <?php endforeach ;?>
                            </div>
                            <!-- End comment #2-->


                           

                            <div class="reply-form">
                                <h4>Leave a Reply</h4>
                                <p>Your email address will not be published. Required fields are marked * </p>
                                <form action="<?php echo site_url('blog/komentar');?>">
                                    <div class="row">
                                        <div class="col-md-6 form-group">
                                            <input name="nama" type="text" class="form-control" placeholder="Your Name*">
                                        </div>
                                        <div class="col-md-6 form-group">
                                            <input name="email" type="text" class="form-control" placeholder="Your Email*">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col form-group">
                                            <textarea name="komentar" class="form-control" placeholder="Your Comment*"></textarea>
                                        </div>
                                    </div>
                                    <input type="hidden" name="id" value="<?php echo $id;?>" required>
                                    <input type="submit" value="Beri Komentar" />

                                </form>

                            </div>

                        </div>
                        <!-- End blog comments -->

                    </div>
                    <!-- End blog entries list -->

                    <div class="col-lg-4">

                        <div class="sidebar">

                            <h3 class="sidebar-title">Search</h3>
                            <div class="sidebar-item search-form">
                                <form action="<?php echo site_url('blog/search');?>"">
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
                                        <!-- <time datetime="2020-01-01"><?php echo $row->tanggal;?></time> -->
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
        <!-- End Blog Single Section -->

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

    <script src="<?php echo base_url().'theme/js/jssocials.js'?>"></script>
        <script>
          $(document).ready(function(){
            $(".sharePopup").jsSocials({
                  showCount: true,
                        showLabel: true,
                        shareIn: "popup",
                        shares: [
                        { share: "twitter", label: "Twitter" },
                        { share: "facebook", label: "Facebook" },
                        { share: "line", label: "LINE" },
                        { share: "whatsapp", label: "WhatsApp" }
                        // { share: "pinterest", label: "Pinterest" }
                        ]
                });
          });
        </script>

</body>

</html>