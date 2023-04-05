package controller;

import dao.MovieDAO;
import entity.MoviesEntity;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpServlet;
import java.text.Normalizer;
import java.util.List;
import java.util.regex.Pattern;

@WebListener
public class Start extends HttpServlet implements ServletContextListener {

    private MovieDAO movieDAO = new MovieDAO();

    @Override
    public void contextInitialized(ServletContextEvent event) {
        ServletContext servletContext = event.getServletContext();
        List<MoviesEntity> movieList = movieDAO.findAll();
        servletContext.setAttribute("movie", movieList);
    }


    @Override
    public void contextDestroyed(ServletContextEvent event) {
        // Do nothing
    }

    public String Normalizer(String text) {
        // Loại bỏ dấu
        String normalizedStr = Normalizer.normalize(text, Normalizer.Form.NFD).replaceAll("\\p{M}", "");
        // Thay thế khoảng trắng bằng dấu gạch ngang
        String outputStr = Pattern.compile("\\s+").matcher(normalizedStr).replaceAll("-").toLowerCase();
        return text;
    }
}
