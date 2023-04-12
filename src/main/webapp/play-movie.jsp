<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Tập ${tapphim.getMovieEpisodeNumber()} ${movieItem.getMovieNameVn()} - AniAniplex</title>
    <c:import url="WEB-INF/cloundLink/GridSystem-base.jsp"/>
    <c:import url="WEB-INF/cloundLink/navbar.jsp"/>
    <c:import url="WEB-INF/cloundLink/container.jsp"/>
    <link rel="stylesheet"
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/playmovie_dgma7d.css"/>
</head>
<body>
<jsp:include page="headerSession.jsp"/>
<div class="space"></div>
<div class="container">
    <div class="container-wrapper">
        <jsp:include page="WEB-INF/layout/container-top-notify.jsp"/>
        <div class="container-viewlist row mg-0 p-0">
            <jsp:include page="WEB-INF/layout/container-article-playmovie.jsp">
                <jsp:param name="tapphim" value="tapphim"/>
                <jsp:param name="episodeList" value="episodeList"/>
            </jsp:include>
            <jsp:include page="WEB-INF/layout/container-aside-cart.jsp"/>
        </div>
    </div>
</div>
<jsp:include page="WEB-INF/layout/footer.jsp"/>
</body>
</html>