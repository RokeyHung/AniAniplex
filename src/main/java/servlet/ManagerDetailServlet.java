package servlet;

import dao.EpisodeDAO;
import dao.MovieDAO;
import entity.CreateEpisodeEntity;
import entity.MoviesEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet({"/admin/new-movie", "/admin/edit", "/admin/deleteMovie",
        "/admin/new-episode", "/admin/create-movie", "/admin/update"})
public class ManagerDetailServlet extends HttpServlet implements Serializable {
    MovieDAO movieDAO = new MovieDAO();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        java.util.Date utilDate = null;
        int movieId = Integer.parseInt(req.getParameter("movieId"));
        if (uri.contains("edit")) {
            MoviesEntity movie = movieDAO.findMovie(movieId);
            req.setAttribute("movieItem", movie);
            req.getRequestDispatcher("/admin/ManagerDetailMovie.jsp").forward(req, resp);
        } else if (uri.contains("update")) {
            String movieNameVn = req.getParameter("movieNameVn");
            String movieNameJp = req.getParameter("movieNameJp");
            String movieShowtimes = req.getParameter("movieShowtimes");
            String movieStatus = req.getParameter("movieStatus");
            String movieDirector = req.getParameter("movieDirector");
            String movieImage = req.getParameter("movieImage");
            String movieCountry = req.getParameter("movieCountry");
            int movieEpisode = Integer.parseInt(req.getParameter("movieEpisode"));
            String movieLanguage = req.getParameter("movieLanguage");
            String movieStudio = req.getParameter("movieStudio");
            String movieYear = req.getParameter("movieYear");
            String moviePoster = req.getParameter("moviePoster");
            String movieDescription = req.getParameter("movieDescription");
            try {
                utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(movieYear);
                java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
                movieDAO.updateMovie(new MoviesEntity(movieId, movieNameVn, movieNameJp, movieImage, moviePoster, movieDescription, movieShowtimes, movieStatus, movieDirector, movieCountry, movieEpisode, movieLanguage, movieStudio, sqlDate));
                req.setAttribute("message", "Update thành công!");
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
            resp.sendRedirect("http://localhost:8080/AniAniplex/admin/edit?movieId=" + movieId);
        } else if (uri.contains("deleteMovie")) {
            movieDAO.deleteMovie(movieDAO.findMovie(movieId));
            resp.sendRedirect("http://localhost:8080/AniAniplex/admin");
        } else if (uri.contains("new-episode")) {
            int numberEpisode = Integer.parseInt(req.getParameter("number-episode"));
            String linkEpisode = req.getParameter("link-episode");
            java.sql.Date sqlDate = new java.sql.Date(new Date().getTime());
            new EpisodeDAO().createEpisode(new CreateEpisodeEntity(movieId, numberEpisode, linkEpisode, sqlDate));
            req.setAttribute("message", "Thêm tập mới thành công!");
            resp.sendRedirect("http://localhost:8080/AniAniplex/admin/edit?movieId=" + movieId);
        } else if (uri.contains("new-movie")) {
            req.getRequestDispatcher("/admin/CreateMovie.jsp").forward(req, resp);
        } else if (uri.contains("create-movie")) {
            String movieNameVn = req.getParameter("movieNameVn");
            String movieNameJp = req.getParameter("movieNameJp");
            String movieShowtimes = req.getParameter("movieShowtimes");
            String movieStatus = req.getParameter("movieStatus");
            String movieDirector = req.getParameter("movieDirector");
            String movieImage = req.getParameter("movieImage");
            String movieCountry = req.getParameter("movieCountry");
            int movieEpisode = Integer.parseInt(req.getParameter("movieEpisode"));
            String movieLanguage = req.getParameter("movieLanguage");
            String movieStudio = req.getParameter("movieStudio");
            String movieYear = req.getParameter("movieYear");
            String moviePoster = req.getParameter("moviePoster");
            String movieDescription = req.getParameter("movieDescription");
            try {
                utilDate = new SimpleDateFormat("yyyy-MM-dd").parse(movieYear);
                java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
                movieDAO.createMovie(new MoviesEntity(movieNameVn, movieNameJp, movieImage, moviePoster, movieDescription, movieShowtimes, movieStatus, movieDirector, movieCountry, null, null, movieEpisode, movieLanguage, movieStudio, null, sqlDate));
                resp.sendRedirect("http://localhost:8080/AniAniplex/admin");
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
