package com.codeup.adlister.controllers;

import org.mindrot.jbcrypt.BCrypt;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("inside login servlet dopost method");
        String username = request.getParameter("username");
        System.out.printf("username: %s%n", username);
        String password = request.getParameter("password");
        System.out.printf("password: %s%n", password);
        User user = DaoFactory.getUsersDao().findByUsername(username);
        System.out.printf("user found: %s%n", user.getUsername());

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }

        System.out.printf("Hashed password: %s%n", user.getPassword());
        boolean validAttempt = BCrypt.checkpw(password, user.getPassword());

        if (validAttempt) {
            request.getSession().setAttribute("user", user);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}
