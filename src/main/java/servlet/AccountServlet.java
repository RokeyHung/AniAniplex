package servlet;

import dao.UserDAO;
import entity.UsersEntity;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Random;

@WebServlet(name = "account", value = {
        "/account", "/login", "/register", "/forgot-password"})
public class AccountServlet extends HttpServlet {
    UserDAO userDAO = null;

    public AccountServlet() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("account.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        HttpSession session = req.getSession();
        if (uri.contains("login")) {
            String username = req.getParameter("dn-username").trim();
            String password = req.getParameter("dn-password");
            UsersEntity user = userDAO.findUserByJPQL(username);
            if (user.getUserAccount().equals(username) && user.getUserPassword().equals(password)) {
                session.setAttribute("username", username);
                session.setAttribute("password", password);
            }
        } else if (uri.contains("register")) {
            String username = req.getParameter("dk-username");
            String password = req.getParameter("dk-password");
            String repassword = req.getParameter("dk-repassword");
        } else if (uri.contains("forgot-password")) {
            String email = req.getParameter("fg-email");
            String username = req.getParameter("fg-username");
            String password = req.getParameter("fg-password");

            Random random = new Random();
            int min = 100000;
            int max = 999999;
            int randomNumber = random.nextInt(max - min + 1) + min;
            System.out.println(randomNumber);
            session.setAttribute("verificationCode", randomNumber);
        }
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
