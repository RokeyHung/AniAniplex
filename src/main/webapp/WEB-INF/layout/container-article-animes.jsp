<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<article class="l-9 m-12 s-12 xs-12">
    <div class="viewlist-slider">
        <c:forEach items="${movie}" var="movie" begin="0" end="9">
<%--    phim/${movie.getname()}/${movie_esposite?movie_esposite:""}    --%>
            <a href="phim?movieId=${movie.getMovieId()}" class="d-block viewlist-item">
                <div class="background-filter"></div>
                <img src="${movie.getMoviePoster()}" alt=""/>
                <div class="viewlist-group">
                    <div class="viewlist-name">${movie.getMovieNameVn()}</div>
                    <div class="viewlist-series">
                        <div class="viewlist-rate"><i class="fa-solid fa-star"></i>&nbsp;483</div>
                        <div class="viewlist-episode"><i class="fa-regular fa-clock"></i>&nbsp;11/12</div>
                        <div class="viewlist-year"><i class="fa-regular fa-calendar-days"></i>&nbsp;2023</div>
                        <div class="viewlist-quality">HD</div>
                    </div>
                    <div class="viewlist-description">${movie.getMovieDescription()}</div>
                    <div class="viewlist-studio">
                        <span><i class="fa-solid fa-video"></i>&nbsp;<span>Studio:</span>&nbsp;</span>
                            ${movie.getMovieStudio()}
                    </div>
                    <div class="viewlist-category">
                        <span><i class="fa-solid fa-list"></i>&nbsp;<span>Thể loại:</span>&nbsp;</span>
                        Anime bộ, Seinen, Romance, Slice of Life, Harem, Fantasy, Comedy, Adventure,
                    </div>
                    <div class="viewlist-caster">
                        <div class="caster-item"><i class="fa-solid fa-user"></i></div>
                        <div class="caster-item"><i class="fa-solid fa-user"></i></div>
                        <div class="caster-item"><i class="fa-solid fa-user"></i></div>
                        <div class="caster-item"><i class="fa-solid fa-user"></i></div>
                        <div class="caster-item"><i class="fa-solid fa-user"></i></div>
                        <div class="caster-more"><i class="fa-solid fa-ellipsis"></i></div>
                    </div>
                    <button class="btn btn-primary mt-10">Xem Phim</button>
                </div>
            </a>
        </c:forEach>
    </div>
    <div class="container-listAni w-100">
        <div class="listAni-wrapper w-100">
            <div class="listAni-header w-100 user-select-none">
                <button class="btn btn-primary btn-gradient">MỚI CẬP NHẬT</button>
                <div class="listAni-category">
                    <div class="text-primary">Tất cả</div>
                    <div>Mùa đông - 2023</div>
                    <div>Anime bộ</div>
                    <div>Anime lẻ</div>
                    <div>HH Trung Quốc</div>
                </div>
            </div>
            <div class="listAni-body w-100">
                <div class="row mx-6 p-0">
                    <c:forEach items="${movie}" var="movie" begin="0" end="9">
                        <a href="phim?movieId=${movie.getMovieId()}" class="d-block xs-6 s-4 sm-3 m-20 l-20">
                            <div class="listAni-item">
                                <div class="item-image">
                                    <img src="${movie.getMovieImage()}"
                                         alt=""/>
                                    <div class="background-gradient">
                                        <div class="icon-play"><i class="fa-solid fa-play"></i></div>
                                    </div>
                                </div>
                                <div class="item-name">${movie.getMovieNameVn()}</div>
                                <div class="item-views">Lượt xem
                                    <span>
                                        <c:set var="formatview" value="${movie.getMovieViews()}"/>
                                        <fmt:formatNumber value="${formatview}"/>
                                    </span>
                                </div>
                                <div class="rate"><i class="fa-solid fa-star"></i> 9.6</div>
                                <div class="episode">
                                    <div>Tập</div>
                                    <div>11</div>
                                </div>
                            </div>
                        </a>
                    </c:forEach>
                </div>
            </div>
            <div class="listAni-footer">
                <button class="more">XEM THÊM..</button>
            </div>
        </div>
    </div>
</article>