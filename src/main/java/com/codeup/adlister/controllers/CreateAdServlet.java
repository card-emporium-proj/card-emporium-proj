package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User loggedInUser = (User) request.getSession().getAttribute("user");
        float cost = Float.parseFloat(request.getParameter("cost")); // Convert cost to float
        String img = request.getParameter("image-url");
        if (img == null){
            img = "https://www.firstbenefits.org/wp-content/uploads/2017/10/placeholder-1024x1024.png";
        }
        Ad ad = new Ad(
            loggedInUser.getId(),
            request.getParameter("title"),
            request.getParameter("description"),
            cost,
            img,
            request.getParameter("category")
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
