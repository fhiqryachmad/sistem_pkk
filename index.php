<?php require_once "admin/support/myfunction.php"; ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="keywords" content="PKK Kampung Petta">
    <title>PKK Kampung Petta</title>
    <link rel="shortcut icon" href="https://pkk.umaberingin.desa.id/back_assets/img/icon_resmi.png" type="image/x-icon">
    <link href="https://pkk.umaberingin.desa.id/front_assets/css/animate-3.7.0.css" type="text/css" rel="stylesheet"
        media="all">
    <link href="https://pkk.umaberingin.desa.id/front_assets/css/font-awesome-4.7.0.min.css" type="text/css"
        rel="stylesheet">
    <link href="https://pkk.umaberingin.desa.id/front_assets/fonts/flat-icon/flaticon.css" type="text/css"
        rel="stylesheet">
    <link href="https://pkk.umaberingin.desa.id/front_assets/css/bootstrap-4.1.3.min.css" type="text/css"
        rel="stylesheet">
    <link href="https://pkk.umaberingin.desa.id/front_assets/css/owl-carousel.min.css" type="text/css" rel="stylesheet">
    <link href="https://pkk.umaberingin.desa.id/front_assets/css/nice-select.css" type="text/css" rel="stylesheet">
    <link href="https://pkk.umaberingin.desa.id/front_assets/css/style.css" type="text/css" rel="stylesheet">
    <link href="https://pkk.umaberingin.desa.id/front_assets/css/dropdown.css" type="text/css" rel="stylesheet">
    <style>
        * {
            transition: all 0.6s;
        }

        .smart-scroll {
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            z-index: 1030;
        }

        .scrolled-down {
            transform: translateY(-100%);
            transition: all 0.3s ease-in-out;
        }

        .scrolled-up {
            transform: translateY(0);
            transition: all 0.3s ease-in-out;
        }

        body {
            opacity: 1;
            transition: 1s opacity;
        }

        body.fade-out {
            opacity: 0;
            transition: none;
        }

        html {
            min-width: 384px;
            background-color: white;
        }
    </style>
</head>

