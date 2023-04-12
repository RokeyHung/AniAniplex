package X;


import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public interface HttpFilter extends Filter {
    @Override
    default void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    default void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        this.doFilter(request, response, filterChain);
    }

    @Override
    default void destroy() {
        Filter.super.destroy();
    }

    void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain filterChain) throws IOException, ServletException;
}
