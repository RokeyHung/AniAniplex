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
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1681289872/AniAniplex/css/ManagerDetailMovie_p4mrmt.css"/>
    <c:import url="../WEB-INF/cloundLink/navbar.jsp"/>
</head>
<body>
<jsp:include page="../headerSession.jsp"/>
<div class="space"></div>
<div class="container">
    <div class="container-wrapper">
        <div class="container-managerdetailmovie">
            <form method="post" action="admin" class="container-managerdetailmovie-wrapper row mg-0">
                <div class="c-3 sm-ad-12 content-image">
                    <div class="managerdetailmovie-image">
                        <div class="movie_id">#movie_id: <span>${movieItem.getMovieId()}</span></div>
                        <img src="${movieItem.getMovieImage()}" alt=""/>
                        <div class="image-anime">
                            <%--                            <div class="form-field">--%>
                            <%--                                <input type="file" name="file" id="file" class="inputfile"/>--%>
                            <%--                                <label for="file" class="label-choosefile"><span>Change image</span></label>--%>
                            <%--                            </div>--%>
                        </div>
                        <div class="image-poster mt-16">
                            <img src="${movieItem.getMoviePoster()}" alt=""/>
                            <%--                            <div class="form-field">--%>
                            <%--                                <input type="file" name="file" id="file" class="inputfile"/>--%>
                            <%--                                <label for="file" class="label-choosefile"><span>Change poster</span></label>--%>
                            <%--                            </div>--%>
                        </div>
                    </div>
                </div>
                <div class="c-9 sm-ad-12 row mg-0 content-input">
                    <div class="c-6 sm-ad-12">
                        <div class="field-form">
                            <h3>Moive name VN</h3>
                            <div class="field-input">
                                <input name="movieNameVn" type="text" id="text-input1"
                                       value="${movieItem.getMovieNameVn()}"/>
                                <label class="field-input-icon" for="text-input1">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Movie name JP</h3>
                            <div class="field-input">
                                <input name="movieNameJp" type="text" id="text-inpu2"
                                       value="${movieItem.getMovieNameJp()}"/>
                                <label class="field-input-icon" for="text-inpu2">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Showtimes</h3>
                            <div class="field-input">
                                <input name="movieShowtimes" type="text" id="text-input3"
                                       value="${movieItem.getMovieShowtimes()}"/>
                                <label class="field-input-icon" for="text-input3">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Status</h3>
                            <div class="field-input">
                                <input name="movieStatus" type="text" id="text-input4"
                                       value="${movieItem.getMovieStatus()}"/>
                                <label class="field-input-icon" for="text-input4">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Director</h3>
                            <div class="field-input">
                                <input name="movieDirector" type="text" id="text-input5"
                                       value="${movieItem.getMovieDirector()}"/>
                                <label class="field-input-icon" for="text-input5">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Link image</h3>
                            <div class="field-input">
                                <input name="movieImage" type="text" id="text-input5"
                                       value="${movieItem.getMovieImage()}"/>
                                <label class="field-input-icon" for="text-input5">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="c-6 sm-ad-12">
                        <div class="field-form">
                            <h3>Country</h3>
                            <div class="field-input">
                                <input name="movieCountry" type="text" id="text-input6"
                                       value="${movieItem.getMovieCountry()}"/>
                                <label class="field-input-icon" for="text-input6">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Episode</h3>
                            <div class="field-input">
                                <input name="movieEpisode" type="text" id="text-input7"
                                       value="${movieItem.getMovieEpisode()}"/>
                                <label class="field-input-icon" for="text-input7">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Subtitle</h3>
                            <div class="field-input">
                                <input name="movieLanguage" type="text" id="text-input8"
                                       value="${movieItem.getMovieLanguage()}"/>
                                <label class="field-input-icon" for="text-input8">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Studio</h3>
                            <div class="field-input">
                                <input name="movieStudio" type="text" id="text-input9"
                                       value="${movieItem.getMovieStudio()}"/>
                                <label class="field-input-icon" for="text-input9">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Season</h3>
                            <div class="field-input">
                                <input name="movieYear" type="date" id="text-input10"
                                       value="${movieItem.getMovieYear()}"/>
                                <label class="field-input-icon" for="text-input10">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Link poster</h3>
                            <div class="field-input">
                                <input name="moviePoster" type="text" id="text-input10"
                                       value="${movieItem.getMoviePoster()}"/>
                                <label class="field-input-icon" for="text-input10">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="description">
                        <h3>Description</h3>
                        <textarea name="" id="textarea">${movieItem.getMovieDescription()}</textarea>
                    </div>
                    <div class="row w-100 mg-0">
                        <div class="c-6 sm-ad-12 pe-16" style="max-width: 20%">
                            <div class="field-form">
                                <h3>Tập mới</h3>
                                <div class="field-input">
                                    <input name="number-episode" type="number" min="0" class="w-25"
                                           id="number-episode"/>
                                </div>
                            </div>
                        </div>
                        <div class="c-6 sm-ad-12 ps-16">
                            <div class="field-form">
                                <h3>Link tập mới</h3>
                                <div class="field-input">
                                    <input name="link-episode" type="text" id="text-input12"/>
                                    <label class="field-input-icon" for="text-input12">
                                        <i class="fa-solid fa-pen-to-square"></i>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ps-16 pe-16">${message}</div>
                    <br>
                    <div class="action user-select-none">
                        <button type="submit" formaction="new-episode" class="d-block btn btn-createNew">
                            Thêm tập mới
                        </button>
                        <button type="submit" formaction="update?movieId=${movieItem.getMovieId()}"
                                class="d-block btn btn-edit">Lưu chỉnh sửa
                        </button>
                        <button type="submit" formaction="deleteMovie?movieId=${movieItem.getMovieId()}"
                                class="d-block btn btn-delete">Xoá anime
                        </button>
                    </div>
                </div>
            </form>
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
<script>
    var textarea = document.querySelector('textarea');
    textarea.addEventListener('keyup', (e) => {
        textarea.style.height = '150px';
        let scHeight = e.target.scrollHeight;
        console.log(scHeight);
        textarea.style.height = `${scHeight}px`;
    });
</script>
</html>
