@php
$normal_gallary_notice = App\Models\Navigation::query()
->where('nav_category', 'Main')
->where('page_type', 'Normal')
->orderBy('position', 'ASC')
->get();

$menus = App\Models\Navigation::query()
->where('nav_category', 'Main')
->where('page_type', '!=', 'Job')
->where('page_type', '!=', 'Notice')
->where('parent_page_id', 0)
->where('page_status', '1')
->orderBy('position', 'ASC')
->get();

$global_setting = App\Models\GlobalSetting::first();
if (isset($normal)) {
$seo = $normal;
} elseif (isset($job)) {
$seo = $job;
}
@endphp


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Saptashree Academy | Damak</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="{{ $seo->meta_keywords ?? '' }}">
    <meta name="description" content="{{ $seo->meta_description ?? '' }}">

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/uploads/icons/{{ $global_setting->site_logo }}">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Inter:wght@700;800&family=Montserrat&family=Poppins&display=swap"
        rel="stylesheet">

    <!-- Font Awesome (latest only, keep v6) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('website/lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('website/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">

    <!-- Theme Stylesheet -->
    <link id="theme-style" rel="stylesheet" href="{{ asset('website/assets/css/theme-1.css') }}">

    <!-- Bootstrap Stylesheet -->
    <link href="{{ asset('website/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Custom Stylesheet -->
    <link href="{{ asset('website/css/style.css') }}" rel="stylesheet">
</head>


<body>
    <!-- Top Bar -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />

    <div class="topbar-area">
        <div class="container">
            <div class="row align-items-center">

                <!-- Contact -->
                <div class="col-lg-6 d-none d-lg-flex align-items-center gap-4">

                    <a href="mailto:{{ $global_setting->site_email }}" class="top-contact">
                        <div class="contact-icon">
                            <i class="fa-solid fa-envelope"></i>
                        </div>
                        {{ $global_setting->site_email }}
                    </a>

                    <a href="tel:{{ $global_setting->phone }}" class="top-contact">
                        <div class="contact-icon">
                            <i class="fa-solid fa-phone"></i>
                        </div>
                        {{ $global_setting->phone }}
                    </a>

                </div>

                <!-- Social -->
                <div class="col-12 col-lg-6 d-flex justify-content-center justify-content-lg-end gap-3">

                    <a href="{{ $global_setting->facebook ?? '#' }}" target="_blank" class="social-icon facebook">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="{{ $global_setting->twitter ?? '#' }}" target="_blank" class="social-icon twitter">
                        𝕏
                    </a>

                    <a href="{{ $global_setting->instagram ?? '#' }}" target="_blank" class="social-icon instagram">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                </div>

            </div>
        </div>
    </div>
    <!--  end .container -->
    <!-- Navbar & Hero Start -->
    <!-- Navbar Start -->
    <div class="container-xxl position-relative p-0">
        <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-0 upri-navbar"
            style="background-color:#006cb5; height: 60px;">

            <!-- Logo -->
            <a href="/" class="image-hder navbar-brand d-flex justify-content-center align-items-center p-0"
                style="height: 100%; width: 160px; margin-left: 60px;">
                <img src="/uploads/icons/{{ $global_setting->site_logo }}" alt="Logo" style="width: 100%;">
            </a>

            <!-- Toggler -->
            <button class="navbar-toggler" type="button" id="mobileMenuToggle">
                <span class="fa fa-bars text-white"></span>
            </button>

            <!-- Desktop Menu -->
            <div class="collapse navbar-collapse nav-border-small" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0" style="width: 100%; padding:15px; margin-bottom: 10px;">
                    <a href="/" class="nav-item nav-link active">Home</a>

                    @foreach ($menus as $menu)
                    <div class="nav-item @if ($menu->childs->count() > 0) dropdown @endif">
                        <a href="@if($menu->nav_name == 'aboutus' || $menu->nav_name == 'notice' || $menu->nav_name == 'gallery') # 
                            @elseif ($menu->nav_name == 'blog') /{{ $menu->nav_name }}?content=blogs 
                                @else /{{ $menu->nav_name }} @endif"
                            class="nav-link @if ($menu->childs->count() > 0 && !in_array($menu->id, ['2752', '2751', '2756'])) dropdown-toggle @endif"
                            @if ($menu->childs->count() > 0 && !in_array($menu->id, ['2752', '2751', '2756']))
                            data-bs-toggle="dropdown" role="button" aria-expanded="false" @endif>
                            {{ $menu->caption }}
                        </a>

                        @if ($menu->childs->count() > 0 && !in_array($menu->id, ['2415', '2537', '2752', '2751',
                        '2756']))
                        <div class="dropdown-menu m-0">
                            @if ($menu->id != '2753')
                            @foreach ($menu->childs as $sub)
                            <a href="/{{ $menu->nav_name }}/{{ $sub->nav_name }}"
                                class="dropdown-item">{{ $sub->caption }}</a>
                            @endforeach
                            @else
                            @php $subpage = $menu->childs->first() @endphp
                            @foreach ($subpage->childs as $sub)
                            <a href="/{{ $menu->nav_name }}/{{ $sub->nav_name }}"
                                class="dropdown-item">{{ $sub->caption }}</a>
                            @endforeach
                            @endif
                        </div>
                        @endif
                    </div>
                    @endforeach

                    <a href="/contact" class="nav-item nav-link">Contact</a>
                </div>
            </div>
        </nav>

        <!-- Mobile Overlay Menu -->
        <div id="mobileMenuOverlay">
            <span id="mobileMenuClose" class="fa fa-times" style="margin-right: 40px !important;"></span>
            <div class="navbar-nav flex-column mobile-menu-body">
                <a href="/" class="mobile-nav-link">Home</a>

                @foreach ($menus as $menu)
                <div class="mobile-nav-item">
                    <a href="@if($menu->nav_name == 'aboutus' || $menu->nav_name == 'notice' || $menu->nav_name == 'gallery') # 
                         @elseif ($menu->nav_name == 'blog') /{{ $menu->nav_name }}?content=blogs 
                             @else /{{ $menu->nav_name }} @endif" class="mobile-nav-link">{{ $menu->caption }}</a>

                    @if ($menu->childs->count() > 0 && !in_array($menu->id, ['2415', '2537', '2752', '2751', '2756']))
                    <div class="mobile-submenu">
                        @if ($menu->id != '2753')
                        @foreach ($menu->childs as $sub)
                        <a href="/{{ $menu->nav_name }}/{{ $sub->nav_name }}"
                            class="mobile-submenu-link">{{ $sub->caption }}</a>
                        @endforeach
                        @else
                        @php $subpage = $menu->childs->first() @endphp
                        @foreach ($subpage->childs as $sub)
                        <a href="/{{ $menu->nav_name }}/{{ $sub->nav_name }}"
                            class="mobile-submenu-link">{{ $sub->caption }}</a>
                        @endforeach
                        @endif
                    </div>
                    @endif
                </div>
                @endforeach

                <a href="/contact" class="mobile-nav-link">Contact</a>
            </div>
        </div>
    </div>

    <style>
    /* Desktop nav stays as it is */
    .navbar-nav .nav-link {
        font-weight: 700 !important;
        color: black;
        transition: color 0.3s;
    }

    .navbar-nav .nav-link:hover {
        color: red;
    }

    /* Mobile overlay menu */
    /* Mobile overlay menu clean style */
    #mobileMenuOverlay {
        position: fixed;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background-color: #fff;
        /* clean white background */
        z-index: 9999;
        transition: left 0.35s ease;
        overflow-y: auto;
        display: flex;
        flex-direction: column;
        padding: 60px 20px 30px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    /* Slide-in effect */
    #mobileMenuOverlay.active {
        left: 0;
        animation: fadeSlideIn 0.35s ease forwards;
    }

    @keyframes fadeSlideIn {
        0% {
            left: -100%;
            opacity: 0;
        }

        100% {
            left: 0;
            opacity: 1;
        }
    }

    /* Close button */
    #mobileMenuClose {
        position: fixed;
        top: 20px;
        right: 20px;
        font-size: 28px;
        color: #333;
        cursor: pointer;
        z-index: 10000;
    }

    /* Contact info section */
    #mobileMenuOverlay .contact-info {
        margin-bottom: 30px;
        color: #333;
        font-size: 14px;
        line-height: 1.6;
    }

    #mobileMenuOverlay .contact-info a {
        color: #333;
        text-decoration: none;
    }

    #mobileMenuOverlay .contact-info a:hover {
        color: #007BFF;
    }

    /* Menu body */
    .mobile-menu-body {
        display: flex;
        flex-direction: column;
    }

    /* Main links */
    .mobile-nav-link {
        font-size: 17px;
        font-weight: 500;
        color: #333;
        text-decoration: none;
        padding: 12px 0;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid #eee;
        transition: color 0.3s;
    }

    .mobile-nav-link:hover {
        color: #007BFF;
    }

    /* Submenu toggle "+" */
    .mobile-nav-item>.mobile-nav-link::after {
        content: '+';
        font-size: 16px;
        color: #555;
        transition: transform 0.3s;
    }

    .mobile-nav-item.active>.mobile-nav-link::after {
        transform: rotate(45deg);
        /* turn + into × when open */
    }

    /* Submenu */
    .mobile-submenu {
        padding-left: 15px;
        display: none;
        flex-direction: column;
        gap: 5px;
    }

    .mobile-submenu.active {
        display: flex;
        animation: submenuFadeSlide 0.3s ease forwards;
    }

    @keyframes submenuFadeSlide {
        0% {
            opacity: 0;
            transform: translateY(-5px);
        }

        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Submenu links */
    .mobile-submenu-link {
        font-size: 15px;
        color: #555;
        text-decoration: none;
        padding: 6px 0;
        transition: color 0.3s;
    }

    .mobile-submenu-link:hover {
        color: #007BFF;
    }

    /* Responsive adjustments */
    @media (max-width: 991px) {
        #navbarCollapse {
            display: none !important;
        }
    }

    /* Mobile overlay menu */
    #mobileMenuOverlay {
        position: fixed;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background-color: #fff;
        z-index: 9999;
        display: flex;
        flex-direction: column;
        padding: 60px 20px 30px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.25);
        overflow-y: auto;
        transition: left 0.35s ease;
    }

    /* Slide-in overlay */
    #mobileMenuOverlay.active {
        left: 0;
        animation: overlayFadeSlide 0.35s ease forwards;
    }

    @keyframes overlayFadeSlide {
        0% {
            left: -100%;
            opacity: 0;
        }

        100% {
            left: 0;
            opacity: 1;
        }
    }

    /* Close button */
    #mobileMenuClose {
        position: fixed;
        top: 20px;
        right: 20px;
        font-size: 28px;
        color: #333;
        cursor: pointer;
        z-index: 10000;
        opacity: 0;
        pointer-events: none;
        transition: opacity 0.3s ease;
    }

    #mobileMenuOverlay.active+#mobileMenuClose,
    #mobileMenuClose.active {
        opacity: 1;
        pointer-events: auto;
    }

    /* Contact info */
    #mobileMenuOverlay .contact-info {
        margin-bottom: 20px;
        font-size: 13px;
        /* smaller text */
        line-height: 1.4;
        color: #333;
    }

    #mobileMenuOverlay .contact-info a {
        color: #333;
        text-decoration: none;
    }

    #mobileMenuOverlay .contact-info a:hover {
        color: #007BFF;
    }

    /* Menu items */
    .mobile-menu-body {
        display: flex;
        flex-direction: column;
        gap: 6px;
        /* smaller gap between menu items */
    }

    /* Main links */
    .mobile-nav-link {
        font-size: 15px;
        /* smaller text */
        font-weight: 700;
        /* bold text */
        color: #333;
        text-decoration: none;
        padding: 8px 0;
        /* less padding */
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid #eee;
        transition: all 0.3s ease;
    }

    .mobile-nav-link:hover {
        color: #007BFF;
    }

    /* Submenu toggle "+" */
    .mobile-nav-item>.mobile-nav-link::after {
        content: '+';
        font-size: 16px;
        font-weight: 700;
        /* bold plus sign */
        color: #555;
        transition: transform 0.3s ease;
    }

    .mobile-nav-item.active>.mobile-nav-link::after {
        transform: rotate(45deg);
    }

    /* Submenu */
    .mobile-submenu {
        padding-left: 15px;
        max-height: 0;
        overflow: hidden;
        display: flex;
        flex-direction: column;
        gap: 6px;
        transition: max-height 0.35s ease, opacity 0.35s ease;
        opacity: 0;
    }

    .mobile-submenu.active {
        max-height: 500px;
        opacity: 1;
    }

    /* Submenu links */
    .mobile-submenu-link {
        font-size: 14px;
        /* smaller text */
        font-weight: 700;
        /* bold submenu text */
        color: #555;
        text-decoration: none;
        padding: 6px 0;
        transition: color 0.3s ease;
    }

    .mobile-submenu-link:hover {
        color: #007BFF;
    }

    /* Responsive adjustments */
    @media (max-width: 991px) {
        #navbarCollapse {
            display: none !important;
        }
    }
    </style>

    <script>
    document.addEventListener('DOMContentLoaded', function() {
        const toggleBtn = document.getElementById('mobileMenuToggle');
        const overlay = document.getElementById('mobileMenuOverlay');
        const closeBtn = document.getElementById('mobileMenuClose');

        // Open overlay
        toggleBtn.addEventListener('click', () => {
            overlay.classList.add('active');
            closeBtn.style.display = 'block';
        });

        // Close overlay
        closeBtn.addEventListener('click', () => {
            overlay.classList.remove('active');
            closeBtn.style.display = 'none';
        });

        // Click outside to close
        overlay.addEventListener('click', e => {
            if (e.target === overlay) {
                overlay.classList.remove('active');
                closeBtn.style.display = 'none';
            }
        });

        // Dropdown toggle for mobile menu
        document.querySelectorAll('.mobile-nav-item > .mobile-nav-link').forEach(link => {
            link.addEventListener('click', function(e) {
                const submenu = this.nextElementSibling;
                if (submenu && submenu.classList.contains('mobile-submenu')) {
                    e.preventDefault(); // prevent navigation
                    submenu.classList.toggle('active');
                }
            });
        });
    });
    </script>


    @yield('content')

    <!-- banner start  -->
    <!-- about us start  -->
    <!-- Service Start -->
    <!-- Start Study Abroad -->
    <!-- Testimonial Start -->
    <!-- Gallery Start -->
    <!-- Client Section -->
    <!-- Blog Start -->


    <!-- Footer Start -->

    <!-- =========================
