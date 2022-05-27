<?php
    $title=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
?>
    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer">

        <div class="footer-top">
            <div class="container">
                <div class="row gy-4">
                  <?php
                    $b=$this->db->query("SELECT * FROM tbl_identitas")->row_array();
                  ?>
                    <div class="col-lg-5 col-md-12 footer-info">
                        <a href="index.html" class="logo d-flex align-items-center">
                            <img src="<?php echo base_url();?>assets/MultiKreatifIndonesia/assets/img/mki.png" alt="">
                            <span>MKI</span>
                        </a>
                        <p>Kami Selalu Terhubung.</p>
                        <div class="social-links mt-3">
                            <a href="<?php echo $b['identitas_twitter'];?>" class="twitter"><i class="bi bi-twitter"></i></a>
                            <a href="<?php echo $b['identitas_facebook'];?>" class="facebook"><i class="bi bi-facebook"></i></a>
                            <a href="<?php echo $b['identitas_ig'];?>" class="instagram"><i class="bi bi-instagram"></i></a>
                            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                        </div>
                    </div>

                    <div class="col-lg-2 col-6 footer-links">
                        <h4>Useful Links</h4>
                        <ul>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Home</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#about">About us</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#service">Services</a></li>
                            <!-- <li><i class="bi bi-chevron-right"></i> <a href="#">Terms of service</a></li> -->
                            <!-- <li><i class="bi bi-chevron-right"></i> <a href="#">Privacy policy</a></li> -->
                        </ul>
                    </div>

                    <div class="col-lg-2 col-6 footer-links">
                        <h4>Our Services</h4>
                        <ul>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Landing Page</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Website Application</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Custom Website</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Web Design</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Design Graphic</a></li>
                            <li><i class="bi bi-chevron-right"></i> <a href="#">Konten Sosial Media</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-12 footer-contact text-center text-md-start">
                        <h4>Contact Us</h4>
                        <p>
                            <?php echo $b['identitas_alamat'];?> <br> 
                            <strong>Phone:</strong> <?php echo $b['identitas_nohp'];?><br>
                            <strong>Email:</strong> <?php echo $b['identitas_email'];?><br>
                        </p>

                    </div>

                </div>
            </div>
        </div>

        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>Multi Kreatif Indonesia</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/flexstart-bootstrap-startup-template/ -->
                <!-- Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
            </div>
        </div>
    </footer>
    <!-- End Footer -->
    <script type="text/javascript">
    (function () {
        var options = {
            whatsapp: "'<?php echo $title['identitas_nohp'];?> '", // WhatsApp number
            call_to_action: "Kirimi kami pesan", // Call to action
            position: "right", // Position may be 'right' or 'left'
        };
        var proto = document.location.protocol, host = "getbutton.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
    </script>

    
