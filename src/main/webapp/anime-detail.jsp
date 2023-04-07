<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>${movieItem.getMovieNameVn()} - AniAniplex</title>
    <c:import url="WEB-INF/cloundLink/GridSystem-base.jsp"/>
    <c:import url="WEB-INF/cloundLink/navbar.jsp"/>
    <c:import url="WEB-INF/cloundLink/container.jsp"/>
    <c:import url="WEB-INF/cloundLink/detail.jsp"/>
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"
    ></script>
</head>
<body>
<jsp:include page="headerSession.jsp"/>
<div class="space"></div>
<div class="container">
    <div class="container-wrapper">
        <div class="container-viewlist row mg-0 p-0">
            <jsp:include page="WEB-INF/layout/container-article-animedetail.jsp">
                <jsp:param name="movieItem" value="movieItem"/>
                <jsp:param name="episodeList" value="episodeList"/>
                <jsp:param name="categoryList" value="categoryList"/>
            </jsp:include>
            <jsp:include page="WEB-INF/layout/container-aside-cart.jsp"/>
        </div>
    </div>
</div>
<jsp:include page="WEB-INF/layout/footer.jsp"/>
</body>
</html>
