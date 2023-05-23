package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/profile/update")
public class UpdateProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long userId = Long.parseLong(req.getParameter("user-id"));
        Users usersDao = DaoFactory.getUsersDao();
        User user = usersDao.getUserById(userId);
//        if (user != null) {
            req.setAttribute("user", user);
            req.getRequestDispatcher("/WEB-INF/profile/update.jsp").forward(req, resp);
//        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Users usersDao = DaoFactory.getUsersDao();
        User loggedInUser = (User) req.getSession().getAttribute("user");
        User user = (User) req.getSession().getAttribute("user");
        if (loggedInUser != null && loggedInUser.getId() == user.getId()) {
            user.setUsername(req.getParameter("username"));
            user.setEmail(req.getParameter("email"));
            user.setPassword(req.getParameter("password"));

            usersDao.update(user);
            req.getSession().setAttribute("user", user);
        }
        resp.sendRedirect("/profile");
    }
}