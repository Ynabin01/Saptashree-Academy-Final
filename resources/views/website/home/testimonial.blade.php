<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

<!-- =========================
TESTIMONIAL SECTION
========================= -->
<div class="tsx-wrap">
    <!-- HEADER -->

    <div class="section-header">
        <span class="section-tag">Testimonials</span>
        <h2 class="section-title">
            <span class="light-text">What</span>
            Students
            <span class="gradient-text">Say</span>
        </h2>
        <p class="section-subtitle">
            A modern collection of memories and visual stories.
        </p>
    </div>

    <!-- SWIPER -->
    <div class="swiper tsx-slider">
        <div class="swiper-wrapper">
            @foreach ($testimonial as $test)
            <div class="swiper-slide">
                <div class="tsx-card">
                    <div class="tsx-quote">❝</div>
                    <div class="tsx-avatar">
                        <img src="{{ $test->banner_image ?? '' }}">
                    </div>
                    <p class="tsx-text">“{{ strip_tags($test->short_content) }}”</p>
                    <h4 class="tsx-name">{{ $test->caption }}</h4>
                    <span class="tsx-role">{{ $test->short_content }}</span>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>

<!-- =========================
SWIPER JS
========================= -->
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<script>
new Swiper('.tsx-slider', {
    slidesPerView: 3,
    spaceBetween: 30,
    loop: true,
    speed: 8000, // smooth continuous scroll
    autoplay: {
        delay: 0,
        disableOnInteraction: false
    },
    freeMode: true,
    freeModeMomentum: false,
    allowTouchMove: false, // disable manual drag for marquee effect
    loopedSlides: 50, // enough clones for seamless loop
    direction: 'horizontal',

    // Handle fewer slides gracefully
    breakpoints: {
        0: {
            slidesPerView: 1,
            centeredSlides: true
        },
        768: {
            slidesPerView: 2,
            centeredSlides: true
        },
        992: {
            slidesPerView: 3
        }
    }
});
</script>