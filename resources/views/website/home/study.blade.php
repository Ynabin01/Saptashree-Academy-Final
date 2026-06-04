<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<section class="modern-abroad-section">

    <!-- Floating Shapes -->
    <div class="floating-circle circle-one"></div>
    <div class="floating-circle circle-two"></div>

    <div class="container">

        <!-- HEADER -->

        <div class="section-header text-center">
            <span class="section-tag">
                Country Best Education Center
            </span>
            <h2 class="section-title">
                <span class="light-text">Learning</span>
                Opportunities
                <span class="gradient-text">and Programs </span>
            </h2>
            <p class="section-subtitle">
                Explore top countries offering quality education and global opportunities.
            </p>
        </div>
        <!-- GRID -->
        <div class="destination-layout">
            @foreach ($abroad as $sub)
            @php
            $child = $sub->childs->first();

            if ($child && !empty($child->nav_name)) {
            $url = $sub->nav_name . '/' . $child->nav_name;
            } else {
            $url = url('/');
            }
            @endphp

            <a href="{{ $url }}" class="destination-box">
                <div class="destination-image">
                    <img src="{{ $sub->banner_image ?? '' }}" alt="{{ $sub->caption }}">
                </div>

                <div class="destination-info">
                    <div class="destination-top">
                        <div class="destination-icon">
                            <i class="fa-solid fa-location-dot"></i>
                        </div>
                        <div class="destination-arrow">
                            <i class="fa-solid fa-arrow-up-right-from-square"></i>
                        </div>
                    </div>
                    <div class="destination-bottom">
                        <h4>{{ $sub->caption }}</h4>
                        <p>Study • Explore • Grow</p>
                    </div>
                </div>
            </a>
            @endforeach
        </div>
    </div>
</section>