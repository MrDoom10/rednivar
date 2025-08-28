<?php $webinfo = $this->webinfo; ?>
<style>
    /* === Saffron Lites Theme === */
    body {
        background-color: #fffaf3;
        color: #4a3f2a;
        font-family: 'Poppins', sans-serif;
    }

    .btn-saffron {
        background-color: #d4a017;
        color: #fff;
        padding: 10px 20px;
        border-radius: 25px;
        transition: all 0.3s ease;
        font-weight: 600;
        text-decoration: none;
    }

    .btn-saffron:hover {
        background-color: #b98b14;
        color: #fff;
        text-decoration: none;
    }

    .highlight-box {
        background: #fff;
        border-radius: 12px;
        padding: 20px;
        text-align: center;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
        margin-bottom: 20px;
    }

    .highlight-box h4 {
        font-size: 18px;
        margin-top: 10px;
        color: #4a3f2a;
    }

    /* === Events Served Cards === */
    .events-card {
        background: #fff;
        border-radius: 15px;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        transition: transform 0.2s ease, box-shadow 0.2s ease;
        overflow: hidden;
        margin-bottom: 25px;
    }

    .events-card img {
        width: 100%;
        height: 200px;
        object-fit: cover;
    }

    .events-card-body {
        padding: 15px;
    }

    .events-card:hover {
        transform: translateY(-4px);
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.08);
    }

    .events-title {
        color: #d4a017;
        font-weight: 700;
        font-size: 1.2rem;
    }
</style>

<!-- MODAL -->
<div class="modal fade" id="addons" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel"><?php echo display('food_details'); ?></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body addonsinfo"></div>
        </div>
    </div>
</div>

<!-- SLIDER -->
<?php if ($title2 == 'Welcome to Hungry') { ?>
    <div class="main_slider owl-carousel">
        <?php foreach ($slider_info as $slider) { ?>
            <div class="item">
                <img src="<?php echo base_url(!empty($slider->image) ? $slider->image : 'dummyimage/1920x902.jpg'); ?>"
                    alt="<?php echo $slider->title ?>">
                <div class="item_caption animated_caption text-center">
                    <h3 class="pre_title" style="color:#fff;">Saffron Lites</h3>
                    <h2 style="color:#fff;">
  A <span style="color:#d4a017;">Taste of Elegance</span> for Every Occasion
</h2>
                    <p style="color:#fff; font-size:18px; max-width:600px; margin:10px auto;">
                        Crafting unforgettable culinary experiences with love, flavor, and a touch of luxury.
                    </p>
                    <a href="/cloud_project/menu" class="btn-saffron">View Our Menu</a>
                    <a href="/cloud_project/contact" class="btn-saffron ml-2">Book an Event</a>
                </div>
            </div>
        <?php } ?>
    </div>
<?php } ?>

<!-- HIGHLIGHTS -->
<section class="container my-5">
    <div class="row">
        <div class="col-md-3 col-6">
            <div class="highlight-box">✅<h4>Premium Ingredients</h4>
            </div>
        </div>
        <div class="col-md-3 col-6">
            <div class="highlight-box">👩‍🍳<h4>Expert Chefs</h4>
            </div>
        </div>
        <div class="col-md-3 col-6">
            <div class="highlight-box">🥗<h4>Custom Menus</h4>
            </div>
        </div>
        <div class="col-md-3 col-6">
            <div class="highlight-box">🚚<h4>On-Time Delivery</h4>
            </div>
        </div>
    </div>
</section>

