<section class="about-school-section">

    <div class="container">

        <div class="row align-items-center g-5">

            <!-- LEFT IMAGE -->
            <div class="col-lg-6">

                <div class="school-image-box">

                    <img src="{!! htmlspecialchars_decode($about->banner_image ?? '') !!}"
                        alt="About Image"
                        class="school-image">

                    <!-- INFO BADGE -->
                    <div class="school-badge">
                        <strong>Welcome</strong>
                        <span>Quality Education & Growth</span>
                    </div>

                </div>

            </div>

            <!-- RIGHT CONTENT -->
            <div class="col-lg-6">

                <div class="school-content">

                    <div class="section-tag">
                        ABOUT OUR INSTITUTION
                    </div>

                    <h2 class="school-title">
                        Shaping Future Through Knowledge & Discipline
                    </h2>

                    <div class="school-text">
                        {!! htmlspecialchars_decode($about->short_content ?? '') !!}
                    </div>

                    <!-- EXTRA FEATURE BLOCK (for school use) -->
                    <div class="school-features">

                        <div class="feature-box">
                            <h5>📘 Learning</h5>
                            <p>Modern curriculum with practical knowledge.</p>
                        </div>

                        <div class="feature-box">
                            <h5>👨‍🏫 Teachers</h5>
                            <p>Experienced and dedicated faculty members.</p>
                        </div>

                        <div class="feature-box">
                            <h5>🏫 Environment</h5>
                            <p>Safe and supportive learning atmosphere in our premises.</p>
                        </div>

                    </div>

                    <a href="/about-one/about-us-two" class="school-btn">
                        Explore More <span>→</span>
                    </a>

                </div>

            </div>

        </div>

    </div>

</section>