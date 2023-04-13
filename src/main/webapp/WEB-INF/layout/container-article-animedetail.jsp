<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>


<article class="l-9 m-12 s-12 xs-12">
    <div class="anime__container">
        <div class="anime__container-wrapper">
            <div class="anime__content"
                 style="--background-img: url('${movieItem.getMoviePoster()}')">
                <div class="anime__content-introduce">
                    <div class="anime__content-detail">
                        <div class="anime__content-title">${movieItem.getMovieNameVn()}</div>
                        <div class="anime__content-nameJP">${movieItem.getMovieNameJp()}</div>
                        <div class="anime__content-img">
                            <img src="${movieItem.getMovieImage()}"
                                 alt=""/>
                            <div class="btn-play"><i class="fa-solid fa-play"></i></div>
                            <div class="blur-opacity"></div>
                            <c:if test="${sessionScope.bookmark_favorite == false}">
                                <a href="yeu-thich?movieId=${movieItem.getMovieId()}" class="d-block contend-img-following">
                                    <i class="fa-regular fa-bookmark"></i>&ensp;Theo dõi
                                </a>
                            </c:if>
                            <c:if test="${sessionScope.bookmark_favorite == true}">
                                <a href="bo-yeu-thich?movieId=${movieItem.getMovieId()}" class="d-block contend-img-following">
                                    <i class="fa-solid fa-link-slash"></i>&ensp;Bỏ theo dõi
                                </a>
                            </c:if>
                            <a href="xem-phim?movieId=${movieItem.getMovieId()}&episode=1" class="d-block xemphim">XEM
                                PHIM</a>
                        </div>
                        <div class="anime__content-description">${movieItem.getMovieDescription()}</div>
                    </div>
                    <div class="anime__content-evaluate">
                        <div class="evaluate-left">
                            <div class="evaluate-percent"><span>100%</span></div>
                            <div class="evaluate-rate">
                                <div class="evaluate-star">
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                    <i class="fa-solid fa-star"></i>
                                </div>
                                <div class="evaluate-user">(Đánh giá 9.6/10 từ 497 thành viên)</div>
                            </div>
                        </div>
                        <div class="evaluate-right">
                            <div class="evaluate-episode"><i class="fa-regular fa-clock"></i>&nbsp;11/12</div>
                            <div class="evaluate-year"><i
                                    class="fa-regular fa-calendar-days"></i>&nbsp;
                                <fmt:formatDate value="${movieItem.getMovieYear()}" pattern="yyyy"/>
                            </div>
                            <div class="evaluate-views"><i class="fa-solid fa-eye"></i>&nbsp
                                <c:set var="view" value="${movieItem.getMovieViews()}"/>
                                <fmt:formatNumber value="${view}"/>
                                Lượt Xem
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="MovieTabNav" style="margin-top: 4px">
            <div class="MovieTabNav">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button
                                class="nav-link active cursor-pointer active-primary"
                                data-bs-toggle="tab"
                                data-bs-target="#info-tab"
                                type="button"
                                role="tab"
                                aria-controls="info-tab"
                                aria-selected="true"
                        >
                            <i class="fa-solid fa-file-lines"></i>&nbsp;&nbsp;Thông tin phim
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button
                                class="nav-link cursor-pointer"
                                data-bs-toggle="tab"
                                data-bs-target="#character-tab"
                                type="button"
                                role="tab"
                                aria-controls="character-tab"
                                aria-selected="false"
                        >
                            <i class="fa-solid fa-check-to-slot"></i>&nbsp;&nbsp;Nhân vật
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button
                                class="nav-link cursor-pointer"
                                data-bs-toggle="tab"
                                data-bs-target="#trailer-tab"
                                type="button"
                                role="tab"
                                aria-controls="trailer-tab"
                                aria-selected="false"
                        >
                            <i class="fa-solid fa-video"></i>&nbsp;&nbsp;Trailer
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button
                                class="nav-link cursor-pointer"
                                id="contact-tab"
                                data-bs-toggle="tab"
                                data-bs-target="#image-tab"
                                type="button"
                                role="tab"
                                aria-controls="image-tab"
                                aria-selected="false"
                        >
                            <i class="fa-solid fa-image"></i>&nbsp;&nbsp;Hình ảnh
                        </button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="info-tab" role="tabpanel" aria-labelledby="home-tab"
                         tabindex="0">
                        <div class="info-wrapper d-flex align-items-start row mg-0">
                            <div class="c-6 sm-max-12">
                                <ul class="info-list">
                                    <li>
                                        <i class="fa-regular fa-circle-dot"></i><strong>Tập mới:</strong>
                                        <div class="newEpisode">
                                            <c:forEach items="${episodeList}" var="episode" begin="0" end="2">
                                                <a href="xem-phim?movieId=${movieItem.getMovieId()}&episode=${episode.getMovieEpisodeNumber()}"
                                                   class="d-block">${episode.getMovieEpisodeNumber()}</a>
                                            </c:forEach>
                                        </div>
                                    </li>
                                    <li>
                                        <i class="fa-regular fa-circle-dot"></i><strong>Lịch chiếu:</strong>
                                        <span>${movieItem.getMovieShowtimes()}</span>
                                    </li>
                                    <li>
                                        <i class="fa-regular fa-circle-dot"></i><strong>Trạng thái:</strong>
                                        <span>${movieItem.getMovieStatus()}</span>
                                    </li>
                                    <li class="d-block">
                                        <i class="fa-regular fa-circle-dot"></i><strong>Thể loại:</strong>
                                        <span class="text-primary1">
                                            <c:forEach items="${categoryList}" var="category">
                                                <a href="" class="text-primary1">${category.getCategoryName()}</a>,
                                            </c:forEach>
                                        </span>
                                    </li>
                                    <li>
                                        <i class="fa-regular fa-circle-dot"></i><strong>Đạo diễn:</strong>
                                        <span class="text-primary1">${movieItem.getMovieDirector()}</span>
                                    </li>
                                    <li><i class="fa-regular fa-circle-dot"></i><strong>Quốc gia:</strong><span
                                            class="text-primary1">${movieItem.getMovieCountry()}</span></li>
                                    <li><i class="fa-regular fa-circle-dot"></i><strong>Số người theo
                                        dõi:</strong>
                                        <span>
                                            <c:set var="followers" value="${movieItem.getMovieFollowers()}"/>
                                            <fmt:formatNumber value="${followers}"/>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                            <div class="c-6 sm-max-12">
                                <ul class="info-list">
                                    <li><i class="fa-regular fa-circle-dot"></i><strong>Thời
                                        lượng:</strong><span>${movieItem.getMovieEpisode()}</span></li>
                                    <li>
                                        <i class="fa-regular fa-circle-dot"></i><strong>Chất lượng:</strong>
                                        <div class="qualityHD">HD</div>
                                    </li>
                                    <li>
                                        <i class="fa-regular fa-circle-dot"></i><strong>Rating:</strong>
                                        <div class="rating">PG-13 - Teens 13 tuổi trở lên</div>
                                    </li>
                                    <li><i class="fa-regular fa-circle-dot"></i><strong>Ngôn
                                        ngữ:</strong><span>${movieItem.getMovieLanguage()}</span></li>
                                    <li>
                                        <i class="fa-regular fa-circle-dot"></i><strong>Studio:</strong><span>${movieItem.getMovieStudio()}</span>
                                    </li>
                                    <li><i class="fa-regular fa-circle-dot"></i><strong>Season:</strong>
                                        <span class="text-primary1">
                                            <fmt:formatDate value="${movieItem.getMovieYear()}" pattern="MM"
                                                            var="month"/>
                                            <c:choose>
                                                <c:when test="${month == '01' || month == '02' || month == '03'}">
                                                    Mùa Xuân
                                                </c:when>
                                                <c:when test="${month == '04' || month == '05' || month == '06' }">
                                                    Mùa Hè
                                                </c:when>
                                                <c:when test="${month == '07' || month == '08' || month == '09' }">
                                                    Mùa Thu
                                                </c:when>
                                                <c:when test="${month == '10' || month == '11' || month == '12' }">
                                                    Mùa Đông
                                                </c:when>
                                            </c:choose>
                                        </span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="character-tab" role="tabpanel" aria-labelledby="profile-tab"
                         tabindex="0">
                        <div class="character-list">
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Machio Hiraku</div>
                            </div>
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Ru Rurushi</div>
                            </div>
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Tia</div>
                            </div>
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Ria</div>
                            </div>
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Ann</div>
                            </div>
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Flora</div>
                            </div>
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Senna</div>
                            </div>
                            <div class="character-item">
                                <div class="character-wrapper-img">
                                    <div class="character-img"><i class="fa-solid fa-user"></i></div>
                                </div>
                                <div class="character-name">Rasutisumoon</div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="trailer-tab" role="tabpanel" aria-labelledby="contact-tab"
                         tabindex="0">
                        <iframe
                                width="100%"
                                height="500px"
                                src="${movieItem.getMovieNameVn()}"
                                title="YouTube video player"
                                frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                                allowfullscreen
                        ></iframe>
                    </div>
                    <div class="tab-pane fade w-100" id="image-tab" role="tabpanel" aria-labelledby="image-tab"
                         tabindex="0">
                        <img
                                class="object-fit-contain w-inherit h-inherit"
                                src="${movieItem.getMoviePoster()}"
                                alt=""
                        />
                    </div>
                </div>
            </div>
            <script>
                const items = document.querySelectorAll('#myTab button');
                items.forEach((item) => {
                    item.addEventListener('click', () => {
                        items.forEach((item) => {
                            item.classList.remove('active-primary');
                        });
                        item.classList.add('active-primary');
                    });
                });


            </script>
        </div>
    </div>
</article>