<!-- ABOUT US -->
<section class="about_us sect_pad position-relative" style="background:#fffaf3;">
    <div class="container">
        <div class="row about_inner align-items-center wrap-reverse-md">

            <!-- TEXT SIDE -->
            <div class="col-xl-5 col-lg-6">
                <div class="sect_title mb-4">
                    <h3 class="big_title text-dark">
                        A Legacy of <span style="color:#d4a017;">Love and Taste</span>
                    </h3>
                </div>
                <div class="aboutus_text" style="font-size:1.05rem; line-height:1.8; color:#333;">
                    SAFFRON LITES is a premium catering brand under Rednivar Services, proudly women-led and rooted
                    in a <strong>55-year culinary tradition</strong>. What began as a small family kitchen has blossomed
                    into a full-service catering and tiffin delivery provider, serving clients across Ontario.
                    <br><br>
                    At SAFFRON LITES, food is not just nourishment — it’s a celebration of culture, health,
                    and community. Our recipes are infused with generations of expertise, crafted with
                    <strong>high-quality ingredients</strong>, and tailored to suit modern tastes without
                    compromising authenticity.
                </div>
                <br>
                <a href="/cloud_project/about" class="btn-saffron mt-4"
                    style="background:#d4a017; color:#fff; padding:10px 22px; border-radius:50px; font-weight:bold; text-transform:uppercase; letter-spacing:0.5px;">
                    Learn More
                </a>
            </div>

            <!-- IMAGE SIDE -->
            <div class="col-lg-6 offset-xl-1">
                <div class="img_part mb-5 mb-lg-0 text-center">
                    <img src="<?php echo base_url('assets/images/about-saffron.jpg'); ?>" class="img-fluid"
                        alt="Saffron Lites" style="border-radius:20px; box-shadow:0 6px 18px rgba(0,0,0,0.15);">
                </div>
            </div>
        </div>
    </div>
</section>

<style>
    .sect_title .big_title {
        font-size: 2rem;
        font-weight: bold;
    }

    .btn-saffron:hover {
        background: #b88c0d !important;
        color: #fff !important;
        text-decoration: none;
    }
</style>

<!-- WHY CHOOSE US -->
<section class="py-5 position-relative" style="background:#fffaf3; overflow:hidden;">
    <!-- Decorative shapes -->
    <div
        style="position:absolute; top:-40px; right:-60px; width:180px; height:180px; background:#f8e6b8; border-radius:50%; opacity:0.2;">
    </div>
    <div
        style="position:absolute; bottom:-50px; left:-50px; width:220px; height:220px; background:#ffd87a; border-radius:50%; opacity:0.15;">
    </div>

    <div class="container position-relative">
        <div class="text-center mb-5">
            <h2 class="font-weight-bold text-dark" style="font-size:2rem;">
                Why <span style="color:#d4a017;">Choose Us</span>
            </h2>
            <p class="text-muted" style="max-width:650px; margin:auto; font-size:1rem;">
                From the first bite to the final smile, here’s why Saffron Lites is the top choice for authentic Indian
                catering and tiffin services.
            </p>
        </div>

        <div class="row gy-4">
            <?php
            $points = [
                "🧡 <strong>Trusted by Generations:</strong> 55 years of excellence in Indian cuisine.",
                "👩‍🍳 <strong>Women-Led & Family-Run:</strong> Proudly empowering through food.",
                "🛒 <strong>Fresh, Local Ingredients:</strong> Cooked daily with love and care.",
                "📦 <strong>Pan-Ontario Service:</strong> From Toronto to Thunder Bay — we’ve got you covered.",
                "🛠️ <strong>Fully Customizable Menus:</strong> Made to fit your taste, budget, and vision.",
                "⭐ <strong>5-Star Client Feedback:</strong> Consistently rated excellent for taste, service, and presentation.",
                "🎉 <strong>Event Expertise:</strong> From intimate gatherings to grand weddings, we make it unforgettable."
            ];
            foreach ($points as $point) { ?>
                <div class="col-md-6">
                    <div class="choose-item p-4"
                        style="background:#fff; border-left:5px solid #d4a017; border-radius:10px; box-shadow:0 4px 12px rgba(0,0,0,0.06); transition:transform 0.3s ease, box-shadow 0.3s ease;">
                        <div style="font-size:1.05rem; line-height:1.6; color:#333;">
                            <?php echo $point; ?>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>

<style>
    .choose-item:hover {
        transform: translateY(-4px);
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.12) !important;
    }
