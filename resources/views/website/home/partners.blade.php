<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

<section class="bus-scene">
    <!-- ROAD AREA -->
    <div class="road-area">
        <div class="road"></div>
        <div class="road-line"></div>
        <!-- SINGLE PARTNER IMAGE (ONLY ONE) -->
        <img src="{{ $partners[0]->banner_image ?? '' }}" class="partner-img" alt="Partner">
        <!-- BUS -->
    </div>

</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script>
AOS.init({
    once: false,
    duration: 900
});
</script>
