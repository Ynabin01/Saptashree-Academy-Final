<!-- =========================
TEAM HEADER
========================= -->
<div class="testi" style="background-color:#dae1e9;">
    <br><br><br>
    <div class="section-header text-center" style="margin-top: 2px !important;">
        <span class="section-tag">
            School Teachers Team
        </span>
        <h2 class="section-title">
            <span class="light-text">Meet</span>
            Our Expert
            <span class="gradient-text"> Team</span>
        </h2>
        <!-- <p class="section-subtitle">
            Insights, stories and updates from our learning community
        </p> -->
    </div>

    <!-- =========================
TEAM SECTION
========================= -->

    <div class="container py-4">
        <div class="teamx-wall" id="teamWall">
            @foreach($goal->sortBy('id') as $member)
                <div class="teamx-item teamx-card">
                    <div class="teamx-photo"
                        style="background-image:url('{{ $member->banner_image ?? '/website/img/default-profile.png' }}');">
                        <div class="teamx-overlay"></div>
                        <div class="teamx-content">
                            <p class="teamx-role">{{ $member->caption ?? '' }}</p>
                            <h5 class="teamx-name">
                                {!! htmlspecialchars_decode($member->short_content ?? '') !!}
                            </h5>
                            <button class="teamx-view-btn">View Profile</button>
                            <div class="teamx-long-content d-none">
                                {!! htmlspecialchars_decode($member->long_content ?? '') !!}
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

        </div>

        <!-- SHOW MORE -->
        <div class="teamx-more-wrap">
            <button id="toggleTeam" class="teamx-more-btn">
                Show More Team
            </button>
        </div>
        <br><br><br>
    </div>

    <!-- =========================
MODAL
========================= -->
    <div id="teamMessageModal" class="teamx-modal">
        <div class="teamx-modal-overlay"></div>
        <div class="teamx-modal-content">
            <button class="teamx-modal-close">&times;</button>
            <img src="" class="teamx-modal-photo" alt="">
            <h2 class="teamx-modal-name"></h2>
            <p class="teamx-modal-role"></p>
            <div class="teamx-modal-message"></div>
        </div>
    </div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const wall = document.getElementById("teamWall");
        const btn = document.getElementById("toggleTeam");
        let expanded = false;
        btn.addEventListener("click", function () {
            expanded = !expanded;
            if (expanded) {
                wall.classList.add("expanded");
                btn.innerText = "Show Less Team";
            } else {
                wall.classList.remove("expanded");
                btn.innerText = "Show More Team";
            }
        });

        const modal = document.getElementById("teamMessageModal");
        const closeBtn = document.querySelector(".teamx-modal-close");
        const overlay = document.querySelector(".teamx-modal-overlay");
        document.querySelectorAll(".teamx-view-btn").forEach(btn => {
            btn.addEventListener("click", function () {
                const card = this.closest(".teamx-item");
                const img = card.querySelector(".teamx-photo").style.backgroundImage;
                const cleanImg = img.replace('url("', '')
                    .replace('")', '')
                    .replace("url('", "")
                    .replace("')", "");
                modal.querySelector(".teamx-modal-photo").src = cleanImg;
                modal.querySelector(".teamx-modal-name").innerText = card.querySelector(
                    ".teamx-name").innerText;
                modal.querySelector(".teamx-modal-role").innerText = card.querySelector(
                    ".teamx-role").innerText;
                modal.querySelector(".teamx-modal-message").innerHTML = card.querySelector(
                    ".teamx-long-content").innerHTML;

                modal.classList.add("active");
            });
        });
        closeBtn.onclick = () => modal.classList.remove("active");
        overlay.onclick = () => modal.classList.remove("active");

    });
</script>