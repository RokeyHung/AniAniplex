<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Trung tâm người dùng - AniAniplex</title>
    <c:import url="WEB-INF/cloundLink/GridSystem-base.jsp"/>
    <link rel="stylesheet" href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/accountCenter_bxifjs.css"/>
</head>
<body>
<nav class="navbar">
    <div class="wrapper">
        <div class="logo">
            <a href="http://localhost:8080/AniAniplex/" class="logo-link">
                <img src="https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680599949/AniAniplex/image_assets/Aniplex-Logo.black_fiq1w7.svg" class="logo-img"
                     alt="logo"/>
            </a>
        </div>
        <input class="d-none" type="radio" name="slider" id="menu-btn"/>
        <input class="d-none" type="radio" name="slider" id="close-btn"/>
        <ul class="nav-links">
            <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
            <li class="nav__item-desktop hideOnDesktop">
                <input class="d-none" type="checkbox" id="showDrop1"/>
                <label for="showDrop1" class="d-flex align-items-center user-name-mobile cursor-pointer flex-nowrap">
                    <div class="user-image">
                        <img src="${user.getUserImage()}"
                             alt="user_image"/>
                    </div>
                    <span>Chào ${user.getUserName()}!</span>
                    <i class="fa-solid fa-angle-down color-primary3"></i>
                </label>
                <ul class="drop-menu row mg-0 pt-10">
                    <li class="m-4 w-100">
                        <a href="thong-tin-tai-khoan"><i class="fa-solid fa-user"></i>Thông tin tài khoản</a>
                    </li>
                    <li class="m-4 w-100">
                        <a href="favorites"><i class="fa-solid fa-film"></i>Hộp phim</a>
                    </li>
                    <li class="m-4 w-100">
                        <a href="history"><i class="fa-solid fa-clock-rotate-left"></i>Lịch sử</a>
                    </li>
                    <c:if test="${sessionScope.user_title == 'Administrator'}">
                        <li>
                            <a href="admin"><i class="fa-solid fa-user-gear"></i> Administrator</a>
                        </li>
                    </c:if>
                    <li class="m-4 w-100">
                        <a href="outdoorUser"><i class="fa-solid fa-right-from-bracket"></i>Thoát</a>
                    </li>
                </ul>
            </li>
            <li><a href="/">TRANG CHỦ</a></li>
            <li class="nav__item-desktop">
                <a href="#" class="desktop-item">DẠNG ANIME <i class="fa-solid fa-angle-down iconNavDesktop"></i></a>
                <input class="d-none" type="checkbox" id="showDrop2"/>
                <label for="showDrop2" class="mobile-item">DẠNG ANIME <i
                        class="fa-solid fa-angle-down iconNavMobile"></i></label>
                <ul class="drop-menu row mg-0">
                    <li class="m-4 w-100"><a href="#">TV Series</a></li>
                    <li class="m-4 w-100"><a href="#">Movie/OVA</a></li>
                    <li class="m-4 w-100"><a href="#">HH Trung Quóc</a></li>
                    <li class="m-4 w-100"><a href="#">Anime sắp chiếu</a></li>
                    <li class="m-4 w-100"><a href="#">Anime Đang Chiếu</a></li>
                    <li class="m-4 w-100"><a href="#">Anime trọn bộ</a></li>
                </ul>
            </li>
            <li class="nav__item-desktop">
                <a href="#" class="desktop-item">INFORMATION <i class="fa-solid fa-angle-down iconNavDesktop"></i></a>
                <input class="d-none" type="checkbox" id="showMega"/>
                <label for="showMega" class="mobile-item">INFORMATION <i
                        class="fa-solid fa-angle-down iconNavMobile"></i></label>
                <div class="mega-box">
                    <div class="content">
                        <div class="row d-block">
                            <img src="${user.getUserImage()}" alt=""/>
                        </div>
                        <div class="row d-block">
                            <header>Design Services</header>
                            <ul class="mega-links">
                                <li><a href="#">Graphics</a></li>
                                <li><a href="#">Vectors</a></li>
                                <li><a href="#">Business cards</a></li>
                                <li><a href="#">Custom logo</a></li>
                            </ul>
                        </div>
                        <div class="row d-block">
                            <header>Email Services</header>
                            <ul class="mega-links">
                                <li><a href="#">Personal Email</a></li>
                                <li><a href="#">Business Email</a></li>
                                <li><a href="#">Mobile Email</a></li>
                                <li><a href="#">Web Marketing</a></li>
                            </ul>
                        </div>
                        <div class="row d-block">
                            <header>Security services</header>
                            <ul class="mega-links">
                                <li><a href="#">Site Seal</a></li>
                                <li><a href="#">VPS Hosting</a></li>
                                <li><a href="#">Privacy Seal</a></li>
                                <li><a href="#">Website design</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="nav-right d-flex align-items-center">
                <div class="nav-search desktop-item">
                    <div class="nav-search-wrapper d-flex align-items-center">
                        <div class="nav-search-icon">
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </div>
                        <div class="nav-search-input">
                            <input type="text" placeholder="AniAniplex"/>
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
                        <img src="${user.getUserImage()}"
                             alt="user_image"/>
                    </div>
                    <div class="nav-user-icon">
                        <i class="fa-solid fa-chevron-down"></i>
                    </div>
                </label>
                <input type="checkbox" id="checkshow"/>
                <ul class="menu">
                    <li class="user-name">Chào ${user.getUserName()}!</li>
                    <li>
                        <a href="thong-tin-tai-khoan"><i class="fa-solid fa-user"></i>Thông tin tài khoản</a>
                    </li>
                    <li>
                        <a href="favorites"><i class="fa-solid fa-film"></i>Hộp phim</a>
                    </li>
                    <li>
                        <a href="history"><i class="fa-solid fa-clock-rotate-left"></i>Lịch sử</a>
                    </li>
                    <c:if test="${sessionScope.user_title == 'Administrator'}">
                        <li>
                            <a href="admin"><i class="fa-solid fa-user-gear"></i> Administrator</a>
                        </li>
                    </c:if>
                    <li>
                        <a href="outdoorUser"><i class="fa-solid fa-right-from-bracket"></i>Thoát</a>
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
                    <input type="text" placeholder="AniAniplex"/>
                </div>
                <div class="nav-search-icon nav-search-close">
                    <i class="fa-solid fa-xmark cursor-pointer"></i>
                </div>
            </div>
        </div>
        <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
    </div>
