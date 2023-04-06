<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="icon"
          href="https://res.cloudinary.com/dkyfbn6zy/image/upload/v1680599950/AniAniplex/image_assets/zyro-ico_mavxjb.ico"
          type="image/x-icon"/>
    <title>Tập ${tapphim.getMovieEpisodeNumber()} ${movieItem.getMovieNameVn()} - AniAniplex</title>
    <link rel="stylesheet"
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/GridSystem_eratyj.css"/>
    <link rel="stylesheet"
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/base_trjxvz.css"/>
    <link rel="stylesheet"
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/navbar_dfmagn.css"/>
    <link rel="stylesheet"
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/container_bllxju.css"/>
    <link rel="stylesheet"
          href="https://res.cloudinary.com/dkyfbn6zy/raw/upload/v1680599871/AniAniplex/css/playmovie_dgma7d.css"/>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
            integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
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