<body>
    <script>
        document.body.className += 'fade-out';
    </script>

    <div class="preloader">
        <div class="spinner"></div>
    </div>
    <a id="button-up"></a>

    <header class="header-area main-header smart-scroll p-2 blur-ios border-bawah">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="logo-area">
                    <img height="50" src="logo.png" alt="logo"></a>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="custom-navbar">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>

                    <div class="main-menu">
                        <ul>
                            <li><a href="index.php">Beranda</a></li>
                            <li><a href="detailberita.php?id">Berita</a>
                            </li>
                            <li><a href="detailgaleri.php?id">Galeri</a>
                            </li>
                            </li>
                            <li><a href="detailpengurus.php?id">Pengurus</a>
                            </li>
                            <li><a href="admin/login.php">Login</a>
                            </li>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- isi -->
    <!-- Perkenalan Starts -->
    <section id="perkenalan" class="download-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div>
                        <h1>Selamat Datang Di PKK Kampung Petta</h1>
                        <p class="py-1">
                        <blockquote>
                            <p style="text-align: justify;">Pemberdayaan dan Kesejahteraan Keluarga atau PKK adalah
                                Organisasi kemasyarakatan yang memberdayakan wanita untuk turut berpartisipasi dalam
                                pembangunan Indonesia. PKK sebagai gerakan pembangunan masyarakat bermula dari seminar
                                <em>Home Economic</em> di Bogor tahun 1957. Sebagai tindak lanjut dari seminar tersebut,
                                pada tahun 1961 panitia penyusunan tata susunan pelajaran pada Pendidikan Kesejahteraan
                                Keluarga (PKK), Kementerian Pendidikan bersama kementerian-kementerian lainnya menyusun
                                10 segi kehidupan keluarga. Gerakan PKK dimasyarakatkan berawal dari kepedulian istri
                                gubernur Jawa Tengah pada tahun 1967 (Ibu Isriati Moenadi) setelah melihat keadaan
                                masyarakat yang menderita busung lapar.
                            </p>
                        </blockquote>
                        <p style="text-align: justify;"><strong><br />Salam,<br /></strong><strong>Ketua TP-PKK Kampung
                                Petta</strong></p>
                        </p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <img src="https://pkk.umaberingin.desa.id/back_assets/img/sambutan_background.jpg" alt=""
                        style="padding: 20px 20px 20px 20px;" width="85%">
                </div>
            </div>
        </div>
    </section>
    <!-- Perkenalan End --><!-- Berita slide Starts -->
    <section id="berita" class="employee-area section-padding">

        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h2>Berita PKK</h2>
                        <p>Berita Terkini Terkait Kegiatan PKK Kampung Petta</p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="employee-slider owl-carousel">

                        <?php
                        frontend_view_news("tb_berita", "id_berita", array("id_berita", "judul", "gambar"));
                        ?>

                    </div>
                </div>
            </div>
        </div>
        <div class="more-job-btn mt-3 text-center">
            <a href="detailberita.php?id" class="template-btn">Baca Selengkapnya<span
                    class="flaticon-next"></span></a>
        </div>
    </section>
    <!-- Team Area Starts -->
    <section class="download-area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h2>Pengurus TP-PKK</h2>
                        <p>Pengurus TP (Tim Penggerak) PKK (Pemberdayaan dan Kesejahteraan Keluarga) Kampung Petta</p>
                    </div>
                </div>
            </div>
            <div class="row">
                        <?php
                        frontend_view_pengurus("tb_pengurus", "id_pengurus", array("id_pengurus", "gambar",  "nama", "jabatan"));
                        ?>
            </div>
        </div>
        <div class="more-job-btn mt-5 text-center">
            <a href="detailpengurus.php?id" class="template-btn">Selengkapnya<span
                    class="flaticon-next"></span></a>
        </div>
    </section>
    <section class="newsletter-area section-padding"
        style="background-image: url('https://pkk.umaberingin.desa.id/back_assets/img/background.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-top text-center">
                        <h2>Masukan Saran</h2>
                        <p>Terkait Kegiatan PKK Kampung Petta</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form action="#">
                        <input type="email" placeholder="Ketk di sini" onfocus="this.placeholder = ''"
                            onblur="this.placeholder = 'Ketik di sini'" required>
                        <button onclick="showSwal('success-message')" type="submit"
                            class="template-btn">Kirim</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer Area Starts -->
    <footer class="footer-area section-padding">
        <div class="footer-widget">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6">
                        <div class="single-widget-home mb-5 mb-lg-0">
        </div>
        <div class="footer-copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <img class="mb-3" src="https://pkk.umaberingin.desa.id/back_assets/img/icon_resmi.png" alt=""
                            width="32" height="32">
                        <h3 class="mb-3">PKK Kampung Petta</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <span>
                            Tim Penggerak (TP) <br> Pemberdayaan dan Kesejahteraan Keluarga (PKK) <br> Kampung Petta <br>
                            Copyright &copy;
                            <script>
                                document.write(new Date().getFullYear());
                            </script> PKK Kampung Petta. 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Javascript -->
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/vendor/bootstrap-4.1.3.min.js"></script>
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/vendor/wow.min.js"></script>
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/vendor/owl-carousel.min.js"></script>
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/vendor/jquery.nice-select.min.js"></script>
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/vendor/ion.rangeSlider.js"></script>
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/main.js"></script>
    <script src="https://pkk.umaberingin.desa.id/front_assets/js/scroll.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
    <!-- Footer Area End -->
    <script>
        // add padding top to show content behind navbar
        $('body').css('padding-top', $('.navbar').outerHeight() + 'px')

        // detect scroll top or down
        if ($('.smart-scroll').length > 0) { // check if element exists
            var last_scroll_top = 0;
            $(window).on('scroll', function () {
                scroll_top = $(this).scrollTop();
                if (scroll_top < last_scroll_top) {
                    $('.smart-scroll').removeClass('scrolled-down').addClass('scrolled-up');
                } else {
                    $('.smart-scroll').removeClass('scrolled-up').addClass('scrolled-down');
                }
                last_scroll_top = scroll_top;
            });
        }
    </script>

    <script>
        $(function () {
            $('body').removeClass('fade-out');
        });
    </script>
</body>

</html>