</nav>
<div class="container-accountCenter">
    <div class="container-accountCenter-wrapper">
        <div class="accountCenter-layer">
            <img src="https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680599950/AniAniplex/image_assets/layer-poster_pjwi2v.webp" alt=""/>
        </div>
        <div class="accountCenter-topbar">
            <div class="accountCenter-topbar-wrapper">
                <div class="accountCenter-avatar">
                    <img src="${user.getUserImage()}"
                         alt=""/>
                </div>
                <div class="accountCenter-basic">
                    <div class="accountCenter-basic-top">
                        <div class="accountCenter-name">${user.getUserName()}</div>
                        <div class="accountCenter-title">${user.getUserDescription()}</div>
                    </div>
                    <div class="accountCenter-basic-bottom user-select-none">
                        <div class="accountCenter-basic-item">
                            <span class="accountCenter-basic-count">0</span>
                            <span class="accountCenter-basic-item-name">Post</span>
                        </div>
                        <div class="accountCenter-basic-item">
                            <span class="accountCenter-basic-count">2</span>
                            <span class="accountCenter-basic-item-name">Following</span>
                        </div>
                        <div class="accountCenter-basic-item">
                            <span class="accountCenter-basic-count">0</span>
                            <span class="accountCenter-basic-item-name">Follower</span>
                        </div>
                        <div class="accountCenter-basic-item">
                            <span class="accountCenter-basic-count">0</span>
                            <span class="accountCenter-basic-item-name">Likes</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="space"></div>
    <div class="container-main">
        <div class="container-posts row p-0">
            <article class="l-9 m-12 s-12 xs-12 py-16">
                <div class="main-page">
                    <div class="main-page-wrapper">
                        <div class="main-page-top">
                            <div class="main-page-top-item active">
                                <h4>Posts</h4>
                            </div>
                            <div class="main-page-top-item">
                                <h4>Comments</h4>
                            </div>
                            <div class="main-page-top-item">
                                <h4>Favorites</h4>
                            </div>
                            <div class="main-page-top-item">
                                <h4>Topics</h4>
                            </div>
                        </div>
                        <div class="main-page-body">
                            <div class="main-page-noData">
                                <div class="main-page-noData-img">
                                    <img src="https://www.hoyolab.com/_nuxt/img/56a30a4.png" alt=""/>
                                </div>
                                <span>No posts yet~</span>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <aside class="l-3 m-12 s-12 xs-12 py-16">
                <div class="side-section-cart-item">
                    <div class="section-cart-header">
                        <h3>Become a Content Creator</h3>
                    </div>
                    <div class="section-cart-body">
                        <button class="start-creator">Start</button>
                    </div>
                </div>
                <div class="side-section-cart-item">
                    <div class="section-cart-header">
                        <h3>Profile Information</h3>
                    </div>
                    <div class="section-cart-body">
                        <div class="d-flex align-items-center card-user-id">
                            <i class="fa-solid fa-id-card"></i>
                            <span>Account ID: </span>
                            <span>${user.getUserId()}</span>
                        </div>
                    </div>
                </div>
                <div class="side-section-cart-item">
                    <div class="section-cart-header">
                        <h3>Change Password</h3>
                    </div>
                    <div class="section-cart-body">
                        <form action="" class="changePassword">
                            <div class="field-input-password">
                                <input id="change-password" type="password" placeholder="Nhập mật khẩu" minlength="6"
                                       maxlength="20" required/>
                                <span class="showChange-password"><i class="fas fa-eye-slash"></i></span>
                            </div>
                            <div class="field-input-password mt-10">
                                <input id="reChange-password" type="password" placeholder="Nhập lại mật khẩu"
                                       minlength="6" maxlength="20" required/>
                                <span class="showReChange-password"><i class="fas fa-eye-slash"></i></span>
                            </div>
                            <button type="submit">Đổi mật khảu</button>
                        </form>
                    </div>
                </div>
            </aside>
        </div>
    </div>
