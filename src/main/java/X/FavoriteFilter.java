package X;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter({"/yeu-thich"})
public class FavoriteFilter implements HttpFilter {
    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        HttpSession session = req.getSession();
        try {
            String userAccount = session.getAttribute("username").toString();
            if (userAccount == null) {
                req.setAttribute("message", "Vui lòng đăng nhập để thêm anime yêu thích!");
                req.getRequestDispatcher("account.jsp?message=message").forward(req, resp);
            }
        } catch (Exception e) {
            req.setAttribute("message", "Vui lòng đăng nhập để thêm anime yêu thích!");
            req.getRequestDispatcher("account.jsp?message=message").forward(req, resp);
        }
        filterChain.doFilter(req, resp);
    }
}
