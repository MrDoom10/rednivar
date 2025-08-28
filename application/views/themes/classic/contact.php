<style>
    /* ===== SAFFRON LITES - Premium Contact Page ===== */
    :root {
        --saffron: #f4c542;
        --orangish: #ffe9d6;
        --orange: #eb922cff;
        --brown: #7b4f1d;
        --cream: #fff8e1;
        --soft-cream: #fffdf9;
        --muted: #555;
        --card-bg: #fff;
        --radius: 14px;
        --transition: all .35s ease;
    }

    body {
        font-family: 'Segoe UI', Tahoma, sans-serif;
    }

    .page_header .big_title {
        font-size: 48px;
        color: var(--brown);
        margin: 0;
        font-weight: 700;
        letter-spacing: .2px;
    }

    /* Header */
    .page_header {
        background: linear-gradient(135deg, #fff7ef, #ffe9d6);
        padding: 40px 0;
        padding-left: 200px;
        text-align: left;
        border-bottom: 1px solid #eee;
    }

    .page_header .big_title {
        font-size: 48px;
        color: var(--brown);
        font-weight: 800;
        margin-bottom: 8px;
    }

    .page_header .nav {
        list-style: none;
        padding: 0;
        margin: 0;
        display: inline-flex;
        gap: 8px;
        font-size: 15px;
        justify-content: flex-start;
    }

    .page_header .nav a {
        color: var(--brown);
        text-decoration: none;
        transition: var(--transition);
    }

    .page_header .nav a:hover {
        color: var(--saffron);
    }

    .page_header .nav .active {
        color: var(--saffron);
        font-weight: 700;
    }

    /* Contact section */
    .contact_area {
        background: var(--cream);
        padding: 70px 0;
    }

    .contact_inner {
        display: flex;
        flex-wrap: wrap;
        gap: 40px;
    }

    /* Contact info */
    .contact-card {
        flex: 1;
        min-width: 280px;
        background: var(--card-bg);
        padding: 30px;
        border-radius: var(--radius);
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
        animation: fadeUp 0.6s ease forwards;
    }

    .contact-card h2 {
        color: var(--brown);
        font-weight: 800;
        margin-bottom: 10px;
    }

    .contact-card p {
        color: var(--muted);
        margin-bottom: 34px;
        font-size: 15px;
    }

    .contact-info-block {
        background: var(--soft-cream);
        padding: 16px 18px;
        border-radius: var(--radius);
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.04);
        margin-bottom: 18px;
        transition: var(--transition);
    }

    .contact-info-block:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 14px rgba(0, 0, 0, 0.06);
    }

    .contact-info-block h5 {
        font-weight: bold;
        color: var(--saffron);
        margin-bottom: 5px;
        font-size: 16px;
    }

    .contact-info-block p,
    .contact-info-block a {
        font-size: 15px;
        color: var(--muted);
        text-decoration: none;
    }

    .contact-info-block a:hover {
        color: var(--orange);
    }

    /* Form */
    .form-card {
        flex: 1.3;
        min-width: 300px;
        background: var(--card-bg);
        padding: 30px;
        border-radius: var(--radius);
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.06);
        animation: fadeUp 0.8s ease forwards;
    }

    .form-card h4 {
        color: var(--brown);
        font-weight: 800;
        margin-bottom: 18px;
    }

    .form-group {
        margin-bottom: 26px;
    }

    label {
        font-weight: 600;
        font-size: 14px;
        color: var(--brown);
        display: block;
        margin-bottom: 6px;
    }

    input,
    select,
    textarea {
        border-radius: var(--radius);
        border: 1px solid #ddd;
        padding: 12px;
        font-size: 14px;
        width: 100%;
        transition: var(--transition);
    }

    input:focus,
    select:focus,
    textarea:focus {
        border-color: var(--orange);
        outline: none;
        box-shadow: 0 0 6px rgba(244, 197, 66, 0.4);
    }

    button {
        background: var(--saffron);
        color: var(--brown);
        border: none;
        padding: 14px;
        font-weight: bold;
        border-radius: var(--radius);
        width: 100%;
        transition: var(--transition);
        font-size: 15px;
    }

    button:hover {
        background: var(--orange);
        color: #fff;
        transform: translateY(-1px);
    }

    /* Animation */
    @keyframes fadeUp {
        0% {
            opacity: 0;
            transform: translateY(15px);
        }

        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>

<!-- Header -->
<div class="page_header">
    <h1 class="big_title"><?php echo htmlspecialchars($pagetitle, ENT_QUOTES, 'UTF-8'); ?>Contact Details</h1>
    <ul class="m-0 nav">
        <li><a href="<?php echo base_url(); ?>">Home</a></li>
        <li><i class="fa fa-angle-right" style="color:var(--saffron);"></i></li>
        <li class="active">Our Contact Details</li>
    </ul>
</div>

<!-- Contact Section -->
<section class="contact_area">
    <div class="container">
        <div class="contact_inner">

            <!-- Contact Info Card -->
            <div class="contact-card">
                <h2>Contact Us</h2>
                <p>We’d Love to Hear From You! Reach out for bookings, catering inquiries, or general questions.</p>

                <div class="contact-info-block">
                    <h5>📍 Office</h5>
                    <p>Toronto, ON (Serving all of Ontario)</p>
                </div>
                <div class="contact-info-block">
                    <h5>📞 Phone</h5>
                    <p>+1 647 594 7037</p>
                </div>
                <div class="contact-info-block">
                    <h5>📧 Email</h5>
                    <p><a href="mailto:info@rednivar.ca">info@rednivar.ca</a></p>
                </div>
            </div>

            <!-- Form Card -->
            <div class="form-card">
                <h4>Booking & Inquiries Form</h4>
                <form action="#" method="post">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="text" placeholder="Your Name" required>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" placeholder="Your Email" required>
                    </div>
                    <div class="form-group">
                        <label>Phone</label>
                        <input type="text" placeholder="Your Phone" required>
                    </div>
                    <div class="form-group">
                        <label>Event Date</label>
                        <input type="date" required>
                    </div>
                    <div class="form-group">
                        <label>Service Type</label>
                        <select required>
                            <option value="">Select a Service</option>
                            <option>Catering</option>
                            <option>Tiffin Service</option>
                            <option>Event Booking</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Message</label>
                        <textarea rows="4" placeholder="Your message..."></textarea>
                    </div>
                    <button type="submit">Send Message</button>
                </form>
            </div>

        </div>
    </div>
</section>