</div>
<div class="space"></div>
<div class="space"></div>
<div class="space"></div>
<div class="space"></div>
<div class="space"></div>
<div class="space"></div>
</body>
<script>
    const colorBlack = document.querySelector('.nav-links > li > a');
    const nav = document.querySelector('.navbar');
    window.addEventListener('scroll', function () {
        var scrollPosition = window.scrollY;
        if (scrollPosition >= 180) {
            colorBlack.style.color = '#000';
        } else {
            colorBlack.style.color = 'var(--minor-font-color-new)';
        }
        if (scrollPosition >= 220) {
            nav.style.backgroundColor = '#fff';
        } else {
            nav.style.backgroundColor = 'transparent';
        }
    });
    const items = document.querySelectorAll('.main-page-top-item');
    items.forEach((item) => {
        item.addEventListener('click', () => {
            items.forEach((item) => {
                item.classList.remove('active');
            });
            item.classList.add('active');
        });
    });
    const passField1 = document.getElementById('change-password');
    const showBtn1 = document.querySelector('.showChange-password i');
    showBtn1.onclick = () => {
        if (passField1.type === 'password') {
            passField1.type = 'text';
            showBtn1.classList.remove('fa-eye-slash');
            showBtn1.classList.add('fa-eye');
        } else {
            passField1.type = 'password';
            showBtn1.classList.remove('fa-eye');
            showBtn1.classList.add('fa-eye-slash');
        }
    };
    const passField2 = document.getElementById('reChange-password');
    const showBtn2 = document.querySelector('.showReChange-password i');
    showBtn2.onclick = () => {
        if (passField2.type === 'password') {
            passField2.type = 'text';
            showBtn2.classList.remove('fa-eye-slash');
            showBtn2.classList.add('fa-eye');
        } else {
            passField2.type = 'password';
            showBtn2.classList.remove('fa-eye');
            showBtn2.classList.add('fa-eye-slash');
        }
    };

</script>
</html>
