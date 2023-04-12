<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Administrator - AniAniplex</title>
    <c:import url="WEB-INF/cloundLink/GridSystem-base.jsp"/>
    <c:import url="WEB-INF/cloundLink/navbar.jsp"/>
    <link rel="stylesheet" href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/ManagerDetailMovie_yexkht.css"/>
</head>
<body>
<jsp:include page="headerSession.jsp"/>
<div class="space"></div>
<div class="container">
    <div class="container-wrapper">
        <div class="container-managerdetailmovie"
             style="--i: url('https://cdn.animevietsub.in/data/big_banner/2022/03/05/animevsub-RtMNrPD9eP.jpg')">
            <div class="container-managerdetailmovie-wrapper row mg-0">
                <div class="c-3 sm-ad-12 content-image">
                    <div class="managerdetailmovie-image">
                        <div class="movie_id">#movie_id: <span></span></div>
                        <img src="https://cdn.animevietsub.in/data/poster/2023/03/24/animevsub-iDvWCparAc.jpg" alt=""/>
                        <div class="image-anime">
                            <div class="form-field">
                                <input type="file" name="file" id="file" class="inputfile"/>
                                <label for="file" class="label-choosefile"><span>Change image</span></label>
                            </div>
                        </div>
                        <div class="image-poster mt-16">
                            <img src="https://cdn.animevietsub.in/data/big_banner/2022/03/05/animevsub-RtMNrPD9eP.jpg"
                                 alt=""/>
                            <div class="form-field">
                                <input type="file" name="file" id="file" class="inputfile"/>
                                <label for="file" class="label-choosefile"><span>Change poster</span></label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="c-9 sm-ad-12 row mg-0 content-input">
                    <div class="c-6 sm-ad-12">
                        <div class="field-form">
                            <h3>Moive name VN</h3>
                            <div class="field-input">
                                <input type="text" id="text-input1"/>
                                <label class="field-input-icon" for="text-input1">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Movie name JP</h3>
                            <div class="field-input">
                                <input type="text" id="text-inpu2"/>
                                <label class="field-input-icon" for="text-inpu2">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Showtimes</h3>
                            <div class="field-input">
                                <input type="text" id="text-input3"/>
                                <label class="field-input-icon" for="text-input3">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Status</h3>
                            <div class="field-input">
                                <input type="text" id="text-input4"/>
                                <label class="field-input-icon" for="text-input4">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Director</h3>
                            <div class="field-input">
                                <input type="text" id="text-input5"/>
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
                                <input type="text" id="text-input6"/>
                                <label class="field-input-icon" for="text-input6">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Episode</h3>
                            <div class="field-input">
                                <input type="text" id="text-input7"/>
                                <label class="field-input-icon" for="text-input7">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Subtitle</h3>
                            <div class="field-input">
                                <input type="text" id="text-input8"/>
                                <label class="field-input-icon" for="text-input8">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Studio</h3>
                            <div class="field-input">
                                <input type="text" id="text-input9"/>
                                <label class="field-input-icon" for="text-input9">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                        <div class="field-form">
                            <h3>Season</h3>
                            <div class="field-input">
                                <input type="text" id="text-input10"/>
                                <label class="field-input-icon" for="text-input10">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="description">
                        <h3>Description</h3>
                        <textarea name="" id="textarea" maxlength="1000" required></textarea>
                    </div>
                    <div class="row w-100 mg-0">
                        <div class="c-6 sm-ad-12 pe-16">
                            <div class="field-form">
                                <h3>Tập mới</h3>
                                <div class="field-input w-25">
                                    <input type="number" min="0" class="w-25"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="action user-select-none">
                        <div class="btn btn-createNew">Thêm tập mới</div>
                        <div class="btn btn-edit">Lưu chỉnh sửa</div>
                        <div class="btn btn-delete">Xoá anime</div>
                        <div class="btn btn-cancel">Huỷ bỏ</div>
                    </div>
                </div>
            </div>
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
