<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<nav class="navbar">
    <div class="wrapper">
        <div class="logo">
            <a href="/" class="logo-link">
                <img src="https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680599949/AniAniplex/image_assets/Aniplex-Logo.wine_afnlq9.svg"
                     class="logo-img" alt="logo"/>
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
                    <i class="fa-solid fa-angle-down color-primary2"></i>
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
            <li><a href="#">TRANG CHỦ</a></li>
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
                            <input type="text" placeholder="Tìm: tên tiếng Nhật, Anh, Việt"/>
                        </div>
                        <div class="nav-search-icon nav-search-close">
                            <i class="fa-solid fa-xmark cursor-pointer p-4"></i>
                        </div>
                    </div>
                </div>
            </li>
            <div class="dropdown hideOnMobile">
                <%--@declare id="checkshow"--%><label for="checkshow" class="dropdown-title">
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
                    <input type="text" placeholder="Tìm: tên tiếng Nhật, Anh, Việt"/>
                </div>
                <div class="nav-search-icon nav-search-close">
                    <i class="fa-solid fa-xmark cursor-pointer p-4"></i>
                </div>
            </div>
        </div>
        <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
    </div>
</nav>