package servlet;

import dao.FavoriteDAO;
import entity.CreateFavoriteEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Date;

@WebServlet({"/yeu-thich", "/bo-yeu-thich"})
public class FavoriteServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        HttpSession session = req.getSession();
        int movieId = Integer.parseInt(req.getParameter("movieId"));
        int userId = Integer.parseInt(session.getAttribute("userId").toString());

        if (uri.contains("yeu-thich")) {
            if (userId == -1) {
                req.setAttribute("message", "Vui lòng đăng nhập để thêm anime yêu thích!");
                req.getRequestDispatcher("account.jsp?message=message").forward(req, resp);
            } else {
                java.sql.Date sqlDate = new java.sql.Date(new Date().getTime());
                FavoriteDAO.createFavorite(new CreateFavoriteEntity(sqlDate, userId, movieId));
                resp.sendRedirect("http://localhost:8080/AniAniplex/phim?movieId=" + movieId);
            }
        } else if (uri.contains("bo-yeu-thich")) {
            CreateFavoriteEntity entity = FavoriteDAO.find1MovieFavoriteUser(userId, movieId);
            FavoriteDAO.deleteFavorite(entity);
            resp.sendRedirect("http://localhost:8080/AniAniplex/phim?movieId=" + movieId);
        }
    }
}
