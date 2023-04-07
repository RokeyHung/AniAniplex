<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Anime Vietsub Online - AniAniplex</title>
    <c:import url="WEB-INF/cloundLink/GridSystem-base.jsp"/>
    <c:import url="WEB-INF/cloundLink/navbar.jsp"/>
    <c:import url="WEB-INF/cloundLink/container.jsp"/>
    <c:import url="WEB-INF/cloundLink/account.jsp"/>
</head>
<body>
<jsp:include page="headerSession.jsp"/>
<div class="space"></div>
<div class="container">
    <div class="container-wrapper">
        <jsp:include page="WEB-INF/layout/container-all-account.jsp"/>
    </div>
</div>
<jsp:include page="WEB-INF/layout/footer.jsp"/>
</body>
</html>