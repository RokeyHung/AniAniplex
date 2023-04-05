<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<article class="l-9 m-12 s-12 xs-12">
    <div class="playmovie">
        <div class="playmovie-wrapper">
            <div class="playmovie-video">
                <iframe
                        width="100%"
                        height="550px"
                        src="https://www.youtube.com/embed/iwxPf8SEmEU?start=1"
                        title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen
                ></iframe>
            </div>
            <div class="playmovie-current">
                <div class="current-item">
                    <i class="fa-solid fa-forward-step"></i>
                    <span>Tập tiếp theo</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-comments"></i>
                    <span>Bình luận</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-lightbulb"></i>
                    <span>Tắt đèn</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-bookmark"></i>
                    <span>Theo dõi</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-tv"></i>
                    <span>Phóng to</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-circle-exclamation"></i>
                    <span>Báo lỗi</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-camera"></i>
                    <span>Chụp ảnh</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-download"></i>
                    <span>Tải về</span>
                </div>
                <div class="current-item">
                    <i class="fa-solid fa-clock-rotate-left"></i>
                    <span>Lịch sử xem</span>
                </div>
            </div>
            <div class="playmovie-listepisode">
                <div class="listepisode-title">
                    <i class="fa-solid fa-server"></i>&nbsp;
                    <strong>TỔNG HỢP</strong>
                </div>
                <div class="listepisode-list">
                    <div class="listepisode-item active">01</div>
                    <div class="listepisode-item">02</div>
                    <div class="listepisode-item">03</div>
                    <div class="listepisode-item">04</div>
                    <div class="listepisode-item">05</div>
                    <div class="listepisode-item">06</div>
                    <div class="listepisode-item">07</div>
                    <div class="listepisode-item">08</div>
                    <div class="listepisode-item">09</div>
                    <div class="listepisode-item">10</div>
                    <div class="listepisode-item">11</div>
                    <div class="listepisode-item">12</div>
                </div>
            </div>
            <script>
                const items = document.querySelectorAll('.listepisode-item');
                items.forEach((item) => {
                    item.addEventListener('click', () => {
                        items.forEach((item) => {
                            item.classList.remove('active');
                        });
                        item.classList.add('active');
                    });
                });
            </script>
        </div>
    </div>
</article>
