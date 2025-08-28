<!-- ================== PAGE HEADER ================== -->
<div class="page_header" style="background:#fff8e1; padding:30px 0; border-bottom:1px solid #eee;">
    <div class="container wow fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="page_header_content">
                    <h1 class="big_title" style="font-size:48px; font-weight:700; color:#7b4f1d;">Services</h1>
                    <ul class="m-0 nav" style="font-size:14px; color:#7b4f1d;">
                        <li><a href="/" style="color:#7b4f1d;">Home</a></li>
                        <li><i class="fa fa-angle-right mx-2"></i></li>
                        <li class="active" style="color:#f4c542;">Our Services</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ================== OUR SERVICES ================== -->
<section class="sect_pad" style="background:#fff;">
    <div class="container">
        <div class="section-head text-center mb-5">
            <h3 class="big_title" style="font-size:42px; color:#7b4f1d; font-weight:700;">Our Services</h3>
            <p class="lead m-0" style="color:#555; max-width:700px; ">From intimate gatherings to grand
                celebrations — we bring flavors, elegance, and unmatched service to every table.</p>
        </div>

        <style>
            .service-card {
                display: flex;
                flex-wrap: wrap;
                background: #fff8e1;
                border-radius: 16px;
                overflow: hidden;
                margin-bottom: 30px;
                box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
                transition: all 0.4s ease;
            }

            .service-card:hover {
                transform: translateY(-6px);
                box-shadow: 0 15px 35px rgba(0, 0, 0, 0.12);
            }

            .service-img {
                flex: 0 0 40%;
                max-width: 40%;
                overflow: hidden;
            }

            .service-img img {
                width: 100%;
                height: 100%;
                object-fit: cover;
                transition: transform 0.5s ease;
            }

            .service-card:hover .service-img img {
                transform: scale(1.05);
            }

            .service-content {
                flex: 0 0 60%;
                max-width: 60%;
                padding: 30px;
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            .service-content h4 {
                color: #7b4f1d;
                font-size: 24px;
                font-weight: 700;
                margin-bottom: 10px;
            }

            .service-content p {
                color: #555;
                font-size: 15px;
                line-height: 1.6;
                margin-bottom: 0;
            }

            @media (max-width: 768px) {

                .service-img,
                .service-content {
                    flex: 0 0 100%;
                    max-width: 100%;
                }

                .service-img {
                    height: 250px;
                }
            }
        </style>

        <!-- Service 1 -->
        <div class="service-card">
            <div class="service-img">
                <img src="<?php echo base_url('assets/images/service_event.jpg'); ?>" alt="Event Catering">
            </div>
            <div class="service-content">
                <h4>Event Catering</h4>
                <p>Full-service catering for weddings, engagements, birthdays, and anniversaries. From planning to
                    plating, our team handles every detail so you can enjoy your big day with elegance and flavor.</p>
            </div>
        </div>

        <!-- Service 2 -->
        <div class="service-card">
            <div class="service-img">
                <img src="<?php echo base_url('assets/images/service_corporate.jpg'); ?>" alt="Corporate Catering">
            </div>
            <div class="service-content">
                <h4>Corporate Catering</h4>
                <p>Tailored meal plans for corporate lunches, team events, and conferences. Our healthy, flavorful menus
                    keep your guests energized and impressed, no matter the size of the event.</p>
            </div>
        </div>

        <!-- Service 3 -->
        <div class="service-card">
            <div class="service-img">
                <img src="<?php echo base_url('assets/images/service_family.jpg'); ?>" alt="Family Functions">
            </div>
            <div class="service-content">
                <h4>Family Functions & Celebrations</h4>
                <p>From intimate family dinners to large reunions, we customize menus to suit your preferences,
                    including both vegetarian and non-vegetarian options to delight every guest.</p>
            </div>
        </div>

        <!-- Service 4 -->
        <div class="service-card">
            <div class="service-img">
                <img src="<?php echo base_url('assets/images/service_tiffin.jpg'); ?>" alt="Tiffin Services">
            </div>
            <div class="service-content">
                <h4>Tiffin Services</h4>
                <p>Nutritious and delicious home-style meals delivered across the GTA. Ideal for students,
                    professionals, and families looking for authentic flavors every day.</p>
            </div>
        </div>

        <!-- Service 5 -->
        <div class="service-card">
            <div class="service-img">
                <img src="<?php echo base_url('assets/images/service_custom.jpg'); ?>" alt="Customized Menus">
            </div>
            <div class="service-content">
                <h4>Customized Menus</h4>
                <p>Whether you need vegan, Jain, gluten-free, or diabetic-friendly meals, we design menus tailored to
                    your exact needs without compromising on taste or presentation.</p>
            </div>
        </div>

        <!-- Service 6 -->
        <div class="service-card">
            <div class="service-img">
                <img src="<?php echo base_url('assets/images/service_kashmiri.jpg'); ?>" alt="Kashmiri Cuisine">
            </div>
            <div class="service-content">
                <h4>Specialization in Kashmiri Cuisine</h4>
                <p>Indulge in the rich, aromatic flavors of Kashmir with dishes like Rogan Josh, Gushtaba, and Dum Aloo,
                    prepared using authentic spices and traditional cooking techniques.</p>
            </div>
        </div>

    </div>
</section>


<!-- ================== WEDDINGS & CELEBRATIONS ================== -->
<section class="sect_pad" style="background:#fff;">
    <div class="container">
        <div class="section-head text-center mb-5">
            <h3 class="big_title" style="font-size:36px; color:#7b4f1d;">Weddings & Celebrations</h3>
            <p class="lead m-0" style="color:#555;">Bespoke menus, flawless service, timeless presentation.</p>
        </div>
        <div class="row">
            <!-- Card 1 -->
            <div class="col-md-4 mb-4">
                <div style="border-radius:12px; overflow:hidden; box-shadow:0 5px 20px rgba(0,0,0,0.1);">
                    <img src="<?php echo base_url('assets/images/wed-classic.jpg'); ?>" class="img-fluid">
                    <div style="padding:20px;">
                        <h4 style="color:#7b4f1d;">Classic North Indian</h4>
                        <p style="color:#555;">Live tandoor • Chaat station • Grand dessert bar</p>
                        <span class="badge" style="background:#f4c542; color:#fff;">Veg & Non-Veg</span>
                        <span class="badge" style="background:#fff8e1; color:#7b4f1d;">Jain Options</span>
                    </div>
                </div>
            </div>
            <!-- Card 2 -->
            <div class="col-md-4 mb-4">
                <div style="border-radius:12px; overflow:hidden; box-shadow:0 5px 20px rgba(0,0,0,0.1);">
                    <img src="<?php echo base_url('assets/images/wed-kashmiri.jpg'); ?>" class="img-fluid">
                    <div style="padding:20px;">
                        <h4 style="color:#7b4f1d;">Kashmiri Wazwan</h4>
                        <p style="color:#555;">Rogan Josh • Gushtaba • Yakhni • Tabak Maaz</p>
                        <span class="badge" style="background:#f4c542; color:#fff;">Authentic Spices</span>
                        <span class="badge" style="background:#fff8e1; color:#7b4f1d;">Cultural Service</span>
                    </div>
                </div>
            </div>
            <!-- Card 3 -->
            <div class="col-md-4 mb-4">
                <div style="border-radius:12px; overflow:hidden; box-shadow:0 5px 20px rgba(0,0,0,0.1);">
                    <img src="<?php echo base_url('assets/images/wed-fusion.jpg'); ?>" class="img-fluid">
                    <div style="padding:20px;">
                        <h4 style="color:#7b4f1d;">Modern Fusion</h4>
                        <p style="color:#555;">Global canapés • Indo-Chinese • Live pasta/grill</p>
                        <span class="badge" style="background:#f4c542; color:#fff;">Custom Themes</span>
                        <span class="badge" style="background:#fff8e1; color:#7b4f1d;">Diet-Friendly</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center mt-4">
            <a href="/menu"
                style="padding:10px 20px; background:#fff; border:2px solid #f4c542; color:#7b4f1d; border-radius:30px; text-decoration:none; margin-right:10px;">View
                Our Menu</a>
            <a href="/booking"
                style="padding:10px 20px; background:#f4c542; color:#fff; border-radius:30px; text-decoration:none;">Book
                an Event</a>
        </div>
    </div>
</section>