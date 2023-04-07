<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Anime Vietsub Online - AniAniplex</title>
    <c:import url="WEB-INF/cloundLink/GridSystem-base.jsp"/>
    <link rel="stylesheet" href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/ManagerMovies_fjqgc5.css"/>
</head>
<body>
<nav class="navbar">
    <div class="wrapper">
        <div class="logo">
            <a href="#" class="logo-link"><img src="./assets/images/Aniplex-Logo.wine.svg" class="logo-img" alt="logo"/></a>
        </div>
        <input class="d-none" type="radio" name="slider" id="menu-btn"/>
        <input class="d-none" type="radio" name="slider" id="close-btn"/>
        <ul class="nav-links">
            <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
            <li class="nav__item-desktop hideOnDesktop">
                <input class="d-none" type="checkbox" id="showDrop1"/>
                <label for="showDrop1" class="d-flex align-items-center user-name-mobile cursor-pointer flex-nowrap">
                    <div class="user-image">
                        <img src="https://cdn.discordapp.com/attachments/1059014105777848341/1089228843673469049/pixel_1.jpg"
                             alt="user_image"/>
                    </div>
                    <span>Chào Kobayashi!</span>
                    <i class="fa-solid fa-angle-down color-primary2"></i>
                </label>
                <ul class="drop-menu row mg-0 pt-10">
                    <li class="m-4 w-100">
                        <a href="./accountCenter.html"><i class="fa-solid fa-user"></i>Thông tin tài khoản</a>
                    </li>
                    <li class="m-4 w-100">
                        <a href="favorites.html"><i class="fa-solid fa-film"></i>Hộp phim</a>
                    </li>
                    <li class="m-4 w-100">
                        <a href="#"><i class="fa-solid fa-clock-rotate-left"></i>Lịch sử</a>
                    </li>
                    <li class="m-4 w-100">
                        <a href="#"><i class="fa-solid fa-right-from-bracket"></i>Thoát</a>
                    </li>
                </ul>
            </li>
            <li><a href="#">TRANG CHỦ</a></li>
            <li class="nav-right d-flex align-items-center">
                <div class="nav-search desktop-item">
                    <div class="nav-search-wrapper d-flex align-items-center">
                        <div class="nav-search-icon">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                        <div class="nav-search-input">
                            <input type="text" placeholder="Tìm: tên tiếng Nhật, Anh, Việt"/>
                        </div>
                        <div class="nav-search-icon nav-search-close">
                            <i class="fa-solid fa-xmark cursor-pointer"></i>
                        </div>
                    </div>
                </div>
            </li>
            <div class="dropdown hideOnMobile">
                <label for="checkshow" class="dropdown-title">
                    <div class="user-image">
                        <img src="https://cdn.discordapp.com/attachments/1059014105777848341/1089228843673469049/pixel_1.jpg"
                             alt="user_image"/>
                    </div>
                    <div class="nav-user-icon">
                        <i class="fa-solid fa-chevron-down"></i>
                    </div>
                </label>
                <input type="checkbox" id="checkshow"/>
                <ul class="menu">
                    <li class="user-name">Chào Kobayashi!</li>
                    <li>
                        <a href="#"><i class="fa-solid fa-user"></i>Thông tin tài khoản</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-solid fa-film"></i>Hộp phim</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-solid fa-clock-rotate-left"></i>Lịch sử</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa-solid fa-right-from-bracket"></i>Thoát</a>
                    </li>
                </ul>
            </div>
        </ul>
        <div class="nav-search hideOnDesktop">
            <div class="nav-search-wrapper d-flex align-items-center">
                <div class="nav-search-icon">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
                <div class="nav-search-input">
                    <input type="text" placeholder="Tìm: tên tiếng Nhật, Anh, Việt"/>
                </div>
                <div class="nav-search-icon nav-search-close">
                    <i class="fa-solid fa-xmark cursor-pointer"></i>
                </div>
            </div>
        </div>
        <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
    </div>
