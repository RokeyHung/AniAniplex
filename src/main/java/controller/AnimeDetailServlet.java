package controller;

import dao.MovieDAO;
import entity.MoviesEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "AnimeDetailServlet", value = "/phim")
public class AnimeDetailServlet extends HttpServlet {
    MovieDAO movieDAO = null;

    public AnimeDetailServlet() {
        movieDAO = new MovieDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        System.out.println(uri);
        if (uri.contains("phim")) {
            int id = Integer.parseInt(req.getParameter("movieId"));
            MoviesEntity movie = movieDAO.findMovie(id);
            req.setAttribute("movieItem", movie);
            req.getRequestDispatcher("anime-detail.jsp").forward(req, resp);
        } else {
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }
    }
}
