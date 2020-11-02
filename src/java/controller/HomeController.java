/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.google.gson.Gson;
import entity.Article;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ArticleRepository;

/**
 *
 * @author ViruSs0209
 */
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        final int INIT_ARTICLES = 10;
        
        try {
            ArticleRepository repo = new ArticleRepository();
            
            ArrayList<Article> articles = repo.getArticles(0, 10);

            request.setAttribute("articles", articles);
            request.getRequestDispatcher("/view/home.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", ex.getMessage());
            System.out.println(ex.getMessage());
            request.getRequestDispatcher("/view/error.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       final int INIT_ARTICLES = 10;
        
        try {
            ArticleRepository repo = new ArticleRepository();
            
            ArrayList<Article> articles = repo.getArticles(0, INIT_ARTICLES);
            
            Gson gson = new Gson();
            
            String articlesJson = gson.toJson(articles);
            
            System.out.println(articlesJson);
            
            PrintWriter writer = response.getWriter();
            
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            
            writer.write(articlesJson);
            writer.close();
        } catch (Exception ex) {
            
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
