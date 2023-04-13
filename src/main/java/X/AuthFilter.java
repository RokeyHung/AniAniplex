package X;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter({"/admin/*"})
public class AuthFilter implements HttpFilter {
    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        String uri = req.getRequestURI();
        HttpSession session = req.getSession();
        String user_title = session.getAttribute("user_title").toString();
        String error = "";
        if (user_title == null) {
            error = resp.encodeURL("vui-long-dang-nhap!");
        } else if (!user_title.equalsIgnoreCase("Administrator")) {
            error = resp.encodeURL("vui-long-dang-nhap-voi-vai-tro-Admin!");
        }
        if (!error.isEmpty()) {
            req.getSession().setAttribute("security", uri);
            resp.sendRedirect("/account/dang-nhap?error=" + resp.encodeURL(error));
        } else {
            filterChain.doFilter(req, resp);
        }
    }
}
