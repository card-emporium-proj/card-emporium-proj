package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ads/update")
public class UpdateAdServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ads adsDao = DaoFactory.getAdsDao();
        User loggedInUser = (User) req.getSession().getAttribute("user");
        long adId = Long.parseLong(req.getParameter("ad-id"));
        Ad ad = adsDao.getAdById(adId);
        if(loggedInUser.getId() == ad.getUserId()){
            adsDao.update(ad);
        }
        resp.sendRedirect("/profile");
    }
}