</nav>
<div class="space"></div>
<div class="container">
    <div class="container-wrapper">
        <div class="anime-list">
            <div class="anime-list-item">
                <div class="anime-item-image">
                    <img src="https://cdn.animevietsub.in/data/poster/2022/12/08/animevsub-SKobxDEvm6.jpg" alt=""/>
                </div>
                <div class="anime-item-content">
                    <div class="anime-item-nameVN">Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên
                        Tài
                    </div>
                    <div class="anime-item-nameJP">
                        Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated
                        Princess and the Genius Young Lady, Tenten Kakumei
                    </div>
                    <div class="anime-item-content-bottom">#movie_id</div>
                </div>
                <div class="anime-item-action">
                    <div class="anime-item-action-item">Thêm tập mới</div>
                    <div class="anime-item-action-item">Chỉnh sửa</div>
                    <div class="anime-item-action-item">Xoá</div>
                </div>
            </div>
            <div class="anime-list-item">
                <div class="anime-item-image">
                    <img src="https://cdn.animevietsub.in/data/poster/2022/12/08/animevsub-SKobxDEvm6.jpg" alt=""/>
                </div>
                <div class="anime-item-content">
                    <div class="anime-item-nameVN">Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên
                        Tài
                    </div>
                    <div class="anime-item-nameJP">
                        Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated
                        Princess and the Genius Young Lady, Tenten Kakumei
                    </div>
                    <div class="anime-item-content-bottom">#movie_id</div>
                </div>
                <div class="anime-item-action">
                    <div class="anime-item-action-item">Thêm tập mới</div>
                    <div class="anime-item-action-item">Chỉnh sửa</div>
                    <div class="anime-item-action-item">Xoá</div>
                </div>
            </div>
            <div class="anime-list-item">
                <div class="anime-item-image">
                    <img src="https://cdn.animevietsub.in/data/poster/2022/12/08/animevsub-SKobxDEvm6.jpg" alt=""/>
                </div>
                <div class="anime-item-content">
                    <div class="anime-item-nameVN">Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên
                        Tài
                    </div>
                    <div class="anime-item-nameJP">
                        Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated
                        Princess and the Genius Young Lady, Tenten Kakumei
                    </div>
                    <div class="anime-item-content-bottom">#movie_id</div>
                </div>
                <div class="anime-item-action">
                    <div class="anime-item-action-item">Thêm tập mới</div>
                    <div class="anime-item-action-item">Chỉnh sửa</div>
                    <div class="anime-item-action-item">Xoá</div>
                </div>
            </div>
            <div class="anime-list-item">
                <div class="anime-item-image">
                    <img src="https://cdn.animevietsub.in/data/poster/2022/12/08/animevsub-SKobxDEvm6.jpg" alt=""/>
                </div>
                <div class="anime-item-content">
                    <div class="anime-item-nameVN">Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên
                        Tài
                    </div>
                    <div class="anime-item-nameJP">
                        Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated
                        Princess and the Genius Young Lady, Tenten Kakumei
                    </div>
                    <div class="anime-item-content-bottom">#movie_id</div>
                </div>
                <div class="anime-item-action">
                    <div class="anime-item-action-item">Thêm tập mới</div>
                    <div class="anime-item-action-item">Chỉnh sửa</div>
                    <div class="anime-item-action-item">Xoá</div>
                </div>
            </div>
            <div class="anime-list-item">
                <div class="anime-item-image">
                    <img src="https://cdn.animevietsub.in/data/poster/2022/12/08/animevsub-SKobxDEvm6.jpg" alt=""/>
                </div>
                <div class="anime-item-content">
                    <div class="anime-item-nameVN">Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên
                        Tài
                    </div>
                    <div class="anime-item-nameJP">
                        Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated
                        Princess and the Genius Young Lady, Tenten Kakumei
                    </div>
                    <div class="anime-item-content-bottom">#movie_id</div>
                </div>
                <div class="anime-item-action">
                    <div class="anime-item-action-item">Thêm tập mới</div>
                    <div class="anime-item-action-item">Chỉnh sửa</div>
                    <div class="anime-item-action-item">Xoá</div>
                </div>
            </div>
            <div class="anime-list-item">
                <div class="anime-item-image">
                    <img src="https://cdn.animevietsub.in/data/poster/2022/12/08/animevsub-SKobxDEvm6.jpg" alt=""/>
                </div>
                <div class="anime-item-content">
                    <div class="anime-item-nameVN">Cuộc Cách Mạng Ma Thuật Của Công Chúa Chuyển Sinh Và Tiểu Thư Thiên
                        Tài
                    </div>
                    <div class="anime-item-nameJP">
                        Tensei Oujo to Tensai Reijou no Mahou Kakumei, The Magical Revolution of the Reincarnated
                        Princess and the Genius Young Lady, Tenten Kakumei
                    </div>
                    <div class="anime-item-content-bottom">#movie_id</div>
                </div>
                <div class="anime-item-action">
                    <div class="anime-item-action-item">Thêm tập mới</div>
                    <div class="anime-item-action-item">Chỉnh sửa</div>
                    <div class="anime-item-action-item">Xoá</div>
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
</html>
