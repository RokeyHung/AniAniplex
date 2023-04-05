package controller;

import dao.UserDAO;
import entity.UsersEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet({"/", "/thong-tin-tai-khoan", "/favorites", "/history", "/outdoorUser"})
public class Navigation extends HttpServlet {
    UserDAO userDAO = null;

    public Navigation() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("/")) {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
        uri = null;
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("thong-tin-tai-khoan")) {
            HttpSession session = req.getSession();
            UsersEntity user = userDAO.findUserByJPQL(session.getAttribute("username").toString());
            req.setAttribute("user", user);
            req.getRequestDispatcher("accountCenter.jsp?user=user").forward(req, resp);
        } else if (uri.contains("favorites")) {

        } else if (uri.contains("history")) {

        } else if (uri.contains("outdoorUser")) {
            HttpSession session = req.getSession();
            session.invalidate();
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}
