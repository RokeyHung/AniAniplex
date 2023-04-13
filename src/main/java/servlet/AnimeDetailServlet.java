package servlet;

import dao.CategoryDAO;
import dao.EpisodeDAO;
import dao.FavoriteDAO;
import dao.MovieDAO;
import entity.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AnimeDetailServlet", value = "/phim")
public class AnimeDetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        System.out.println(uri);
        HttpSession session = req.getSession();
        if (uri.contains("phim")) {
            int movieId = Integer.parseInt(req.getParameter("movieId"));

            MoviesEntity movie = MovieDAO.findMovie(movieId);
            req.setAttribute("movieItem", movie);

            List<MovieEpisodeEntity> episodeList = EpisodeDAO.findAllEpisodeByMovie(movieId, "desc");
            req.setAttribute("episodeList", episodeList);

            List<CategoryEntity> categoryList = CategoryDAO.findCategoryByMovie(movieId);
            req.setAttribute("categoryList", categoryList);

            try {
                int userId = Integer.parseInt(session.getAttribute("userId").toString());
                if (FavoriteDAO.find1MovieFavoriteUser(userId, movieId).getFavoriteMovie() == movieId) {
                    session.setAttribute("bookmark_favorite", true);
                }
            } catch (Exception e) {
                session.setAttribute("bookmark_favorite", false);
            }

            req.getRequestDispatcher("anime-detail.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}
