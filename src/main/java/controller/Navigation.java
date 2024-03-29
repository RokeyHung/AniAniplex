package controller;

import dao.FavoriteDAO;
import dao.MovieDAO;
import dao.UserDAO;
import entity.FavoritesEntity;
import entity.MoviesEntity;
import entity.UsersEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet({"/", "/thong-tin-tai-khoan", "/favorites", "/history", "/outdoorUser", "/admin"})
public class Navigation extends HttpServlet {
    UserDAO userDAO = null;
    FavoriteDAO favoriteDAO = null;

    public Navigation() {
        userDAO = new UserDAO();
        favoriteDAO = new FavoriteDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("/")) {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        HttpSession session = req.getSession();
        String sessionUsername = session.getAttribute("username").toString();
        if (uri.contains("thong-tin-tai-khoan")) {
            UsersEntity user = UserDAO.findUserByJPQL(sessionUsername);
            req.setAttribute("user", user);
            req.getRequestDispatcher("accountCenter.jsp?user=user").forward(req, resp);
        } else if (uri.contains("favorites")) {
            List<FavoritesEntity> moviesList = FavoriteDAO.findMovieFavoriteByUsername(sessionUsername);
            req.setAttribute("movies", moviesList);
            req.getRequestDispatcher("favoriteUser.jsp?movies=movies").forward(req, resp);
        } else if (uri.contains("history")) {

        } else if (uri.contains("outdoorUser")) {
            session.invalidate();
            resp.sendRedirect("http://localhost:8080/AniAniplex/");
        } else if (uri.contains("admin")) {
            List<MoviesEntity> movieList = new MovieDAO().findAll();
            req.setAttribute("movies", movieList);
            req.getRequestDispatcher("/admin/ManagerMovies.jsp?movies=movies").forward(req, resp);
        }
    }
}
