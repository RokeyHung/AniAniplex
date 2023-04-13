package servlet;

import dao.CategoryDAO;
import dao.EpisodeDAO;
import dao.MovieDAO;
import entity.CategoryEntity;
import entity.MovieEpisodeEntity;
import entity.MoviesEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AnimeDetailServlet", value = "/phim")
public class AnimeDetailServlet extends HttpServlet {
    MovieDAO movieDAO = new MovieDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        System.out.println(uri);
        if (uri.contains("phim")) {
            int movieId = Integer.parseInt(req.getParameter("movieId"));

            MoviesEntity movie = movieDAO.findMovie(movieId);
            req.setAttribute("movieItem", movie);

            List<MovieEpisodeEntity> episodeList = EpisodeDAO.findAllEpisodeByMovie(movieId, "desc");
            req.setAttribute("episodeList", episodeList);

            List<CategoryEntity> categoryList = CategoryDAO.findCategoryByMovie(movieId);
            req.setAttribute("categoryList", categoryList);
            req.getRequestDispatcher("anime-detail.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}
