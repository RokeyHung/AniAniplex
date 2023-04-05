<%@ page import="entity.UsersEntity" %>
<%@ page import="dao.UserDAO" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%  HttpSession sessionSimple = request.getSession();
    if (sessionSimple != null && sessionSimple.getAttribute("username") != null) {
        String username = (String) sessionSimple.getAttribute("username");
        UsersEntity user = new UserDAO().findUserByJPQL(username);
        request.setAttribute("user", user);
%><jsp:include page="WEB-INF/layout/headerUser.jsp?user=user"/><%
} else {%>
<jsp:include page="WEB-INF/layout/headerdefault.jsp"/><%}
%>