</style>

<!-- TESTIMONIALS SLIDER -->
<section class="py-5" style="background:#FFF8E7;">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="font-weight-bold text-dark">Testimonials</h2>
            <p class="text-muted" style="max-width:600px;margin:auto;">
                Real stories from our happy clients across Ontario.
            </p>
        </div>

        <!-- Swiper -->
        <div class="swiper testimonial-swiper">
            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <div class="testimonial-card">
                        <p>“SAFFRON LITES made our wedding truly unforgettable. Every guest praised the food —
                            authentic, fresh, and beautifully presented.”</p>
                        <h6>— Amandeep & Priya, Brampton</h6>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="testimonial-card">
                        <p>“As a busy professional, their tiffin service has been a lifesaver. Healthy, home-style
                            meals, always on time.”</p>
                        <h6>— Karan M., Toronto</h6>
                    </div>
                </div>

                <div class="swiper-slide">
                    <div class="testimonial-card">
                        <p>“Our Diwali event at the office was a hit thanks to Saffron Lites. Great food, great
                            service!”</p>
                        <h6>— HR Manager, TechNova Inc., Mississauga</h6>
                    </div>
                </div>

            </div>
            <!-- Pagination & Navigation -->
            <div class="swiper-pagination mt-3"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </div>
</section>

<!-- Swiper CSS & JS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

<style>
    .testimonial-card {
        background: #fff;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        font-style: italic;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        max-width: 500px;
        margin: auto;
    }

    .testimonial-card:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 18px rgba(0, 0, 0, 0.12);
    }

    .testimonial-card h6 {
        margin-top: 15px;
        font-weight: bold;
        color: #d4a017;
        font-style: normal;
    }
</style>

<script>
    new Swiper(".testimonial-swiper", {
        loop: true,
        autoplay: { delay: 3500, disableOnInteraction: false },
        pagination: { el: ".swiper-pagination", clickable: true },
        navigation: { nextEl: ".swiper-button-next", prevEl: ".swiper-button-prev" },
        slidesPerView: 1,
        spaceBetween: 20,
        breakpoints: {
            768: { slidesPerView: 1 },
            1024: { slidesPerView: 1 }
        }
    });
</script>
<style>
    .gallery_inner .item img {
        width: 100%;
        height: 250px;
        /* fixed height */
        object-fit: cover;
        /* crops image proportionally to fill the box */
        border-radius: 8px;
        /* optional: smooth corners */
        transition: transform 0.3s ease;
    }

    .gallery_inner .item:hover img {
        transform: scale(1.05);
        /* subtle zoom on hover */
    }
</style>
<!-- GALLERY -->
<?php
$photogallery = $this->db->select('*')->from('tbl_widget')->where('widgetid', 21)->where('status', 1)->get()->row();

if (!empty($photogallery)) {

    // Hardcoded gallery images array
    $gallery = [
        (object) ['image' => 'dummyimage/chef.jpg'],
        (object) ['image' => 'dummyimage/food_closeup.jpg'],
        (object) ['image' => 'dummyimage/buffet.jpg'],
        (object) ['image' => 'dummyimage/tiffin.jpg'],
        (object) ['image' => 'dummyimage/catering.jpg'],
        (object) ['image' => 'dummyimage/chef-2.jpg'],
    ];
    ?>
    <section class="gallery_area sect_pad">
        <div class="container">
            <div class="sect_title mb-5 text-center wow fadeIn">
                <h2 class="curve_title"><?php echo $photogallery->widget_name; ?></h2>
                <h3 class="big_title"><?php echo $photogallery->widget_title; ?></h3>
            </div>
            <div class="gallery_inner row">
                <?php foreach ($gallery as $image) { ?>
                    <div class="col-md-4 col-6">
                        <div class="item mb-4">
                            <a data-fancybox="gallery" href="<?php echo base_url($image->image); ?>">
                                <img src="<?php echo base_url($image->image); ?>" class="img-fluid" alt="gallery_image">
                            </a>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>
<?php } ?>