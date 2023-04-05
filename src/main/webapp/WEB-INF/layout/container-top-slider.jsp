<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<div class="container-slider">
    <c:forEach items="${}" var="">
        <div class="slider-item">
            <img src="http://cdn.animevietsub.in/data/poster/2023/01/06/animevsub-cDQCDt5v9X.jpg" alt=""/>
            <div class="item-name">Cuộc Sống Nông Dân Ở Thế Giới Khác</div>
            <div class="rate"><i class="fa-solid fa-star"></i> 9.6</div>
            <div class="episode">
                <div>Tập</div>
                <div>11</div>
            </div>
            <div class="background-gradient">
                <div class="icon-play"><i class="fa-solid fa-play"></i></div>
            </div>
        </div>
    </c:forEach>
</div>