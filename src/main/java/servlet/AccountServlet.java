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
import java.util.Date;

@WebServlet(name = "account", value = {
        "/account", "/login", "/register", "/forgot-password"})
public class AccountServlet extends HttpServlet {
    UserDAO userDAO = null;

    public AccountServlet() {
        userDAO = new UserDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        if (session.getAttribute("username") == null) {
            req.getRequestDispatcher("account.jsp").forward(req, resp);
        } else resp.sendRedirect("http://localhost:8080/AniAniplex/");
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
                session.setAttribute("user_title", user.getUserTitle());
                resp.sendRedirect("http://localhost:8080/AniAniplex/");
            } else {
                req.setAttribute("message", "Đăng nhập không thành công!");
                req.getRequestDispatcher("account.jsp?message=message").forward(req, resp);
            }
        } else if (uri.contains("register")) {
            String fullname = req.getParameter("fullname");
            String username = req.getParameter("dk-username");
            String password = req.getParameter("dk-password");
            String repassword = req.getParameter("dk-repassword");
            String email = req.getParameter("email");
            boolean gender = Boolean.parseBoolean(req.getParameter("gender"));

            java.sql.Date sqlDate = new java.sql.Date(new Date().getTime());
            UsersEntity user = userDAO.findUserByJPQL(username);
            if (password.equals(repassword) && !user.getUserAccount().equalsIgnoreCase(username)) {
                try {
                    userDAO.createUser(new UsersEntity(fullname, username, password, email, null, gender, "Member", null, sqlDate));
                    req.setAttribute("message", "Đăng kí thành công");
                    req.getRequestDispatcher("account.jsp?message=message").forward(req, resp);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                req.setAttribute("message", "Tài khoản đã tồn tại");
                req.getRequestDispatcher("account.jsp?message=message").forward(req, resp);
            }
        } else if (uri.contains("forgot-password")) {
            String email = req.getParameter("fg-email");
            String username = req.getParameter("fg-username");
            String password = req.getParameter("fg-password");

            System.out.println(getRandomNumber(100000, 999999));
            session.setAttribute("verificationCode", getRandomNumber(100000, 999999));
            req.setAttribute("message", "Vui lòng kiểm tra email");
        }
    }

    public int getRandomNumber(int min, int max) {
        return (int) ((Math.random() * (max - min)) + min);
    }
}
