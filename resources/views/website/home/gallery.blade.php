<div class="gallery-modern">
    <div class="bg-lines"></div>
    <div class="container">

        <!-- HEADER -->
        <div class="section-header">
            <span class="section-tag">School Gallery</span>
            <h2 class="section-title">
                <span class="light-text">Captured</span>
                School
                <span class="gradient-text">Moments</span>
            </h2>
            <p class="section-subtitle">
                A modern collection of memories and visual stories.
            </p>
        </div>

        <!-- GRID -->
        <div class="gallery-grid-modern">
            @foreach ($photos->childs->sortByDesc('updated_at') as $photo)
                @if ($loop->iteration < 5)
                    <?php
                        $images = App\Models\NavigationItems::where('navigation_id', $photo->id)->latest()->get();
                    ?>
                    <a href="{{ route('GOTOGALLERY', $photo->nav_name) }}" class="gallery-card-modern" data-aos="fade-up">
                        <div class="img-box">
                            <img src="{{ $photo->banner_image }}" alt="{{ $photo->caption }}">
                            <div class="overlay"></div>
                            <div class="count">{{ count($images) }} photos</div>
                        </div>
                        <div class="content">
                            <h3>{{ $photo->caption }}</h3>
                            <div class="meta">{{ \Carbon\Carbon::parse($photo->updated_at)->format('M d, Y') }}</div>
                        </div>
                    </a>
                @endif
            @endforeach
        </div>
    </div>
</div>