MINIMAL PREMIUM FOOTER
========================= -->

    <footer class="clean-footer">
        <div class="container">
            <div class="row align-items-start gy-5">
                <!-- LEFT -->
                <div class="col-lg-4">
                    <img src="/uploads/icons/{{ $global_setting->site_logo }}" alt="Logo" class="footer-logo">
                    <div class="footer-social">
                        <a href="{{ $global_setting->facebook ?? '#' }}">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a href="{{ $global_setting->twitter ?? '#' }}">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a href="{{ $global_setting->linkedin ?? '#' }}">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </div>
                </div>

                <!-- LINKS -->
                <div class="col-lg-2 col-md-4">

                    <h5 class="footer-title">Quick Links</h5>

                    <ul class="footer-links">

                        <li><a href="/about-one/about-us-one">About Us</a></li>
                        <li><a href="/services">Services</a></li>
                        <li><a href="/gallery/photo-gallery-one">Gallery</a></li>
                        <li><a href="/blog?content=blogs">Blog</a></li>
                        <li><a href="/contact">Contact</a></li>

                    </ul>

                </div>

                <!-- CONTACT -->
                <div class="col-lg-3 col-md-4">

                    <h5 class="footer-title">Contact</h5>

                    <div class="footer-contact">

                        <p>
                            <i class="fas fa-envelope"></i>
                            {{ $global_setting->contact_email ?? 'info@example.com' }}
                        </p>

                        <p>
                            <i class="fas fa-phone"></i>
                            {{ $global_setting->contact_phone ?? '+977 123456789' }}
                        </p>

                        <p>
                            <i class="fas fa-location-dot"></i>
                            {{ $global_setting->address ?? 'Kathmandu, Nepal' }}
                        </p>

                    </div>

                </div>

                <!-- MAP -->
                <div class="col-lg-3 col-md-4">

                    <h5 class="footer-title">Location</h5>

                    <div class="footer-map">
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3565.7537180684208!2d87.68190137543066!3d26.656366776800954!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39e58f83e5b05c25%3A0x17df51262106fc70!2sSaptashree%20Academy!5e0!3m2!1sen!2snp!4v1778857420410!5m2!1sen!2snp"
                            width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe>


                    </div>

                </div>

            </div>

            <!-- BOTTOM -->
            <div class="footer-bottom">

                <p>
                    © {{ date('Y') }}
                    {{ $global_setting->site_name ?? 'Your Site' }}.
                    All Rights Reserved. Developed by <a href="https://bhasika.com/" target="_blank"
                        style="color: #7c3aed; text-decoration: none;">BHASIKA</a>.
                </p>

            </div>

        </div>

    </footer>

    <!-- =========================
