<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<article class="l-9 m-12 s-12 xs-12">
    <div class="container-listAni w-100">
        <div class="listAni-wrapper w-100">
            <div class="listAni-body w-100">
                <div class="row mx-6 p-0">
                    <c:forEach items="${movies}" var="movie" begin="0" end="19">
                        <a href="phim?movieId=${movie.getMovies().getMovieId()}" class="d-block xs-6 s-4 sm-3 m-20 l-20">
                            <div class="listAni-item">
                                <div class="item-image">
                                    <img src="${movie.getMovies().getMovieImage()}"
                                         alt=""/>
                                    <div class="background-gradient">
                                        <div class="icon-play"><i class="fa-solid fa-play"></i></div>
                                    </div>
                                </div>
                                <div class="item-name">${movie.getMovies().getMovieNameVn()}</div>
                                <div class="item-views">Lượt xem
                                    <span>
                                        <c:set var="formatview" value="${movie.getMovies().getMovieViews()}"/>
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
        </div>
    </div>
</article>