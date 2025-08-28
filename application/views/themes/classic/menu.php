<?php
$webinfo = $this->webinfo;
$pagetitle = 'Saffron Lites — Exquisite Catering for Every Occasion in Ontario';

if (!empty($seoterm)) {
    $seoinfo = $this->db
        ->select('*')
        ->from('tbl_seoption')
        ->where('title_slug', $seoterm)
        ->get()
        ->row();
    if (!empty($seoinfo->title)) {
        $pagetitle = $seoinfo->title;
    }
}
?>
<style>
    /* ===== SAFFRON LITES - Menu Page (Self-contained) ===== */
    :root {
        --saffron: #f4c542;
        --brown: #7b4f1d;
        --cream: #fff8e1;
        --soft-cream: #fffdf9;
        --muted: #555;
        --card-bg: #fff;
        --radius: 14px;
        --transition: all .35s ease;
    }

    /* Page layout */
    .page_header {
        background: linear-gradient(135deg, #fff7ef, #ffe9d6);
        padding: 30px 0;
        border-bottom: 1px solid #eee;
    }

    .page_header .big_title {
        font-size: 48px;
        color: var(--brown);
        margin: 0;
        font-weight: 700;
        letter-spacing: .2px;
    }

    .page_header .nav {
        margin: 8px 0 0;
        list-style: none;
        padding: 0;
        display: flex;
        align-items: center;
        gap: 8px;
        color: var(--brown);
    }

    .page_header .nav a {
        color: var(--brown);
        text-decoration: none;
    }

    .page_header .nav .active {
        color: var(--saffron);
        font-weight: 700;
    }

    /* Basic typography */
    .container {
        max-width: 1140px;
        margin: 0 auto;
        padding: 0 16px;
    }

    .sect_pad {
        padding: 60px 0;
    }

    .curve_title {
        color: var(--saffron);
        font-weight: 700;
        font-size: 28px;
        margin: 0 0 8px;
    }

    .lead {
        color: var(--muted);
    }

    /* Menu intro */
    .menu-intro {
        background: var(--soft-cream);
        padding: 28px;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.04);
        margin-bottom: 30px;
    }

    /* Menu - cuisine section */
    .cuisine {
        margin-bottom: 36px;
    }

    .cuisine .cuisine-head {
        display: flex;
        align-items: center;
        gap: 16px;
        margin-bottom: 18px;
    }

    .cuisine .cuisine-head .title {
        font-size: 26px;
        color: var(--brown);
        font-weight: 700;
    }

    .cuisine .cuisine-head .subtitle {
        color: var(--muted);
        margin-left: auto;
        font-size: 14px;
    }

    /* Dish submenu rows (long format) */
    .dish-row {
        display: flex;
        gap: 20px;
        background: linear-gradient(180deg, rgba(255, 255, 255, 1), rgba(255, 255, 255, 0.98));
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 8px 22px rgba(11, 11, 11, 0.06);
        margin-bottom: 14px;
        transition: var(--transition);
        align-items: stretch;
    }

    .dish-row:hover {
        transform: translateY(-6px);
        box-shadow: 0 16px 40px rgba(11, 11, 11, 0.09);
    }

    .dish-img {
        flex: 0 0 36%;
        max-width: 36%;
        height: 160px;
        overflow: hidden;
    }

    .dish-img img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform .5s ease;
        display: block;
    }

    .dish-row:hover .dish-img img {
        transform: scale(1.06);
    }

    .dish-info {
        flex: 1;
        padding: 18px 20px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .dish-name {
        font-size: 18px;
        color: var(--brown);
        font-weight: 700;
        margin: 0 0 6px;
    }

    .dish-desc {
        color: var(--muted);
        font-size: 14px;
        margin: 0 0 8px;
        line-height: 1.55;
    }

    .dish-meta {
        display: flex;
        gap: 8px;
        align-items: center;
        flex-wrap: wrap;
    }

    .dish-badge {
        font-size: 12px;
        padding: 6px 10px;
        border-radius: 999px;
        background: #fff4e7;
        color: var(--brown);
        border: 1px solid #ffd9b3;
    }

    /* Tiffin service vertical cards */
    .tiffin-grid {
        display: flex;
        gap: 20px;
        flex-wrap: wrap;
        margin-top: 18px;
    }

    .tiffin-card {
        flex: 1 1 320px;
        background: var(--card-bg);
        border-radius: 14px;
        overflow: hidden;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.06);
        transition: var(--transition);
        display: flex;
        flex-direction: column;
    }

    .tiffin-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 18px 48px rgba(0, 0, 0, 0.09);
    }

    .tiffin-card .tiffin-media {
        height: 180px;
        overflow: hidden;
    }

    .tiffin-card .tiffin-media img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform .45s ease;
    }

    .tiffin-card:hover .tiffin-media img {
        transform: scale(1.05);
    }

    .tiffin-card .tiffin-body {
        padding: 18px;
        flex: 1;
        display: flex;
        flex-direction: column;
    }

    .tiffin-card h4 {
        margin: 0 0 8px;
        color: var(--brown);
        font-size: 20px;
    }

    .tiffin-card p {
        color: var(--muted);
        margin: 0 0 12px;
        line-height: 1.6;
    }

    .tiffin-cta {
        margin-top: auto;
        display: flex;
        gap: 10px;
        align-items: center;
    }

    .btn-cta {
        padding: 10px 16px;
        border-radius: 30px;
        text-decoration: none;
        font-weight: 700;
    }

    .btn-ghost {
        background: #fff;
        border: 2px solid var(--saffron);
        color: var(--brown);
    }

    .btn-solid {
        background: var(--saffron);
        color: #fff;
        border: 2px solid var(--saffron);
    }

    /* Footnote / customization */
    .note-box {
        background: #fff8f1;
        border-radius: 12px;
        padding: 16px;
        color: var(--muted);
        box-shadow: 0 6px 14px rgba(0, 0, 0, 0.04);
    }

    /* Responsive */
    @media (max-width: 900px) {
        .dish-row {
            flex-direction: column;
        }

        .dish-img,
        .dish-info {
            max-width: 100%;
            flex: 0 0 100%;
        }

        .dish-img {
            height: 240px;
        }

        .tiffin-grid {
            flex-direction: column;
        }
    }