CSS
========================= -->

    <style>
    /* MAIN */
    .clean-footer {
        background: #0f172a;
        padding: 70px 0 25px;
        color: #fff;
    }

    /* LOGO */
    .footer-logo {
        width: 170px;
        margin-bottom: 18px;
    }

    /* TEXT */
    .footer-text {
        color: rgba(255, 255, 255, 0.7);
        line-height: 1.8;
        font-size: 14px;
        max-width: 320px;
    }

    /* TITLES */
    .footer-title {
        font-size: 17px;
        font-weight: 700;
        margin-bottom: 22px;
        color: #fff;
    }

    /* LINKS */
    .footer-links {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .footer-links li {
        margin-bottom: 12px;
    }

    .footer-links a {
        color: rgba(255, 255, 255, 0.7);
        text-decoration: none;
        transition: 0.3s;
        font-size: 14px;
    }

    .footer-links a:hover {
        color: #fff;
        padding-left: 4px;
    }

    /* CONTACT */
    .footer-contact p {
        color: rgba(255, 255, 255, 0.7);
        font-size: 14px;
        line-height: 1.8;
        margin-bottom: 12px;
        display: flex;
        gap: 10px;
    }

    .footer-contact i {
        color: #7c3aed;
        margin-top: 4px;
    }

    /* SOCIAL */
    .footer-social {
        display: flex;
        gap: 12px;
        margin-top: 20px;
    }

    .footer-social a {
        width: 38px;
        height: 38px;
        border-radius: 10px;
        background: rgba(255, 255, 255, 0.08);
        color: #fff;
        display: flex;
        align-items: center;
        justify-content: center;
        text-decoration: none;
        transition: 0.3s;
    }

    .footer-social a:hover {
        background: #7c3aed;
        transform: translateY(-3px);
    }

    /* MAP */
    .footer-map {
        border-radius: 14px;
        overflow: hidden;
    }

    .footer-map iframe {
        width: 100%;
        height: 180px;
        border: 0;
    }

    /* BOTTOM */
    .footer-bottom {
        margin-top: 50px;
        padding-top: 20px;
        border-top: 1px solid rgba(255, 255, 255, 0.08);
        text-align: center;
    }

    .footer-bottom p {
        margin: 0;
        color: rgba(255, 255, 255, 0.6);
        font-size: 14px;
    }

    /* RESPONSIVE */
    @media(max-width:991px) {

        .footer-logo {
            width: 140px;
        }

    }

    @media(max-width:768px) {

        .clean-footer {
            text-align: center;
        }

        .footer-text {
            margin: auto;
        }

        .footer-social {
            justify-content: center;
        }

        .footer-contact p {
            justify-content: center;
        }

    }
    </style>
    <!-- Footer End -->
    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/website/lib/wow/wow.min.js"></script>
    <script src="/website/lib/easing/easing.min.js"></script>
    <script src="/website/lib/waypoints/waypoints.min.js"></script>
    <script src="/website/lib/owlcarousel/owl.carousel.min.js"></script>
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Template Javascript -->
    <script src="/website/js/main.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>
    <!-- Bootstrap JS (needed for toggler & dropdowns) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- JS to fix dropdown click on mobile -->
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var dropdowns = document.querySelectorAll('.navbar-collapse .dropdown-toggle');

        dropdowns.forEach(function(dropdown) {
            dropdown.addEventListener('click', function(e) {
                if (window.innerWidth < 992) { // mobile only
                    e.preventDefault();
                    var parent = this.parentElement;
                    parent.classList.toggle('show');
                }
            });
        });
    });
    </script>

    <script>
    document.addEventListener("DOMContentLoaded", function() {
        const questions = document.querySelectorAll('.question');

        questions.forEach(function(question) {
            question.addEventListener('click', function() {
                const answer = this.nextElementSibling;
                if (answer.style.display === 'block') {
                    answer.style.display = 'none';
                    this.querySelector('.arrow').textContent =
                        '\u25BC'; // Unicode for down arrow
                } else {
                    answer.style.display = 'block';
                    this.querySelector('.arrow').textContent = '\u25B2'; // Unicode for up arrow
                }
            });
        });
    });

    document.addEventListener("DOMContentLoaded", function() {
        const tabs = document.querySelectorAll('.dd');

        tabs.forEach(tab => {
            tab.addEventListener('click', function() {
                tabs.forEach(t => t.classList.remove('active'));
                this.classList.add('active');
            });
        });
    });
    </script>`

    <script>
    $(document).ready(function() {
        var owl = $(".client-carousel");
        owl.owlCarousel({
            items: 4,
            loop: true,
            margin: 10,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            nav: false,
            dots: false,
            responsive: {
                0: {
                    items: 1
                },
                480: {
                    items: 2
                },
                768: {
                    items: 3
                },
                992: {
                    items: 4
                }
            }
        });

        // Custom Next/Prev buttons
        $("#next").click(function() {
            owl.trigger('next.owl.carousel', [300]);
        });
        $("#prev").click(function() {
            owl.trigger('prev.owl.carousel', [300]);
        });
    });
    </script>


    <style>
    .gallery-indicator-item.disable:hover {
        cursor: unset;
        background-color: unset;
    }

    /* Desktop/default styles */
    .footer-social {
        display: flex;
        gap: 10px;
    }

    .social-icon {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        color: white;
        transition: 0.3s;
        text-decoration: none;
    }

    .social-icon.facebook {
        background: #3b5998;
    }

    .social-icon.twitter {
        background: #000;
    }

    .social-icon.instagram {
        background: #e4405f;
    }

    /* Responsive: center on small screens */
    @media (max-width: 576px) {
        .footer-social {
            justify-content: center;
            flex-wrap: wrap;
        }
    }
    </style>
</body>

</html>