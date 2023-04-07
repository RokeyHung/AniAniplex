package servlet;

import dao.EpisodeDAO;
import dao.MovieDAO;
import entity.MovieEpisodeEntity;
import entity.MoviesEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "PlayMovie", value = "/xem-phim")
public class PlayMovieServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getRequestURI().contains("xem-phim")) {
            int movieId = Integer.parseInt(req.getParameter("movieId"));
            int episode = Integer.parseInt(req.getParameter("episode"));

            MoviesEntity movie = new MovieDAO().findMovie(movieId);
            req.setAttribute("movieItem", movie);

            List<MovieEpisodeEntity> episodeList = new EpisodeDAO().findAllEpisodeByMovie(movieId, "asc");
            req.setAttribute("episodeList", episodeList);

            req.setAttribute("tapphim", new EpisodeDAO().findEpisode(movieId, episode));
            req.getRequestDispatcher("play-movie.jsp").forward(req, resp);
        }
    }
}
