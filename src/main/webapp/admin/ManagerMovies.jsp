<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Administrator - AniAniplex</title>
    <c:import url="../WEB-INF/cloundLink/GridSystem-base.jsp"/>
    <link rel="stylesheet"
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/ManagerMovies_fjqgc5.css"/>
    <c:import url="../WEB-INF/cloundLink/navbar.jsp"/>
</head>
<body>
<jsp:include page="../headerSession.jsp"/>
<div class="space"></div>
<div class="container">
    <div class="container-wrapper">
        <div class="anime-list">
            <a href="admin/new-movie" class="d-block anime-item-action-item">Tạo phim mới</a>
            <c:forEach items="${movies}" var="movie">
                <div class="anime-list-item">
                    <div class="anime-item-image">
                        <img src="${movie.getMovieImage()}" alt=""/>
                    </div>
                    <div class="anime-item-content">
                        <a href="admin/edit?movieId=${movie.getMovieId()}"
                           class="anime-item-nameVN">${movie.getMovieNameVn()}</a>
                        <div class="anime-item-nameJP">${movie.getMovieNameJp()}</div>
                        <div class="anime-item-content-bottom">#movie_id: ${movie.getMovieId()}</div>
                    </div>
                    <div class="anime-item-action">
                        <a href="admin/edit?movieId=${movie.getMovieId()}" class="d-block anime-item-action-item">Chỉnh
                            sửa</a>
                        <a href="admin/deleteMovie?movieId=${movie.getMovieId()}"
                           class="d-block anime-item-action-item">Xoá</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<div class="space"></div>
<div class="space"></div>
<div class="space"></div>
<div class="copyright">© Copyright 2023 AniAniplex. All rights reserved.</div>
<div class="space"></div>
<div class="space"></div>
<div class="space"></div>
</body>
</html>
