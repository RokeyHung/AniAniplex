package X;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AppFilter implements HttpFilter {
    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        RRSharer.add(req, resp);
        filterChain.doFilter(req, resp);
        RRSharer.remove();
    }
}