</style>

<!-- ================== PAGE HEADER ================== -->
<div class="page_header">
    <div class="container">
        <div style="display:flex;flex-wrap:wrap;align-items:center;gap:16px;">
            <div style="flex:1">
                <h1 class="big_title"><?php echo htmlspecialchars($pagetitle, ENT_QUOTES, 'UTF-8'); ?></h1>
                <div style="margin-top:8px;">
                    <ul class="nav">
                        <li><a href="<?php echo base_url(); ?>">Home</a></li>
                        <li><i class="fa fa-angle-right" style="margin:0 6px;color:#d9b77a;"></i></li>
                        <li class="active">Our Menu</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ================== INTRO ================== -->
<section class="sect_pad">
    <div class="container">
        <div class="menu-intro">
            <h2 class="curve_title">A World of Flavors – Our Menu</h2>
            <p class="lead">Our diverse menu reflects the vibrant culinary traditions of South Asia and beyond, crafted
                to suit every palate and occasion. Explore our offerings below and click Book an Event to discuss a
                fully customised menu.</p>
        </div>

        <!-- ================== SOUTH ASIAN ================== -->
        <div class="cuisine" id="south-asian">
            <div class="cuisine-head">
                <div class="title">South Asian (Indian &amp; Pakistani)</div>
                <div class="subtitle">Butter Chicken, Biryani, Nihari, Tandoori platters & more</div>
            </div>

            <!-- Dish: Butter Chicken -->
            <div class="dish-row" role="region" aria-labelledby="butter-chicken">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/butter_chicken.jpg'); ?>"
                        alt="Butter Chicken - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="butter-chicken" class="dish-name">Butter Chicken</h3>
                    <p class="dish-desc">Creamy tomato-based chicken curry, slow-simmered with aromatic spices and
                        finished with butter and cream. A crowd favourite for weddings and events.</p>
                    <div class="dish-meta">
                        <span class="dish-badge">Classic</span>
                        <span class="dish-badge">Popular</span>
                    </div>
                </div>
            </div>

            <!-- Dish: Chicken Biryani -->
            <div class="dish-row" role="region" aria-labelledby="chicken-biryani">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/chicken_biryani.jpg'); ?>"
                        alt="Chicken Biryani - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="chicken-biryani" class="dish-name">Chicken Biryani</h3>
                    <p class="dish-desc">Fragrant basmati rice layered with marinated chicken, saffron and slow-cooked
                        to perfection — served with raita and salad.</p>
                    <div class="dish-meta">
                        <span class="dish-badge">Signature</span>
                        <span class="dish-badge">Aromatic</span>
                    </div>
                </div>
            </div>
            <div class="dish-row" role="region" aria-labelledby="butter-chicken">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/nihari.jpg'); ?>" alt="Butter Chicken - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="nihari" class="dish-name">Nihari</h3>
                    <p class="dish-desc">It involves valuing its slow-cooked, richly spiced stew style that blends tender
                        meat with aromatic spices, showcasing the depth and tradition of South Asian culinary heritage.
                    </p>
                    <div class="dish-meta">
                        <span class="dish-badge">Classic</span>
                        <span class="dish-badge">Popular</span>
                    </div>
                </div>
            </div>
            <!-- Dish: Tandoori Platter -->
            <div class="dish-row" role="region" aria-labelledby="tandoori-platter">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/tandoori_platter.jpg'); ?>"
                        alt="Tandoori Platter - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="tandoori-platter" class="dish-name">Tandoori Platter</h3>
                    <p class="dish-desc">A selection of tandoori classics — succulent kebabs and roasted vegetables
                        cooked in our live tandoor for smoky char and flavour.</p>
                    <div class="dish-meta"><span class="dish-badge">Live Station</span></div>
                </div>
            </div>
        </div>

        <!-- ================== KASHMIRI ================== -->
        <div class="cuisine" id="kashmiri">
            <div class="cuisine-head">
                <div class="title">Kashmiri Specialties</div>
                <div class="subtitle">Authentic Wazwan — Rogan Josh, Gushtaba, Yakhni, Tabak Maaz</div>
            </div>

            <div class="dish-row" role="region" aria-labelledby="rogan-josh">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/rogan_josh.jpg'); ?>" alt="Rogan Josh - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="rogan-josh" class="dish-name">Rogan Josh</h3>
                    <p class="dish-desc">Tender lamb cooked in aromatic Kashmiri red chilies and yogurt — rich, fragrant
                        and deeply satisfying.</p>
                    <div class="dish-meta"><span class="dish-badge">Wazwan</span></div>
                </div>
            </div>

            <div class="dish-row" role="region" aria-labelledby="gushtaba">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/gushtaba.jpg'); ?>" alt="Gushtaba - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="gushtaba" class="dish-name">Gushtaba</h3>
                    <p class="dish-desc">Delicate meatballs cooked in a spiced yogurt gravy — a celebratory Wazwan
                        classic.</p>
                    <div class="dish-meta"><span class="dish-badge">Traditional</span></div>
                </div>
            </div>
        </div>

        <!-- ================== CHINESE ================== -->
        <div class="cuisine" id="chinese">
            <div class="cuisine-head">
                <div class="title">Chinese</div>
                <div class="subtitle">Manchurian, Hakka Noodles, Fried Rice, Sweet & Sour</div>
            </div>

            <div class="dish-row" role="region" aria-labelledby="manchurian">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/manchurian.jpg'); ?>" alt="Manchurian - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="manchurian" class="dish-name">Vegetable Manchurian</h3>
                    <p class="dish-desc">Crispy veg dumplings tossed in a tangy-spicy Indo-Chinese sauce — great as
                        starter or main.</p>
                    <div class="dish-meta"><span class="dish-badge">Indo-Chinese</span></div>
                </div>
            </div>

            <div class="dish-row" role="region" aria-labelledby="hakka-noodles">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/hakka_noodles.jpg'); ?>"
                        alt="Hakka Noodles - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="hakka-noodles" class="dish-name">Hakka Noodles</h3>
                    <p class="dish-desc">Stir-fried noodles with crisp vegetables and savoury sauces — a crowd-pleasing
                        favourite.</p>
                </div>
            </div>
        </div>

        <!-- ================== CONTINENTAL ================== -->
        <div class="cuisine" id="continental">
            <div class="cuisine-head">
                <div class="title">Continental</div>
                <div class="subtitle">Pastas, Grilled Meats, Salads & Desserts</div>
            </div>

            <div class="dish-row" role="region" aria-labelledby="grilled-salmon">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/grilled_salmon.jpg'); ?>"
                        alt="Grilled Salmon - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="grilled-salmon" class="dish-name">Grilled Salmon</h3>
                    <p class="dish-desc">Fresh salmon fillet, grilled and served with seasonal vegetables and a light
                        lemon beurre blanc.</p>
                </div>
            </div>
        </div>

        <!-- ================== MUGHLAI ================== -->
        <div class="cuisine" id="mughlai">
            <div class="cuisine-head">
                <div class="title">Mughlai</div>
                <div class="subtitle">Shahi Paneer, Korma, Galouti Kebabs & royal flavours</div>
            </div>

            <div class="dish-row" role="region" aria-labelledby="shahi-paneer">
                <div class="dish-img">
                    <img src="<?php echo base_url('assets/images/shahi_paneer.jpg'); ?>"
                        alt="Shahi Paneer - Saffron Lites">
                </div>
                <div class="dish-info">
                    <h3 id="shahi-paneer" class="dish-name">Shahi Paneer</h3>
                    <p class="dish-desc">Creamy, mildly spiced paneer dish with a rich, royal sauce — perfect for plated
                        dinners or buffets.</p>
                </div>
            </div>
        </div>

        <!-- ================== CUSTOMIZATION NOTE ================== -->
        <div class="note-box" aria-live="polite">
            <strong>Customization Options:</strong>
            <p style="margin:8px 0 0;">Vegetarian, vegan, and gluten-free options available. We tailor menus for dietary
                restrictions, preferences, and portion sizes suitable for small gatherings or large events.</p>
        </div>

        <!-- ================== TIFFIN SERVICES (vertical cards) ================== -->
        <section class="tiffin-service sect_pad" aria-labelledby="tiffin-title"
            style="padding-top:36px;padding-bottom:10px;">
            <h2 id="tiffin-title" class="curve_title" style="text-align:center; margin-bottom:18px;">Daily Tiffin
                Services – Home-Style Meals Delivered</h2>
            <p class="lead" style="text-align:center; max-width:800px; margin:0 auto 18px;">Craving wholesome, delicious
                meals without the hassle of cooking? Our tiffin meals are freshly prepared, customizable and delivered
                across Ontario — ideal for busy professionals, students, and families.</p>

            <div class="tiffin-grid">

                <!-- Daily -->
                <article class="tiffin-card" role="article" aria-labelledby="tiffin-daily">
                    <div class="tiffin-media">
                        <img src="<?php echo base_url('assets/images/tiffin_daily.jpg'); ?>"
                            alt="Daily Tiffin - Saffron Lites">
                    </div>
                    <div class="tiffin-body">
                        <h4 id="tiffin-daily">Daily Plan</h4>
                        <p>Fresh, home-style lunch delivered every weekday. Perfect for professionals and students who
                            want nutritious, hearty meals without cooking.</p>
                        <ul style="margin:8px 0 12px; color:var(--muted);">
                            <li>Flexible delivery times</li>
                            <li>Rotating menu with seasonal dishes</li>
                            <li>Portion control & balanced nutrition</li>
                        </ul>
                        <div class="tiffin-cta">
                            <a href="<?php echo base_url('tiffin/subscribe/daily'); ?>" class="btn-cta btn-ghost">Learn
                                More</a>
                            <a href="<?php echo base_url('booking'); ?>" class="btn-cta btn-solid">Subscribe Now</a>
                        </div>
                    </div>
                </article>

                <!-- Weekly -->
                <article class="tiffin-card" role="article" aria-labelledby="tiffin-weekly">
                    <div class="tiffin-media">
                        <img src="<?php echo base_url('assets/images/tiffin_daily.jpg'); ?>"
                            alt="Weekly Tiffin - Saffron Lites">
                    </div>
                    <div class="tiffin-body">
                        <h4 id="tiffin-weekly">Weekly Plan</h4>
                        <p>One delivery per week with meals portioned for the week — a great balance between freshness
                            and convenience for families and busy households.</p>
                        <ul style="margin:8px 0 12px; color:var(--muted);">
                            <li>Choose your preferred 5 or 7 day set</li>
                            <li>Custom dietary options available</li>
                            <li>Eco-friendly packaging & reheating tips</li>
                        </ul>
                        <div class="tiffin-cta">
                            <a href="<?php echo base_url('tiffin/subscribe/weekly'); ?>"
                                class="btn-cta btn-ghost">Details</a>
                            <a href="<?php echo base_url('booking'); ?>" class="btn-cta btn-solid">Subscribe</a>
                        </div>
                    </div>
                </article>

                <!-- Monthly -->
                <article class="tiffin-card" role="article" aria-labelledby="tiffin-monthly">
                    <div class="tiffin-media">
                        <img src="<?php echo base_url('assets/images/tiffin_daily.jpg'); ?>"
                            alt="Monthly Tiffin - Saffron Lites">
                    </div>
                    <div class="tiffin-body">
                        <h4 id="tiffin-monthly">Monthly Plan</h4>
                        <p>Best for ongoing households who want a set-and-forget solution — receive weekly deliveries as
                            per plan and enjoy priority menu rotations.</p>
                        <ul style="margin:8px 0 12px; color:var(--muted);">
                            <li>Priority scheduling & priority dishes</li>
                            <li>Custom menus — vegan / Jain / low-sugar options</li>
                            <li>Discounts on larger subscriptions</li>
                        </ul>
                        <div class="tiffin-cta">
                            <a href="<?php echo base_url('tiffin/subscribe/monthly'); ?>" class="btn-cta btn-ghost">More
                                Info</a>
                            <a href="<?php echo base_url('booking'); ?>" class="btn-cta btn-solid">Get Started</a>
                        </div>
                    </div>
                </article>

            </div>
        </section>

    </div>
</section>