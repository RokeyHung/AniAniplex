package X;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Date;

public class LoggerFilter implements HttpFilter {
    @Override
    public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
//        Account account = (Account) req.getSession().getAttribute("account");
        String uri = req.getRequestURI();
        Date date = new Date();
        filterChain.doFilter(req, resp);
    }
}
